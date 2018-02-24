//ALGORITHM
/*
STEP 1.Start
STEP 2.Define function
STEP 3.Get the values of x0, y0, h and xn
		*Here x0 and y0 are the initial conditions
		h is the interval
		xn is the required value
STEP 4.n = (xn – x0)/h + 1
STEP 5.Start loop from i=1 to n
STEP 6.y = y0 + h*f(x0,y0)
STEP 7.x = x + h
STEP 8.Print values of y0 and x0
STEP 9.Check if x < xn
		If yes, assign x0 = x and y0 = y
		If no, goto 9.
STEP 10.End loop i
Stop
*/
#include<stdio.h>
float fun(float x,float y)
{
    float f;
    f=x+y;
    return f;
}
main()
{
    printf("Euler's Method");
	float a,b,x,y,h,t,k;
    printf("\nEnter x0,y0,h,xn: ");
    scanf("%f%f%f%f",&a,&b,&h,&t);
    x=a;
    y=b;
    printf("\n  x\t  y\n");
    while(x<=t)
    {
        k=h*fun(x,y);
        y=y+k;
        x=x+h;
        printf("%0.3f\t%0.3f\n",x,y);
    }
}
