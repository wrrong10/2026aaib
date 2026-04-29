//week10-1 好玩的程式設計 - 打地鼠
//接上周的week09-2
//修改自week09-1 好玩的程式設計(打地鼠) Ctrl-N 新視窗
void setup() { //設定一次
size(300, 300); //視窗大小 300 x 300
}
int [][] a = { {0, 0, 0}, {0, 0, 0}, {0, 0, 0} }; //Java陣列
void mousePressed(){
  int i = mouseY / 100, j = mouseX / 100;
  if (a[i][j] > 0){
    a[i][j] = -60; // 正變負
  }
}
void draw () { //每秒畫60次
  background(#FFFFF2); //背景淡黃色
  if (frameCount%60==0) { //每過60 frame(1秒) 生一隻地鼠
    int i = int(random(3)), j = int(random(3));
    a[i][j] = 60; //亂數決定i跟j的值, 再把a[i][j] 生60
  }
  for (int i=0; i<3; i++) { //左手i
    for (int j=0; j<3; j++) { //右手j
      int x = 50 +j*100, y = 50 + i*100;
      if (a[i][j]<0) {
        fill(0);
        a[i][j]++;
      }else if (a[i][j]>0) {
       fill(#C61616, a[i][j]*4); //地鼠色,半透明
       a[i][j]--; //數值會變小, 慢慢就透明不見了
      } else fill(#FFFFF2);
      ellipse(x, y, 90, 90); //地鼠的洞
    }
  }
}
