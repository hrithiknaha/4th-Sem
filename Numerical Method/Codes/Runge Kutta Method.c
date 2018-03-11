
/*Runge Kutta Method
ALGORITHM
STEP1:Start
STEP2:Define the dissrential Equation
STEP3:Initialize x0, xn, y0 and step size
STEP4:Calculate k1,k2,k3,k4
STEP5:Repeat till x<xn
STEP6:Print the output
STEP7:End
*/

#include<stdio.h>
#include<math.h>
double f(double x, double y){
    //return 2-exp(-4*x)-2*y;   
    return 1/(x+y);;
    return x;
}
main(){
    int i;
    double x,y,x0,y0,h,k1,k2,k3,k4;
    printf("Enter the initial condition for y: ");
    scanf("%lf",&y0);
    printf("Enter the initial condition for x: ");
    scanf("%lf",&x0);
    printf("Enter the value of x for which y is required: ");
    scanf("%lf",&x);
    printf("Enter the step-width h: ");
    scanf("%lf",&h);
    printf("x\t\ty\t\tk1\t\tk2\t\tk3\t\tk4\t\tk_avg\n");
    printf("__________________________________________________________________________________________________________\n");
    //Begin Runge-Kutta Routine
    while((x-x0)>0.0000000001){				//Accuracy
        k1=h*f(x0,y0);
        k2=h*f(x0+h/2.0,y0+k1/2.0);
        k3=h*f(x0+h/2.0,y0+k2/2.0);
        k4=h*f(x0+h,y0+k3);
        printf("%lf\t%lf\t%lf\t%lf\t%lf\t%lf\t%lf\n",x0,y0,k1,k2,k3,k4,1/6.0*(k1+2*k2+2*k3+k4));
        y=y0+1/6.0*(k1+2*k2+2*k3+k4);
        y0=y;
        x0=x0+h;
    }
    printf("%lf\t%lf\n",x0,y0);
    printf("____________________________________________________________________________________________________________\n");
    printf("The value of y is %lf\n\n",y);
}
