//week11-1 好玩的程式設計(三角函數)
void setup(){
  size(500, 500); //視窗大小
}
float a = 0;
void draw(){
  background(#FFFFF2); //背景
  rectMode(CENTER);
  for(int i=0; i<6; i++){  
    float x = 250 + 200*cos(a+PI/3*i),y=250 + 100*sin(a+PI/3*i);
    rect(x,y,80,100);
  }
  a += 0.03;
}
