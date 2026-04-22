///week09-4.cpp 要交換陣列裡的數字
#include <stdio.h>
int main()
{
    int a=99, b=34; ///有兩個水瓶 a咖啡 b清水
    printf("一開始 a: %d b: %d\n", a, b);
    int temp = a; ///再第三個瓶子 temp 先接咖啡
    a = b;
    b = temp;
    printf("交換後 a: %d b: %d\n", a, b);
}
