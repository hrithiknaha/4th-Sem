//ALGORITHM
/*
Step 1: Start
Step 2: Input Values For Lower Boundary, Upper Boundary and Width 
Step 3: Calculate value for the formula: value = (upper_boundary - lower_boundary) / width
Step 4: Compute Width with this formula: width = (upper_boundary - lower_boundary) / value
Step 5: Consider y = f(x). Calculate the values of Y(Lower Bound to Upper Bound) 
        for the corresponding X(Lower Bound to Upper Bound)
Step 6: Substitute the above values in the Simpsons 1/3 Rule Formula
Step 7: End
*/


//Simpson 1/3rd Rule
#include<stdio.h>
#include<math.h>
//using namespace std;
 
// Function to calculate f(x)
float func(float x)
{
    return log(x);
}
 
// Function for approximate integral
float simpsons(float ll, float ul, int n)
{
    int i;
	// Calculating the value of h
    float h = (ul - ll) / n;
 
    // Array for storing value of x and f(x)
    float x[10], fx[10];
 
    // Calculating values of x and f(x)
    for (i = 0; i <= n; i++) {
        x[i] = ll + i * h;
        fx[i] = func(x[i]);
    }
 
    // Calculating result
    float res=0;
    for (i=0;i<n;i++) {
        if (i==0||i==n)
            res +=fx[i];
        else if(i%2!=0)
            res +=4*fx[i];
        else
            res +=2*fx[i];
    }
    res=res*(h/3);
    return res;
}
 
// Driver program
int main()
{
    float ll,ul,k;
    int n; // Number of interval
    printf("Enter the lower and Upper limit :");
    scanf("%f%f",&ll,&ul);
    printf("Enter the Number of Interval :");
    scanf("%d",&n);
    k=simpsons(ll,ul,n);
    printf("Root is :%f",k);
    return 0;
}
