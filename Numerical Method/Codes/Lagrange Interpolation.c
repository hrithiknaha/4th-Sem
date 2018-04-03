//lagrange Interpolation
/*Algorithm:
Step 1: Start
Step 2: Input the number of terms (n)
Step 3: Input the x terms
Step 4: Input the y terms
Step 5: Input the required value (z)
Step 6: Set sum=0.0
Step 7: for(i=1;i<n;i++)
Step 8: Set product=1.0
Step 9: for(j=0;j<n;j++)
Step 10: If (j!=i), then set product=product*(z-x[j])/(x[i]-x[j])
Step 11: End if
Step 12: End for loop j
Step 13: Set sum=sum+product*y[i]
Step 16: End loop for i
Step 17: Display the sum
Step 18: End
Code:*/
#include<stdio.h>
int main()
{
int n,i,j;
float x[10],y[10],z,sum,product;
printf("\nEnter the number of values given:");
scanf("%d",&n);
printf("\nEnter the X components:\n");
for(i=0;i<n;i++)
scanf("%f",&x[i]);
printf("\nEnter the Y components:\n");
for(i=0;i<n;i++)
scanf("%f",&y[i]);
printf("\nEnter the value of x:");
scanf("%f",&z);
sum=0.0;
for(i=0;i<n;i++)
{
product=1.0;
for (j=0;j<n;j++)
{
if(j!=i)
product=product*(z-x[j])/(x[i]-x[j]); 
}
sum=sum+product*y[i];
}
printf("\nThe result is %f",sum);
return 0;
}

