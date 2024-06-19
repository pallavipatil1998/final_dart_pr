import 'dart:io';

void main(){
  print("Enter Term:");
  int term=int.parse(stdin.readLineSync()!);
  List<int> evenList=[];
  List<int> oddList=[];
  List<int> primeList=[];
  int no=1;

  while(evenList.length<term){
    if(even(no)){
      evenList.add(no);
    }
    no++;
  }
  no=1;

  while(oddList.length<term){
    if(odd(no)){
      oddList.add(no);
    }
    no++;
  }
  no=1;
  while(primeList.length<term){
    if(prime(no)){
      primeList.add(no);
    }
    no++;
  }


  print("First $term Even No:$evenList");
  print("First $term  Odd No:$oddList");
  print("First $term Prime No:$primeList");

}



bool even(int no){
  return no%2==0;
}

bool odd(int no){
  return no%2!=0;
}


bool prime(int no){
  bool isPrime=true;
  for(int i=2;i<=no/2;i++){
    if(no%i==0){
      isPrime=false;
      break;
    }
  }
  return isPrime;
}