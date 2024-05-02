class Paddle{
 
 float x;
 float y;
 float w;
 float h;
 float speedX;
 float speedY;
 color c;
  
  Paddle(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    speedX = 0;
    speedY = 0;
    c = (225);
  }
  
  void move(){
     y += speedY; 
     x += speedX;
  }
  
  void display(){
   fill(c);
   rect(x - w/2, y - h/2, w, h);
  }
  
  float left(){
   return x - w/2; 
  }
  
  float right(){
   return x + w/2; 
  }
  
  float top(){
   return y - h/2; 
  }
 
 float bottom(){
   return y + h/2; 
  }
}
