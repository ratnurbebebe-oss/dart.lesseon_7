import 'persson.dart';
class student extends Persson{
  Map<String, double>marks={};
student(String fullName,int age, bool isMarried): super (fullName, age, isMarried );
  
  void addMark(String subject, double mark){
    marks[subject]=mark; 
  }
  void showmarks(){
    print('student $fullName marks:');
    marks.forEach((subject, mark) {
      print('$subject: $mark');

      
    });
  }
  double calculateAverage(){
    double sum=0;
    for (var mark in marks.values){
      sum+=mark;
    }
return marks.isNotEmpty? sum/ marks.length : 0 ;
  }
  @override
  void introduce(){
    super.introduce();
    print('Avearage mark: ${calculateAverage()}');
    
  }
  }
  
