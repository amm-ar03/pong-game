class Ball {
 float x;
 float y;
 float speedX;
 float speedY;
 float diameter;
 color c;


  Ball(float tempX, float tempY, float tempDiam) {
    x = tempX;
    y = tempY;
    diameter = tempDiam;
    speedX = 0;
    speedY = 0;
    c = (225);
  }
  
void move(){
 y = y + speedY; 
 x = x + speedX;
  }
  
void display(){
 fill(c);
 ellipse(x, y, diameter, diameter);
  }
  // for collision detection
float left(){
 return x - diameter/2; 
  }
  
float right(){
 return x + diameter/2; 
  }
  
float top(){
 return y - diameter/2; 
  }
 
 float bottom(){
 return y + diameter/2; 
  }
}
