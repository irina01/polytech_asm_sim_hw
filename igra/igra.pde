import processing.sound.*; 
SoundFile file; 
float lasttimecheck; 
float timeinterval; 

void setup () 
{ 
 size(800,600); 
 file = new SoundFile(this, "Schnappi.mp3"); 
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
  if(success >= 19 && success <= 21);
  {
    PImage imd = loadImage ("myach.jpg"); 
    image (imd, 0,0,800,600); 
  }
  for (success = 20; miss != 10; success = 21)
{ 
  success = 0; miss = 0;
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
else speedY +=1; 

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





if (keyCode == ALT) 
{ 
 PImage imd = loadImage ("myach.jpg"); 
 image (imd, 0,0,800,600); 
} 
} 
void keyPressed () 
{ 
 if(key==CODED)
{
 if (keyCode == ALT)
{ 
 PImage imd = loadImage ("myach.jpg"); 
 image (imd, 0,0,800,600); 
} 
} 
}