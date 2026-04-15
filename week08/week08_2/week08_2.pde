// week08-3 會飛的氣球
// Ctrl-N 新視窗
void setup(){
  size(500, 500);
  img = loadImage("balloon.png");
}
PImage img; // 圖片宣告 (要再拉一次圖片到程式檔)
int x, y; // 宣告變數
void draw(){
  background(255); // 白色背景
  x = mouseX-96/2; // x座標
  y = mouseY-132; // y座標
  image(img, x, y, 96, 132); // 跟著mouse跑的氣球
} // 要再拉一次圖片到程式檔
