import 'dart:io';
import 'dart:math';

void main(){
  print("Enter No:");
  int no=int.parse(stdin.readLineSync()!);
  int sum=0;
  int temp=no;

  //optional
  isArmNo(no);

  //1st step
  int digit = 0;
  while (temp > 0) {
    temp = temp ~/ 10;
    digit++;
  }
  print("Digit: $digit");

//2nd step
  temp = no;
  while (temp > 0) {
    int reminder = temp % 10;
    sum = sum + pow(reminder, digit).toInt();
    temp = temp ~/ 10;
  }
  print("Sum: $sum");

  //3rd step
  if (sum == no) {
    print("$no is ArmStrong No");
  } else {
    print("$no is Not ArmStrong No");
  }

}


//optional if no num
isArmNo(int? check){
  // print(check!=null);
  if(check!=null){
    print(check!=null);
  }else{
    print(check==null);
  }
}