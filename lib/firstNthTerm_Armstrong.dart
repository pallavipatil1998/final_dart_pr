import 'dart:io';
import 'dart:math';

void main(){
  print("Enter term:");
  int term=int.parse(stdin.readLineSync()!);
  List<int> ArmstrongList=[];
  int no=0;
  while(ArmstrongList.length<term){
    if(isArmStrong(no)){
      ArmstrongList.add(no);
    }
    no++;
  }
  print("Armstrong no: $ArmstrongList");
}


bool isArmStrong(int no){
  int temp=no;
  int sum=0;
  int digit=0;

  while(temp>0){
    temp=temp~/10;
    digit++;
  }

  temp=no;

  while(temp>0){
    int reminder=temp%10;
    sum=sum+pow(reminder, digit).toInt();
    temp=temp~/10;
  }

  return no==sum;
}