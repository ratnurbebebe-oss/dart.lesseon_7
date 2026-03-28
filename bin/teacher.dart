import 'package:dart_lesseon_7/dart_lesseon_7.dart';

import 'persson.dart';
class Teacher extends Persson{
  int expereanceYears;
  static double _basesalay = 50000;
  double salary=0;
  Teacher(String fullName, int age, bool isMarried, this.expereanceYears):super(fullName, age, isMarried){
    salary=calculateSalary();
  }
  double calculateSalary(){
    double calculateSalary= _basesalay;
    if(expereanceYears >3){
      for(int i =4;  i <=expereanceYears; i++){
        calculateSalary *=1.05;
      }
   }
   if(isMarried){
  calculateSalary+=5000;
   }
   return calculateSalary;
  }
@override
void introduce(){
  super.introduce();
  print('experience $expereanceYears years');
  print('salary:\ ${salary.toStringAsExponential(2)}');
}
}