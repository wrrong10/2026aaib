//week05-5好玩的程式設計
int[] b = {0, 0, 0, 0, 0, 0, 0};//陣列，決定要不要發亮
void setup()  {
  size(700, 100);//視窗大小
}
void draw() {
  for (int i=0; i<7; i++){ // 用for迴圈，逐一檢查 陣列
    if (b[i]==0){ //如果陣列是0
      fill(#FFFFF2); // 就畫淡黃色
      rect( i*100, 0, 100, 100);
    }else {
     fill(#F5CBFF);
     rect( i*100, 0, 100, 100);
   }
  }
 }
 void mousePressed(){  // mouse按下去的時候
   int i = mouseX/100; // 換算座標，看第個幾格子
   if (b[i]==0) b[i] = 1; // 0變1
   else b[i] = 0; // 或1變0
 }
