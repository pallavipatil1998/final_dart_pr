import 'dart:io';

void main(){
  print("Enter UpperRange:");
  int UpperRange= int.parse(stdin.readLineSync()!);

  int no1=0;
  int no2=1;
  int temp=0;
  List<int> fiboList=[];

  while(temp<UpperRange){
    fiboList.add(temp);
    no1=no2;
    no2=temp;
    temp=no1+no2;
    }


  print(fiboList);
}