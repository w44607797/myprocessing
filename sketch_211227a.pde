int ballNumber;
boolean loop = true;
void setup(){
 size(350,550); 
  background(255,255,255);
  ballNumber = (int)random(20,50);
  
}
void draw(){
  background(255,255,255);
  drawball();
  new block().drawTriangle(50,50,50);
  if(loop){
  drawblock();
  loop = false;
  }
}
void drawball(){
  for(int i=0;i<ballNumber;i++){
    new ball().initBall(175,500);
  }
}
void drawblock(){
    for(int i =0;i<10;i++){
     new block().drawTriangle((int)random(0,350),(int)random(0,550),30) ;
    }
}



class block{
  
  void drawTriangle(int x,int y,int score){
    float length = 50.0;
    fill(#FFEB08);
    triangle(x-20,y+20,x+20,y+20,x,y-20);
    fill(0,0,0);
    textSize(30);
    text(score,x-15,y+10);
  }
  void drawRect(int x,int y){
    rect(x, y, 55, 55, 7);
  }
  
  
}

class ball{
  int x;
  int y;
  double g = 9.8;
  int vy = 30;
  void initBall(int x,int y){
   ellipse(x,y,20,20);
   fill(0,0,0);
  }
  
  
  
}
