/* GAUSS SEIDAL 
ALGORITHM
Step 1: Start
Step 2: Compute value for all the linear equations for Xi
Step 3: Initial Array must be available
Step 4: Compute each Xi and repeat the above steps
Step 5: Make use of the absolute relative approximate error after every step
        to check if the error occurs within a pre-specified tolerance.
Step 6: End
*/

#include<stdio.h>
#include<math.h>

int main()
{
	float a[10][10],b[10],x[10],x0[10],sum,e;
	int n,i,j,t;
	
	printf("\nEnter the order of the matrix: ");
	scanf("%d",&n);
	printf("\nEnter %d*%d elements of co-efficient matrix:\n",n,n);
	for(i=0;i<n;i++)
		for(j=0;j<n;j++)
			scanf("%f",&a[i][j]);
	printf("\nEnter %d elements of right hand side vector:\n",n);
	for(i=0;i<n;i++)
		scanf("%f",&b[i]);
	printf("\nEnter the desired accuracy: ");
	scanf("%f",&e);
	for(i=0;i<n;i++)
	{ 
		sum=0.0;
		for(j=0;j<n;j++)
			if(i!=j)
				sum=sum+fabs(a[i][j]);
		if(fabs(a[i][i])<sum)
		{
			printf("\nThe System is NOT diagonally dominant.");
			exit(0);
		}
	}
	printf("\nThe System is diagonally dominant.");
	for(i=0;i<n;i++)
		x0[i]=0.0;
	t=0;
	while(t==0)
	{
		for(i=0;i<n;i++)
		{
			x[i]=x0[i];
			sum=b[i];
			for(j=0;j<n;j++)
			{
				if(j!=i)
				sum=sum-a[i][j]*x0[j];
			}
			x0[i]=sum/a[i][i];
		}
		for(i=0;i<n;i++)
		{
			if(fabs(x0[i]-x[i])>e)
			{
				t=0;
				break;
			}
			else t=1;
		}
	}
	
printf("\nThe Solution of the system is......\n");
for(i=0;i<n;i++)
printf("\nx[%d]=%f",i+1,x[i]);
return 0;
}
