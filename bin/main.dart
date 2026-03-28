

import 'persson.dart';
import 'student.dart';
import 'teacher.dart';
 void main(){
  Teacher teacher=Teacher('john burrow', 40, true, 10);
  teacher.introduce();
   
   student student1= student('Adam wise', 20, false);
   student student2=student('Emma Smich', 22, true);
   student2.addMark('math', 78);
   student2.addMark('phisics', 88);
   student2.addMark("English", 95);
  

  student1.introduce();
  student1.showmarks();
  student2.introduce();
  student2.showmarks();
  

 }
