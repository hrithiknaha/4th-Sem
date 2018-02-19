//ALGORITHM
/*
STEP1 1:Start
STEP1 2:Define and Declare the function
STEP1 3:Input initial boundary value, final boundary value and length of interval
STEP1 4:Calculate number of strips, n=(final boundary value-initial boundary value)/length of interval
STEP1 5:Perform the following operations in loop
STEP1 6:x[i]=x0+i*h
STEP1 7:y[i]=f(x[i])print y[i]
STEP1 8:Initialize se=0,s0=0
STEP1 9:Do the following using a loop
STEP1 10:f i%2=0
STEP1 11:s0=s0+y[i]Otherwise
STEP1 12:se=se+y[i]
STEP1 13:ans=h/3*(y[0]+y[n]+4*s0+2*se)
STEP1 14:print the ans
STEP1 15:stop
*/



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
