import 'dart:io';

void main(){
  print("Enter term:");
  int term=int.parse(stdin.readLineSync()!);
  int no1=0;
  int no2=1;
  List<int> fiboList=[];
  int temp=0;


  while(fiboList.length<term){
    fiboList.add(temp);
    no1=no2;
    no2=temp;
    temp=no1+no2;
  }
  print("$term term of Fibinacci Series is $fiboList");
}

