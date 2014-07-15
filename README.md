- Monitor ActionCam and Send to Syphon Server

Using Yoggy's Library to get a live view image of Sony HDR-AS15 from Wi-fi via Processing, I added SyphonServer to send the feed to another program.  You can get a live view image of 640x360.

Processing

http://processing.org/

Sony HDR-AS15

http://www.sony.jp/actioncam/products/HDR-AS15/

Syphon for Processing

https://github.com/Syphon/Processing

How to use

- Keep the recording stopped on the Sony HDR-AS15 in advance.

- Disable the automatic sleep function of the Sony HDR-AS15.
  SETUP -> A.OFF -> OFF

- To enable the Wi-fi feature of the Sony HDR-AS15.
  SETUP -> RMOTE -> ON

- Connect to Wi-fi of the HDR-AS15 from your PC or Mac.

- The connection to the access point of: "HDR-AS15? DIRECT-???" The SSID.

- Make sure that you are able to connect with the HDR-AS15 by running the ping 10.0.0.1.

- Install to libraries directory hdras15_p5 library.
- Install the Syphon for Processing library.

- Please copy the libraries directory hdras15_p5 directory name.

- Run the sample sketch in processing.


Tips?
When you connect to Wi-fi of the HDR-AS15 from the PC, because it may fail to obtain an IP by DHCP sometimes, it might help if you set the IP address manually, such as 10.0.1.5/16 .

