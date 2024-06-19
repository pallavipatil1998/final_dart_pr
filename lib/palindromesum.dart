import 'dart:io';

void main(){
  print("Enter term=");
  int term=int.parse(stdin.readLineSync()!);
  List<int> palinList=[];
  int no=0;
  while(palinList.length<term){
    if(isPalindrome(no)){
      palinList.add(no);
    }
    no++;

  }
 int add=0;
  palinList.forEach((element) {add=add+element;});

  print(palinList);
  print("Addition is : $add");


}

bool isPalindrome(int no){
  int sum=0;
  int temp=no;
  int reminder=0;

  while(temp>0){
    reminder=temp%10;
    sum=(sum*10)+reminder;
    temp =temp~/10;
  }
  return no==sum;
}
