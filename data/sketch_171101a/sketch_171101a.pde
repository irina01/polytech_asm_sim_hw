import processing.sound.*;
SoundFile file;

void setup ()
{
  size(800,600);
  PImage img = loadImage ("go.jpg");
  image (img, 80, 66, 500, 300);

}

float ballX = 150;
float ballY = 100;
float speedX = 10;
float speedY = 0;
int success = 0;
int miss = 0;

void draw ()
{
  PImage img = loadImage("go.jpg");
  image (img, 220, 5, 50, 50);
  if(mousePressed) 
  {
    success = 0;
    miss = 0;
  }
  
  float paddle = 1000/(success+10);
  if(ballX < 0 || ballX > width) speedX = -speedX;
  if(ballY > height) {
    speedY = -speedY;   
    float distance = abs(mouseX - ballX);
    if (distance < paddle) success += 1;
    else miss += 1;
  } else speedY +=1;
  
  ballX += speedX;
  ballY += speedY;
  
  background (26, 94, 255);  
  fill (255, 83, 26);
  rect (mouseX-paddle, height-10, 200, 10);
  fill (251, 255, 26);
  ellipse(ballX, ballY, 50, 50);
  
  fill (0);
  text("success: " + success, 10, 10);
  text("miss: "+ miss, 10, 30);
  
  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "Schnappi.mp3");
  file.play();
}