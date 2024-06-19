import 'dart:io';

void main(){
  print("Enter no:");
  int no=int.parse(stdin.readLineSync()!);
  int temp=no;
  int sum=0;

  while(temp>0){
    int reminder=temp%10;
    sum=(sum*10)+ reminder;
    temp=temp~/10;
  }
  if(no==sum){
    print("$no is Palindrome");
  }else{
    print("$no is  not Palindrome");
  }
}