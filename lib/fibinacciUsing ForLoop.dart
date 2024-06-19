import 'dart:io';

void main(){
  print("Enter UpperRange:");
  int UpperRange=int.parse(stdin.readLineSync()!);

  int no1=0;
  int no2=1;
  int temp=0;

  List<int> fiboList=[];
  fiboList.addAll([0,1]);
  for(int i=2;i<=UpperRange;i++){
    temp =no1+no2;
    fiboList.add(temp);
    no1=no2;
    no2=temp;
  }
  print("$fiboList");

}