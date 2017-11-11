import processing.sound.*; 
SoundFile file; 
float lasttimecheck; 
float timeinterval; 
PImage imd;

void setup () 
{ 
 size(1000,800); 
 file = new SoundFile(this, "Schnappi.mp3"); 
 imd = loadImage ("myach.jpg"); 
 file.play();  
 lasttimecheck = second (); 
 timeinterval = 10; 

} 
void strokechange() 
{ 
 if(second() > lasttimecheck + timeinterval) 
{ 
 lasttimecheck = second (); ballX = 150; ballY = 100; 
} 
} 

float ballX = 150; 
float ballY = 100; 
float speedX = 20; 
float speedY = 10; 
int success = 0; 
int miss = 0; 

void draw () 
{ 
  background (26, 94, 255); 
  if(success == 20)
  { 
    image (imd, 0,0,1000,800); 
  }
    
  strokechange(); 
  if(mousePressed) 
  { 
   success = 0; 
   miss = 0; 
  } 

float paddle = 1000/(success+10); 
if(ballX < 0 || ballX > width) speedX = -speedX; 
if(ballY > height) 

{ 
 speedY = -speedY; 
 float distance = abs(mouseX - ballX); 
 if (distance < paddle) success += 1; 
 else miss += 1; 
} 
else {
  speedY +=1; 
} 
ballX += speedX; 
ballY += speedY; 

fill (255, 83, 26); 
rect (mouseX-paddle, height-10, 200, 10); 
fill (251, 255, 26); 
ellipse(ballX, ballY, 50, 50); 

fill (0); 
text("success: " + success, 10, 10); 
text("miss: "+ miss, 10, 30); 
 
}

void keyPressed () 
{ 
 if (keyCode == ALT)
{ 
 image (imd, 0,0,1000,800); 
} 
}