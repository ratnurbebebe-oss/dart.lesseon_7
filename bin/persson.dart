class Persson {
  

String fullName;
int age;
bool isMarried;
 
Persson(this.fullName, this.age, this.isMarried);



void introduce(){
  String marriedStudent= isMarried? 'yes': 'no';
  print('Hy my name is $fullName. i am $age years old. married : $marriedStudent.');
}
}