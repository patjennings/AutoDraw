import java.util.Calendar;
import java.io.File;

void keyReleased()
{
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  print("saved !");
}

// timestamp
String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

float pi = 3.1415;
int w = 800; 

float x = 0;
float y = 0;
float vx = 0;
float vy = 0;
float ax = 0;
float ay = 0;
float dt=1;

void setup(){ 
  size(800,800); 
  smooth(); 
} 

void draw(){ 
  fill(250, 2);
  rectMode(CORNER);
  rect(0,0,width,height);
  
  ax = ax + dt*( 1*random(-1,1) - 0.05*ax);
  ay = ay + dt*( 1*random(-1,1) - 0.05*ay);
  
  vx =  vx + dt*(2*ax - 0.05*vx);
  vy =  vy + dt*(2*ay - 0.05*vy);

  x =  x + 0.05*dt*vx;
  y =  y + 0.05*dt*vy;
  
  fill(0);
  ellipse(x + width/2.0, y+height/2.0, 5, 5);

} 

void mouseReleased() {
  
  x =  0;
  y =  0;
  vx =  0;
  vy =  0;
  ax =  0;
  ay =  0;
  
}
