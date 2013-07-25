#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <stdlib.h>
#include <termios.h>
#include <iostream>
#include <sys/time.h>

#include <opencv/cv.h>
#include <opencv/highgui.h>
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv/cxcore.h>
#include <opencv/cvblob.h>

#include "CamTrap_Viper/CvService.h"
#include "cv_localizer.h"

using namespace cvb;
using namespace std;

int mSeconds(int secs, int usecs);

int mSeconds(int secs, int usecs)
{
    return (secs*1000 + usecs/1000); 
}

int main(int argc, char **argv)
{
    struct timeval tv;
    //const int FLIR_FRAME_WIDTH  = 480;
    //const int FLIR_FRAME_HEIGHT = 320;
    const int FLIR_FOV_X = 36;
    const int FLIR_FOV_Y = 27;
	const double FLIR_WRITER_FRAME_RATE = 29.5;

	int duration_sec = 60 * 5;

	ros::init(argc, argv, "cv_service");
	ros::NodeHandle n;
    
	// Initialize Cameras:	
	// set the norm to NTSC for FLIR - and input to 1 for capture device  
	system("v4l2-ctl -s NTSC -i 1");   //if FLIR is video0
	// system("v4l2-ctl -d /dev/video1 -s NTSC -i 1"); if FLIR is video1
	
	// Initialize the IRCam 
	CvCapture *capture = cvCreateCameraCapture(0);
    cvQueryFrame(capture);
	
    const int FLIR_FRAME_WIDTH = (int) cvGetCaptureProperty(capture, CV_CAP_PROP_FRAME_WIDTH);

    const int FLIR_FRAME_HEIGHT = (int) cvGetCaptureProperty(capture, CV_CAP_PROP_FRAME_HEIGHT);
    cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_WIDTH, FLIR_FRAME_WIDTH);
	cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_HEIGHT, FLIR_FRAME_HEIGHT);
  
	/* Always check if the program can find a device */
	if (!capture)
	{
		printf("error 1");
		ROS_ERROR("Can not open flir");
		return -1;
	}
    
    
	CVLocalizer object_tracker(0, 0, FLIR_FRAME_WIDTH, FLIR_FRAME_HEIGHT, FLIR_FOV_X, FLIR_FOV_Y);
	object_tracker.setTimestamp(0);
    
    ros::ServiceServer service = n.advertiseService("cv_service", &CVLocalizer::newCoords, &object_tracker);
	/* creating display window */
	//use only for testing
	cvNamedWindow( "FLIR",CV_WINDOW_AUTOSIZE);

	/* Create required images once */
	IplImage *img = cvQueryFrame(capture);
	IplImage  *gray_img = cvCreateImage(cvSize(FLIR_FRAME_WIDTH, FLIR_FRAME_HEIGHT), img->depth, 1);
 	IplImage  *thres_img = cvCreateImage(cvSize(FLIR_FRAME_WIDTH, FLIR_FRAME_HEIGHT), img->depth, 1);
	IplImage  *label_img = cvCreateImage(cvSize(FLIR_FRAME_WIDTH, FLIR_FRAME_HEIGHT), IPL_DEPTH_LABEL, 1);

	/* Time init */
	time_t rawTime = time (NULL);
	tm *pTime = gmtime(&rawTime);
	
	/* initialize video writer */
	CvVideoWriter *flirWriter;
	sprintf(object_tracker.video_name, "%s%d-%d-%d:%d:%d%s", "/home/viki/Videos/thermal/", pTime->tm_mon, pTime->tm_mday, pTime->tm_hour, pTime->tm_min, pTime->tm_sec, ".avi");
	flirWriter = cvCreateVideoWriter(object_tracker.video_name, CV_FOURCC('D','I','V','X'), FLIR_WRITER_FRAME_RATE, cvSize(FLIR_FRAME_WIDTH, FLIR_FRAME_HEIGHT), 1);
	
	/* main loop */
	int T;
	double moment10;
	double moment01;
	double area;
	long int timecnt = time(&rawTime) + duration_sec;
  	static int posX;
  	static int posY;
    double start;
    double stop;
    
while (ros::ok())
{
    gettimeofday(&tv, NULL);
    start = mSeconds(tv.tv_sec, tv.tv_usec);
    
	// Obtain a frame from the device 
	img = cvQueryFrame(capture);

	/* Always check if the device returns a frame */
	if( !img )
	{
		ROS_ERROR("Error retrieving FLIR frame\n");
		return -1;
	}

	/* remove the watermark */
	cvSetImageROI(img, cvRect((FLIR_FRAME_WIDTH*367)/480,(FLIR_FRAME_HEIGHT*14)/320,(FLIR_FRAME_WIDTH*90)/480,(FLIR_FRAME_HEIGHT*28)/320));
	cvZero(img);
	cvResetImageROI(img);

	/* Time get */
	rawTime = time (NULL);

	/* reset video writer for every X second */
	if (timecnt <= time(&rawTime))
	{
		cvReleaseVideoWriter(&flirWriter);
		pTime = gmtime(&rawTime);
		
		//object_tracker.video_name;
		int sprint_test = sprintf(object_tracker.video_name, "%s%d-%d-%d:%d:%d%s", "/home/viki/Videos/thermal/", pTime->tm_mon, pTime->tm_mday, pTime->tm_hour, pTime->tm_min, pTime->tm_sec, ".avi");

		if (sprint_test < 0)
			ROS_ERROR("sprintf error");
		
		flirWriter = cvCreateVideoWriter(object_tracker.video_name, CV_FOURCC('D','I','V','X'), FLIR_WRITER_FRAME_RATE, cvSize(FLIR_FRAME_WIDTH, FLIR_FRAME_HEIGHT), 1);
		timecnt = time(&rawTime) + duration_sec;
	}

	// Flipping the img if needed with motor node
	cvFlip(img, img,-1);

	/* Write images to file */
	cvWriteFrame(flirWriter, img);

  	/* Convert image from Color to grayscale */
  	cvCvtColor(img, gray_img, CV_RGB2GRAY); 

	/* Publish videos */
	cvShowImage( "FLIR", img);

	//for use in node if cvShowImage didn't work
	/*	cv::Mat flir (img);
		cv::namedWindow (FLIR, CV_WINDOW_AUTOSIZE);
		cv::imshow ("FLIR", flir);*/

	/* cleaning memory */
	cvWaitKey(1);
	cvZero(img);
	cvZero(gray_img);
	cvZero(thres_img);
	cvZero(label_img);
    
    do
    {
        gettimeofday(&tv, NULL);
        stop = mSeconds(tv.tv_sec, tv.tv_usec);
    }while (stop-start < 1000.0/FLIR_WRITER_FRAME_RATE);

	ros::spinOnce();
	}
 	
	/* Clean up memory */
	//since the loop will break by ros::ok this part is not useable
	/*	cvReleaseCapture( &capture );
	cvDestroyAllWindows();*/
	
	return 0;
}


