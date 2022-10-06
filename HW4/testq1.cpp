/*
 * @Author: your name
 * @Date: 2022-05-01 17:23:19
 * @LastEditTime: 2022-05-01 19:37:32
 * @LastEditors: momo.local
 * @Description: In User Settings Edit
 * @FilePath: /HW4/testq1.cpp
 */
#include <iostream>
using namespace std;

int main() {
   int R0 = 10;
   int R1 = 20;
   int  R2 = 5;
   int R3;
   int R4;
  if (R0 >= R1) {
    R3 = R0 - R2;
    R0 = 25;
  } else {
    R4 = R2 - R0;
    R0 = 15;
  }
  cout << "R0 = " << R0 <<endl ;
  return 0;
}