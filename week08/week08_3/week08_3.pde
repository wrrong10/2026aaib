// week08-3 會飛的氣球
// 修改自week08-2 會跟著 mouse 移動的氣球
// Ctrl-N 新視窗
void setup(){
  size(500, 500);
  img = loadImage("balloon.png");
}
PImage img; // 圖片宣告 (要再拉一次圖片到程式檔)
float x, y; // 宣告變數
float s = 0.1;
void draw(){
  background(255); // 白色背景
 if(mousePressed) {
   s *= 1.1;
   image(img, mouseX-(96*s)/2, mouseY-(132*s), 96*s, 132*s);
 }else{
   image(img, x, y, 96*s, 132*s);
   y--;
 }
}
void mouseReleased() {
 x = mouseX-(96*s)/2;
 y = mouseY-(132*s);
}
