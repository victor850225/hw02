#include <cmath>
#include <algorithm> 
#include <chrono> 
#include <ctime>
#include <iostream>

using namespace std;
using namespace std::chrono; 

auto start = high_resolution_clock::now();



void calculate(int num) {

int radius = 32767;
int ni = 0;
int no=0;
int r_sqd = radius * radius;
int end=0;
int x,y,p_sqd;
int numofsam=num;

srand(time(0));
//auto start = high_resolution_clock::now(); 

for(int i=0;i<numofsam;i++){
  x=rand();
  y=rand();
  p_sqd=x*x+y*y;

    if(p_sqd<r_sqd) ni++;
    else no++;

}
cout << numofsam  << " " << ni << " " << no << " ";
cout << 4*ni/numofsam << " ";
cout << fabs(4*ni/numofsam-3.14)/3.14 << " ";

auto stop = high_resolution_clock::now(); 
auto duration = duration_cast<microseconds>(stop - start); 
cout << duration.count() << endl;

}


int main() {
//auto start = high_resolution_clock::now();

calculate(10);
calculate(100);
calculate(500);
calculate(1000);
calculate(5000);
calculate(10000);
calculate(50000);


return 0;
}
