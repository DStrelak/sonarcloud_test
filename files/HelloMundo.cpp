#include<iostream>
using namespace std;

int main ()
{
   int* aaa = nullptr;
   int bbb = *aaa;
   int* ccc;
   int ddd = *ccc;
   if (bbb > ccc) return -1;   
   cout << "Hola tio, que tal?";
   return 0;
}
