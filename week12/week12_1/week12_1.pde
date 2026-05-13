//week12-1 好玩的地鼠
PImage img;
// 先把圖片拉到程式裡
void setup(){
  size(300,300);
  img = loadImage("gopher.png"); //讀檔
}
float a = 0;
void draw(){
  a += 0.03;
  background(128);
  float x = 100 + 0*cos(a), y = 250 + 50*sin(a);
  image(img, x, y, 100, 100); //畫圖
}
