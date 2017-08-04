 int popA=5;
 int popB=5;

float test = 10;

orgA a[] = new orgA[popA];
orgB b[] = new orgB[popB];
void setup(){
  size(1366,768);
  background(0);
  for (int i=0;i<popA;i++){
    a[i]= new orgA();
    a[i].id=i;
    print(a[i].id);
  }
  
  for (int i=0;i<popB;i++){
    b[i]= new orgB();
    
  }
}
void sexual(){
  for (int i=0;i<popA;i++){
    for(int j=0;j<popB;j++){
      float Xinter=abs(a[i].current_x-a[j].current_x);
      float Yinter=abs(a[i].current_y-a[j].current_y);
      if(Xinter<15 && Xinter!=0 && Yinter <15 && Yinter!=0){
        if(a[i].SR==0 && a[j].SR==0){
          a[i].SR=1;a[j].SR=1;
          a[i].R=180;a[i].R=180;
          a[j].R=180;a[j].R=180;
          a[i].speedX=random(-2,2);a[i].speedY=random(-2,2);
          a[j].speedX=random(-2,2);a[j].speedY=random(-2,2);
          
          print('p');
          
        }               
      }
    }
  }
}


void draw(){
  background(255);
   for (int i=0;i<popA;i++){
        a[i].show();
      } 
      sexual();
      
    
  
  /* for (int i=0;i<popB;i++){
    b[i].show();
  }  */
  
}