import 'package:flutter/material.dart';
import 'package:note_keeper/Birthday/NoteBirthday.dart';
import 'package:note_keeper/Expenses/NoteExpenses.dart';
import 'package:note_keeper/Learning/NoteLearning.dart';
import 'package:note_keeper/Medical/NoteMedical.dart';
import 'package:note_keeper/screens/first_screen.dart';
import 'package:note_keeper/screens/note_list.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('tester'),
            accountEmail: Text('tester@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyTiYoniqzJRoChSu6iDj1Nr7lY99ARkHyDw&usqp=CAU',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notes),
            title: Text('Default notes'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NoteList();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services),
            title: Text('Medical'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MedicalList();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Learning'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LearningList();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.cake),
            title: Text('Birthday'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BirthdayList();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text('Daily expenses'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ExpenseList();
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
