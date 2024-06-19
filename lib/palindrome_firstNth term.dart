import 'dart:io';

void main(){
  print("Enter term:");
  int term=int.parse(stdin.readLineSync()!);
  List<int> palinList=[];
  int i=0;

  while(palinList.length<term){
    if(isPalindrome(i)){
      palinList.add(i);
    }
    i++;
  }

  print("first $term PalinDrome no:$palinList ");
  



}

bool isPalindrome(int no){
  int temp=no;
  int sum=0;
  int  reminder=0;

  while(temp>0){
    reminder=temp%10;
    sum=(sum*10)+reminder;
    temp=temp~/10;
  }
  return no==sum;
}