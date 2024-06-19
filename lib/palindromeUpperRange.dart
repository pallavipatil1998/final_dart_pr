import 'dart:io';

void main(){
  print("Enter LowerRange:");
  int LowerRange=int.parse(stdin.readLineSync()!);
  print("Enter UpperRange:");
  int UpperRange=int.parse(stdin.readLineSync()!);
  List<int> palinList=[];
  for(int i=LowerRange;i<=UpperRange;i++){
    if(isPalins(i)){
      palinList.add(i);
    }
  }
  print("All Palindrome No 0 to $UpperRange is : $palinList");
}


bool isPalins(int no){
  int temp=no;
  int sum=0;
  int reminder;

  while(temp>0){
    reminder=temp %10;
    sum=(sum*10)+reminder;
    temp=temp~/10;
  }
  return no==sum;
}