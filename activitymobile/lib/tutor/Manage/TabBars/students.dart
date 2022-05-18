import 'package:activitymobile/tutor/Manage/Models/student_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Student extends StatefulWidget {
  const Student({Key? key}) : super(key: key);

  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  List<StudentModel> studentModel = [
    StudentModel(subtitle: 'lester_p01@gmail.com', title: 'Lester P.', pic: 'assets/londa.png'),
    StudentModel(subtitle: 'lester_p01@gmail.com', title: 'Lester P.', pic: 'assets/londa.png'),
    StudentModel(subtitle: 'lester_p01@gmail.com', title: 'Lester P.', pic: 'assets/londa.png'),
    StudentModel(subtitle: 'lester_p01@gmail.com', title: 'Lester P.', pic: 'assets/londa.png')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(
              "Student Enrollment",
              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10,),
            Text(
              "Tell your message that you want to convey to your students.",
              style: GoogleFonts.poppins(fontSize: 14),
            ),
            SizedBox(height: 10,),
            ListView.builder(
                itemCount: studentModel.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.asset(
                        studentModel[index].pic,
                      ),
                      title: Text(
                        studentModel[index].title,
                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        studentModel[index].subtitle,
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
