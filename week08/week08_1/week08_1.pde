// week08-1 好玩的程式設計 氣球(圖片)
// File-Preference 字型設大 balloon.png 半透明圖
size(500,500);
PImage img;
img = loadImage("balloon.png");
image(img, 0, 0, 96, 132); // 看你圖的大小，依比例調整，縮小
// image(圖, x, y, 寬, 高);
image(img, 96,0, 96*2, 132*2); //兩倍大氣球
