/** dzomb, 2014
 *
 *Code uses hdras15_p05 and Syphon Server
 
 * Sample sketch for HDRAS15 library
 * Thanks to yoggy, 2012
 * https://github.com/yoggy
 
 * Thanks to codeanticode, Andres and the Syphon Community
 * https://syphon.v002.info
 *https://github.com/Syphon/Processing
 */
import net.sabamiso.processing.hdras15.*;
import codeanticode.syphon.*;
SyphonServer server;

HDRAS15 hdras15;

void setup() {
  size(640, 360, P3D);
  frameRate(60);
  //start syphon server
   server = new SyphonServer(this, "Processing Syphon");

  hdras15 = new HDRAS15();

  // connect to Sony HDR-AS15
  boolean rv;
  rv = hdras15.connect();
  if (rv == false) {
    println("error: connect() failed...");
    return;
  }
}

void draw() {
  PImage img = hdras15.getImage();
  if (img != null) {
    image(img, 0, 0);
 
 //send through syphon video server   
 server.sendImage(img);  
  }
}