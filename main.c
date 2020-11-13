#include <stdio.h>
#include "myMath.h"



int main()
{
    double x;
    printf("Please insert a real number:");
    scanf("%lf",&x);

    double function1=sub(add(Exponent((int)x),Power(x,3)), 2);
    double function2=add(mul(x,3),mul(Power(x,2),2));
    double function3=sub(divv(mul(Power(x,3),4),5),mul(x,2));;
    printf("The value of f(𝑥) = %0.4lf\n",function1);
    printf("The value of f(x) = 3x + 2X^2 = %0.4lf\n",function2);
    printf("The value of f(x) = (4x^3)/5 -2x = %0.4lf\n ",function3);





}
