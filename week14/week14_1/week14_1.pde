//week14-1 好玩的打地鼠 結合week13-1 10-1
//修改自week13-1 10-1
//week13-1 好玩的打地鼠
//接續 week12-1 week11-1程式
//把圖片拉到程式裡
PImage img;
void setup(){
  size(300,400);
img = loadImage("gopher.png");
}
void mousePressed(){
  int i = mouseY / 100, j = mouseX / 100;
  if (a[i][j] > 0) {
    a[i][j] = -120;
  }
}
int [][]a = { {0,0,0}, {0,0,0}, {0,0,0} } ;
void draw (){
  background(0xFFFFF2);
  if (frameCount%60==0) {
    int i = int(random(3)), j = int(random(3));
    a[i][j] = 60;
  }
  for (int i=0; i<3; i++){
    for (int j=0; j<3; j++){
      float x = j*100, y = i*100+100;
      if(a[i][j]>0){
        a[i][j] -= 1;
        y -= 100*sin(a[i][j]*PI/60);
      } else if (a[i][j]<0) {
        y -= 100;
        rect(x,y,100,100);
        line(x,y,x+100,y+100);
        line(x+100,y,x,y+100);
        a[i][j] +=1;
      }
      image (img, x, y, 100, 100);
    }
    rect(0, 100+i*100, 300, 100);
  }
}
