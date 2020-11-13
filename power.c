#include "myMath.h"
#define E 2.71828182846


double Exponent(int x)
{
    double e = 2.71828182846;

    int i;
    if(x==0)
    return 1;

    double res=e;

    for(i=1;i<x;i++)
    {
        res=res*e;
    }
    return res;
}
double Power(double x , int y)
{
    double res=x;
    if(y==0)
        return 1;
    if(x==1)
        return x;
    int i;
    for(i=1;i<y;i++)
        res=res*x;
    return res;

}
