#include <stdio.h>


int main(int argc,char* argv[])
{
	int i,prec_prec=0,prec=1,current=0;
	printf("DEBUT\n");
	printf("1\t");
	for(i=1;i<20;i++)
	{
		current=prec+prec_prec;
		printf("%d\t",current);
		prec_prec=prec;
		prec=current;
	}
	printf("\nFIN\n");
	return 1;
}
