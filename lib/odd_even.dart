import 'dart:io';

void main(){

  print("Enter no:");
  int no= int.parse(stdin.readLineSync()!);
  if(no%2==0){
    print("$no is even");
  }else{
    print("$no is odd");
  }


}

