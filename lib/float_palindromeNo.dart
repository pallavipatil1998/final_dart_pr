import 'dart:io';

void main(){
  print("Enter no:");
 var no=stdin.readLineSync().toString();

  String orgNo="";
 if(no.contains('.')){
   no.split('.').forEach((element){orgNo=orgNo+element;});
 }
  print(int.parse(orgNo));
int num=int.parse(orgNo);
int temp=num;
int sum=0;
int reminder=0;

while(temp>0){
  reminder=temp%10;
  sum=(sum*10)+reminder;
  temp=temp~/10;
}
if(num==sum){
  print("$no is palindrome");
}else{
  print("$no is not palindrome");
}
}