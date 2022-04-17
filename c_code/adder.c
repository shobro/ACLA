# include <stdio.h>
# include <stdlib.h>
# include <math.h>

long long int power(int base, int exponent){
    long long int result=1;
    for(exponent; exponent>0; exponent--){
        result = result * base;
    }
    return result;
}
int * dec2bin(int *x,long long int n,int N){
    //printf("%d ",x[0]);
    for(int i=N-1;n>0;i--)    
    {    
        x[i]=n%2;    
        n=n/2;    
    }
    return x; 
}
long long int bin2dec(int *x,int N){
    long long int sum = 0;
    for (int i = N-1; i >= 0; --i){
        long long int fac1 = power(2,N-i-1);
        long long int fac = x[i] * fac1;
        sum = sum + fac;
        //printf("%d ",x[i]);
    }
    return sum;
}

int  blockadder(int *x,int *y,int *sum,int cin,int M,int start_index,int end_index){
    int cout = 0;
    for (int i = end_index ; i >= start_index ; --i){
        sum[i+1] = ((x[i])^(y[i]))^(cin);
        //printf("%d ",sum[i+1]);
        cin = ((x[i])& (y[i])) || ((cin) &&((x[i])^(y[i])));
    }
    int fac = 0;
    int fac1 = x[start_index]^y[start_index];
    int fac2 = x[start_index+1]^y[start_index+1];
    int fac3 = x[start_index+2]||y[start_index+2];
    for (int i = end_index ; i > start_index + 2 ; --i){
        fac = ((x[i]) && (y[i])) || fac;
    }
    cout = (fac && fac1 && fac2 && fac3)|| (((x[start_index+2]) & (y[start_index+2])) && fac1 && fac2) || (((x[start_index+1])&(y[start_index+1])) && fac1) || ((x[start_index])&(y[start_index]));
    return cout;
}

int normaladder(int *x,int*y,int *sum,int cin,int M,int start_index,int end_index){
    for (int i = end_index ; i >= start_index ; --i){
        sum[i+1] = (x[i]^y[i])^cin;
        cin = (x[i] & y[i]) || (cin) && (x[i]^y[i]);
    }
    return cin;
}


long long int mockadder(int *x,int *y,int N,int M){
    int a = floor(N/M);
    int * sum = (int *) calloc(sizeof(int),N+1);
    int cin = 0; 
    for (int i = 0; i < a ; ++i){
        int start_index = N-(i+1)*M;
        int end_index = N-(i*M)-1;
        cin = blockadder(x,y,sum,cin,M,start_index,end_index);
    }
    if (N-a*M >= 4){
        cin = blockadder(x,y,sum,cin,N-a*M,0,N-a*M-1);
    }
    else if (N-a*M != 0){
        cin = normaladder(x,y,sum,cin,N-a*M,0,N-a*M-1);
    }
    sum[0] = cin;
    long long int s = bin2dec(sum,N+1);
    return s;
}


int main(){
    long long int a,b;    // a, b are numbers to be added
    int N,M;
    int cont = 1; 
    do {   // N = bit size ,M = block size;
        printf ("Enter the numbers in decimal, bitsize and block size respectively : ");
        scanf (" %lld%lld%d%d",&a,&b,&N,&M);
        int *x,*y;
        x = (int *) calloc(sizeof(int),N);
        y = (int *) calloc(sizeof(int),N);
        x = dec2bin(x,a,N);
        y = dec2bin(y,b,N);
        /*for (int i = 0 ; i  < N; ++i){
            printf("%d ",x[i]);
        }*/
        //printf("%d %d ",x[0],x[1]);
        long long int sum;
        sum = mockadder(x,y,N,M);
        printf("%lld\n",sum);
        printf ("Press 0 to exit and 1 to continue ");
        scanf(" %d",&cont);
    }while (cont);
    return 0;
}