import 'dart:io';

void main(){
  print("Enter name:");
  String name=stdin.readLineSync().toString();
  var charList=name.split('').reversed;
  String joinName= '';
  charList.forEach((element) {joinName+=element;});

  print("${name.toUpperCase()} = ${joinName.toUpperCase()}");
  if(joinName.toUpperCase()==name.toUpperCase()){
    print("$name is palindrome");
  }else{
    print("$name is not palindrome");
  }

}