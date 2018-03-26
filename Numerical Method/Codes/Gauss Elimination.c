//GAUSS ELIMINATION
/*
Start
STEP 1:Declare the variables and read the order of the matrix n.
STEP 2:Take the coefficients of the linear equation as:
STEP 3:Do for k=1 to n
		Do for j=1 to n+1
		Read a[k][j]
		End for j
		End for k
STEP 4:	Do for k=1 to n-1
		Do for i=k+1 to n
		Do for j=k+1 to n+1
		a[i][j] = a[i][j] – a[i][k] /a[k][k] * a[k][j]
		End for j
		End for i
		End for k
STEP 5:	Compute x[n] = a[n][n+1]/a[n][n]
		Do for k=n-1 to 1
STEP 6:	sum = 0
		Do for j=k+1 to n
STEP 7:	sum = sum + a[k][j] * x[j]
		End for j
STEP 8:	x[k] = 1/a[k][k] * (a[k][n+1] – sum)
		End for k
STEP 9:	Display the result x[k]
STEP 10:	Stop
*/
#include<stdio.h>
int main()
{
    int i,j,k,n;
    float A[20][20],c,x[10],sum=0.0;
    printf("\nEnter the order of matrix: ");
    scanf("%d",&n);
    printf("\nEnter the elements of augmented matrix row-wise:\n\n");
    for(i=1; i<=n; i++)
    {
        for(j=1; j<=(n+1); j++)
        {
            printf("A[%d][%d] : ", i,j);
            scanf("%f",&A[i][j]);
        }
    }
    for(j=1; j<=n; j++) /* loop for the generation of upper triangular matrix*/
    {
        for(i=1; i<=n; i++)
        {
            if(i>j)
            {
                c=A[i][j]/A[j][j];
                for(k=1; k<=n+1; k++)
                {
                    A[i][k]=A[i][k]-c*A[j][k];
                }
            }
        }
    }
    x[n]=A[n][n+1]/A[n][n];
    /* this loop is for backward substitution*/
    for(i=n-1; i>=1; i--)
    {
        sum=0;
        for(j=i+1; j<=n; j++)
        {
            sum=sum+A[i][j]*x[j];
        }
        x[i]=(A[i][n+1]-sum)/A[i][i];
    }
    printf("\nThe solution is: \n");
    for(i=1; i<=n; i++)
    {
        printf("\nx%d=%f\t",i,x[i]); /* x1, x2, x3 are the required solutions*/
    }
    return(0);
}
