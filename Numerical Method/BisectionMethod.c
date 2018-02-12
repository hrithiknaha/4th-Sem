#include<stdio.h>
#include<math.h>
#define f(x)((x*x*x)-(3*x)+1.06)
int main()
	{
		double a,b,e,x,c;
		int i=0;
		printf("Enter the Desired Accuracy :");
		scanf("%lf",&e);
		c=0;
		printf(".................\n");
		do
		{
				if(f(c)>0)
				 	b=c;
				else
					a=c;
				c=c+0.1;
				printf("\n%lf\t%lf",c,f(c));
		}while(f(a)*f(b)>0);
		printf("\nIn val is [%lf,%lf]\n",a,b);
		//printf("No of iteration %d",i);
		printf(".................\n");
		printf("\nI\tA\t\tB\t\tX");
		do
		{
			i++;
			x=(a+b)/2;
			if(f(a)*f(x)>0)
				a=x;
			else
				b=x;
			printf("\n%d\t%lf\t%lf\t%lf",i,a,b,x);
		}while(fabs(b-a)>e);
		printf("\nThe root is %lf",x);
		return 1;
	}