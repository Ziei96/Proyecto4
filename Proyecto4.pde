import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);
  

  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
}

void draw() {
  
  
  
  if (cam.available() == true) {
    cam.read();
 }
 
  
  image(cam, 0, 0);
  
  if(mousePressed){
    rect(0,0,2000,1000);
  }
  
  text("De click derecho y mantenga presionado para cambiar de color",20,440);
  text("Para cambiar de color de otro click y mantengalo de nuevo presionado :D",30,460);
  
    

  }


void mousePressed(){
  fill(random(255),random(255),random(255),150);
  rectMode(CENTER);
  rect(mouseX,mouseY,40,40);
}
