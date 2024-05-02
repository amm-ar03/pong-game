Ball ball;
Paddle paddleLeft;
Paddle paddleRight;
int scoreLeft = 0;
int scoreRight = 0;

void setup(){
  size(800, 600);
  ball = new Ball(400, 300, 25);
  ball.speedX = 5; //ball speed in x-axis
  ball.speedY = random(-3, 3); // ball speed in y-axis(random speed)
  paddleLeft = new Paddle(15, height/2, 30, 200);
  paddleRight = new Paddle(width - 15, height/2, 30, 200);
  textSize(40);
  textAlign(CENTER);
}

void draw(){
  background(0);
  ball.display(); //makes the ball visible
  ball.move();
  ball.display();
  
  paddleLeft.move();
  paddleLeft.display();
  paddleRight.move();
  paddleRight.display();
  
  if(ball.right() > width){
    scoreLeft = scoreLeft + 1;
    ball.x = width/2;
    ball.y = height/2;
  }
  
  if(ball.left() < 0){
    scoreRight = scoreRight + 1;
    ball.x = width/2;
    ball.y = height/2;;
  }
  
  if(ball.bottom() > height){
    ball.speedY = -ball.speedY;
  }
  
  if(ball.top() < 0){
    ball.speedY = -ball.speedY;
  }
  
  if( ball.left() < paddleLeft.right() && ball.y > paddleLeft.top() && ball.y < paddleLeft.bottom()){
      ball.speedX = -ball.speedX;
      ball.speedY = map(ball.y - paddleLeft.y, -paddleLeft.h/2, paddleLeft.h/2, -5, 5);
    }
    
  if(ball.right() > paddleRight.left() && ball.y > paddleRight.top() && ball.y < paddleRight.bottom()){
      ball.speedX = -ball.speedX;
      ball.speedY = map(ball.y - paddleRight.y, -paddleRight.h/2, paddleRight.h/2, -5, 5);
    }
    
  text(scoreRight, width/2+30, 30);
  text(scoreLeft, width/2-30, 30);
  text("PONG GAME", width/2, 70);
}

void keyPressed(){
    if(keyCode == UP){
      paddleRight.speedY = -3;
    }
    
    if(keyCode == DOWN){
      paddleRight.speedY = 3;
    }
    
    if(keyCode == LEFT){
      paddleLeft.speedY = -3 ;
    }
    
    if(keyCode == RIGHT){
      paddleLeft.speedY = 3;
    }
    
    if(paddleLeft.bottom() > height){
      paddleLeft.y = height - paddleLeft.h/2;
    }
    
    if(paddleLeft.top() < 0){
      paddleLeft.y = paddleLeft.h/2;
    }
    
    if(paddleRight.bottom() > height){
      paddleRight.y = height - paddleRight.h/2;
    }
    
    if(paddleRight.top() < 0){
      paddleRight.y = paddleRight.h/2;
    }
    
    
  }

void keyReleased(){
  if(keyCode == UP){
      paddleRight.speedY = 0;
    }
    
    if(keyCode == DOWN){
      paddleRight.speedY = 0;
    }
    
    if(keyCode == LEFT){
      paddleLeft.speedY = 0 ;
    }
    
    if(keyCode == RIGHT){
      paddleLeft.speedY = 0;
    }
    
}
