#include<stdio.h>
#include<math.h>
#define f(x)((x*x*x)-(5*x)-7)
#define acc 0.001
int main()
{
	printf("Regula Falsi \n");
	float a,b,x;
	float c=0;
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
		printf("\nInterval is [%lf,%lf]\n",a,b);
	printf("\nThe Value of x :");
	do
		{
			x=a-((b-a)*(f(a)))/(f(b)-f(a));
			if(f(a)*f(b)<0)
				b=x;
			else
				a=x;
			printf("%f \n",x);
		}while(fabs(b-a)>acc);
		printf("\nThe Root is %f",x);
	return 1;
}
			
