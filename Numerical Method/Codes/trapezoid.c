// C program to implement Trapezoidal rule
#include<stdio.h>
float y(float x)
{ 
    return 1/(1+x*x);			// Declaring the function
}
 
// Function to evalute the value of integral
float trapezoidal(float a, float b, float n)
{
    int i;
    float h=(b-a)/n;			//grid spacing
    float s=y(a)+y(b);			//Computing sum of first and last terms
    for(i=1;i<n;i++)			// Adding middle terms in above formula
        s+=2*y(a+i*h);			//h/2 indicates (b-a)/2n. Multiplying h/2 with s
    return (h/2)*s;
}
 

int main()
{
    // Range of definite integral
    float x0,x1;
    int n;
 	printf("Enter the range of the Integral :");
 	scanf("%f%f",&x0,&x1);
 	printf("Enter the number of points! The more the better:");
 	scanf("%d",&n);
    printf("Value of integral is %6.4f\n",
                  trapezoidal(x0, x1, n));
    return 0;
}
