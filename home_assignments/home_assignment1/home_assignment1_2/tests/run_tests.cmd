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
    int positive_count = 0;
    for (int i = 0; i < N; i++) {
        scanf("%d", &num);
        if (num > 0) {
            sum += num;
            positive_count++;
        } else {
            printf("Введено отрицательное число, программа игнорирует его.\n");
        }
    }

    if (positive_count > 0) {
        float average = (float)sum / positive_count;
        printf("%f\n", average);
    } else {
        printf("Нет положительных чисел для вычисления среднего.\n");
    }

    return 0;
}
