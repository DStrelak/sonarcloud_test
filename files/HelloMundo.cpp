#include<iostream>
using namespace std;

int main ()
{
   int* aaa = NULL;
   int bbb = *aaa;
   int* ccc;
   int ddd = *ccc;
   int eee;
   if (bbb > ddd) return -1;   
   cout << "Hola tio, que tal?";
   return 0;
}
