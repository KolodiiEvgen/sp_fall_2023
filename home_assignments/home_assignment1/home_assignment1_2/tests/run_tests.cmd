#include <stdio.h>

int main() {
    int N;
    scanf("%d", &N);

    if (N <= 0 || N >= 100) {
        printf("Недопустимое значение N\n");
        return 1;
    }

    int sum = 0;
    int num;
    for (int i = 0; i < N; i++) {
        scanf("%d", &num);
        if (num > 0) {
            sum += num;
        } else {
            printf("Введено отрицательное число, программа игнорирует его.\n");
        }
    }

    float average = (float)sum / N;
    printf("%f\n", average);

    return 0;
}
