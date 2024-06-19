import 'dart:io';
import 'dart:math';

void main(){
  print("Enter no:");
  int no= int.parse(stdin.readLineSync()!);
  // isArmStrong(no);
  int temp=no;
  int digit=0;
  int sum=0;

  while(temp>0){
    temp = temp ~/ 10;
    digit++;
  }
  print("Digit: $digit");

  temp=no;

  while(temp>0){
    int reminder= temp%10;
    sum=sum+pow(reminder, digit).toInt();
    temp=temp~/10;

  }

  if(no==sum){
    print("$no is ArmStrong No");
  }else{
    print("$no is Not ArmStrong No");
  }

}

 /*isArmStrong(int? check){
  if(check!= null){
    print(check!=null);
  }else{
    print(check== null);
  }
}*/