///week09-6.cpp 要交換陣列裡的數字
#include <stdio.h>
int main()
{ ///陣列有10個數字
    int a[10] = {11,22,33,44,55,66,77,88,99,97};

    for (int i=0; i<10; i++) printf("%d ", a[i]); ///擠一行
    printf("\n"); ///跳行

    for (int k=0; k<10-1; k++){ ///只加這行
        for(int i=0; i<10-1;i++) { /// 小心，i<10-1的-1減1
            if ( a[i] < a[i+1] ) { ///要左大右小 但現在反過來
                int temp = a[i]; ///交換
                a[i] = a[i+1];
                a[i+1] = temp;
            }
        }
        ///陣列再印一次 最小11到右邊了
         for (int i=0; i<10; i++) printf("%d ",a[i]); ///擠一行
        printf("\n"); ///跳行
    }///只加這行
}
