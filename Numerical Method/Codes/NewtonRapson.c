#include<stdio.h>
#include<math.h>
#define f(x)((x*x*x)-(9*x)+1)
#define f1(x)((3*x*x)-9)
#define acc 0.00001
int main()
	{
		printf("Newton Raphson\n");
		float a,b,c,x,i,x1;
		c=0;
		printf("\nC\t\tF(c)");
		do{
			if(f(c)<0)
				b=c;
			else
				a=c;
			c=c+0.1;
			printf("\n%f\t%f",c,f(c));
			}while(f(a)*f(b)>0);
		printf("\n\nIntervalBetween %f,%f\n",a,b);
		printf("\nA\t\tB");
		do{
			x=a-(f(a)/f1(a));
			b=a;				//b main gaya x0
			a=x;
			printf("\n%f\t%f",a,b);					//Increementationos x0
		}while(fabs(b-a)>acc);
		printf("\nThe root is %f",x);	 
		return 1;
	}
