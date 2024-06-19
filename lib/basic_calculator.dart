import 'dart:io';

void main(){
  print("Enter 1st No:");
  int no1= int.parse(stdin.readLineSync()!);
  stdout.write("Enter 2nd no:");
  int no2=int.parse(stdin.readLineSync()!);
  var math=MathOperations();
  int add=math.add(no1, no2);
  print(add);
 print("Addition:${ math.add(no1, no2)}");
  print("Subtraction:${math.sub(no1, no2)}");
  print("Multiplication:${math.mul(no1, no2)}");
  print("division:${math.div(no1, no2)}");
  print("modulus:${math.mod(no1, no2)}");


}

class MathOperations{

  int add(int a,int b){
    int sum=a+b;
    return sum;
  }

  int sub(int a,int b){
    // return a-b;
    //or
    if(a>b){
      return a-b;
    }else{
      return b-a;
    }
  }


  int mul(int a,int b){
    return a*b;
  }

  int div(int a,int b){
    return a~/b;
  }

  int mod(int a,int b){
    return a%b;
  }
}