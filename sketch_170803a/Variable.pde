class orgA {
  
  float timer=0,SR,id,R=0;
  float current_x,direction_x;
  float current_y,direction_y;
  int A = popA;
  int B = popB;
  float speedX = random(-3,4);float speedY =random(-3,4);
  
  orgA () {
   current_x = random(0,width);
   current_y = random(0,height);    
  }
  
  void show(){
    //noStroke();
    
    fill(0,255,R);
    ellipse(moveX(),moveY(),25,25); 
    sexCycle();
   
  }
  
  float moveX(){
    
     current_x=current_x+speedX;
     if (current_x>=width || current_x<=0){
       speedX = speedX*(-1);
     }
     return current_x;
  }
  float moveY(){
    
     current_y=current_y+speedY;
     if (current_y>=height || current_y<=0){
       speedY = speedY*(-1);
     }
     return current_y;
  }
  
  void sexCycle(){
    timer=timer+1;
    if(timer==3600){
      SR=0;
      R=0;
     speedX = random(1,5);
     speedY = random(1,5);
    }
  }
   
}

class orgB {
  
  public String id = null;
  float current_x;
  float current_y;
  int A = popA;
  int B = popB;
  float speed;
  
  
  orgB () {
   current_x = random(0,width);
   current_y = random(0,height);
  }
  
  void show(){
    fill(255,0,0);
    ellipse(current_x,current_y,25,25);  
  }
  
}

void lightArea(){

  
}
   