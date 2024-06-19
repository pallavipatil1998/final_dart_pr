import 'dart:io';
import 'dart:math';

void main(){
  print("Enter lowerRange:");
  int lowerRange=int.parse(stdin.readLineSync()!);
  print("Enter upperRange:");
  int upperRange=int.parse(stdin.readLineSync()!);
  List<int> ArmstrongList=[];

  for(int i=lowerRange;i<=upperRange;i++){
    if(isArmStrong(i)){
      ArmstrongList.add(i);
    }
  }
  print("Armstrong nos: $ArmstrongList");
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