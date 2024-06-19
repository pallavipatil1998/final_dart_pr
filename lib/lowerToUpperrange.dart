import 'dart:io';

void main(){
  print("Enter lowerRange:");
  int lowerRange= int.parse(stdin.readLineSync()!);
  print("Enter upperRange:");
  int upperRange= int.parse(stdin.readLineSync()!);


  List<int> evenList=[];
  List<int> oddList=[];
  List<int> primeList=[];



  for(int i=lowerRange; i<=upperRange;i++){
    if(even(i)){
      evenList.add(i);
    }

    if(odd(i)){
      oddList.add(i);
    }
    if(prime(i)) {
      primeList.add(i);
    }

  }


  print("Even No:$evenList");
  print("Odd No:$oddList");
  print("Prime No:$primeList");

}


bool even(int num){
  return num%2==0;
}

bool odd(int num){
  return num%2!=0;
}

bool prime(int no){
  bool isPrime=true;
  for(int i=2;i<=no/2;i++){
    if(no%i==0){
      isPrime=false;
      // break;
    }
  }
  return isPrime;
}


