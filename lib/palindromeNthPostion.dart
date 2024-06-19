import 'dart:io';

void main(){
  print("Enter position:");
  int position=int.parse(stdin.readLineSync()!);
  List<int> palinList=[];
  int no=0;
  while(palinList.length<position){
    if(isPalindrome(no)){
      palinList.add(no);
    }
    no++;
  }

  print("$palinList");
print("$position Postion is ${palinList.last}");
}

bool isPalindrome(int no){
  int temp=no;
  int sum=0;
  int reminder=0;

  while(temp>0){
    reminder=temp%10;
    sum=(sum*10)+reminder;
    temp=temp~/10;
  }
  return no==sum;
}