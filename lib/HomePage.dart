// ignore_for_file: file_names, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'DisplayPage.dart';
class UserData {
  final String name;
  final String birthdate;
  final String email;
  final String whatsapp;
  final String linkedin;
  final String website;
  final String education;
  final String interests;
  final String skills;
  final String projects;
  final String internships;
  final String openToWork;

  UserData({
    required this.name,
    required this.birthdate,
    required this.email,
    required this.whatsapp,
    required this.linkedin,
    required this.website,
    required this.education,
    required this.interests,
    required this.skills,
    required this.projects,
    required this.internships,
    required this.openToWork,
  });
}
class HomeScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController birthdateController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController whatsappController = TextEditingController();
  final TextEditingController linkedinController = TextEditingController();
  final TextEditingController websiteController = TextEditingController();
  final TextEditingController educationController = TextEditingController();
  final TextEditingController interestsController = TextEditingController();
  final TextEditingController skillsController = TextEditingController();
  final TextEditingController projectsController = TextEditingController();
  final TextEditingController internshipsController = TextEditingController();
  final TextEditingController openToWorkController = TextEditingController();

  HomeScreen({super.key});

  Future<void> _submitForm(BuildContext context) async {
    String name = nameController.text;
    String birthdate = birthdateController.text;
    String email = emailController.text;
    String whatsapp = whatsappController.text;
    String linkedin = linkedinController.text;
    String website = websiteController.text;
    String education = educationController.text;
    String interests = interestsController.text;
    String skills = skillsController.text;
    String projects = projectsController.text;
    String internships = internshipsController.text;
    String openToWork = openToWorkController.text;

    try {
      await FirebaseFirestore.instance.collection('users').add({
        'name': name,
        'birthdate': birthdate,
        'email': email,
        'whatsapp': whatsapp,
        'linkedin': linkedin,
        'website': website,
        'education': education,
        'interests': interests,
        'skills': skills,
        'projects': projects,
        'internships': internships,
        'openToWork': openToWork,
      });

      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DisplayUserData(userData: UserData(
            name: name,
            birthdate: birthdate,
            email: email,
            whatsapp: whatsapp,
            linkedin: linkedin,
            website: website,
            education: education,
            interests: interests,
            skills: skills,
            projects: projects,
            internships: internships,
            openToWork: openToWork,
          )),
        ),
      );
    } catch (e) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Failed to store data. Please try again later.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StudentPortify', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                buildTextField(nameController, 'Name'),
                buildTextField(birthdateController, 'Birthdate'),
                buildTextField(emailController, 'Email'),
                buildTextField(whatsappController, 'WhatsApp'),
                buildTextField(linkedinController, 'LinkedIn'),
                buildTextField(websiteController, 'Website'),
                buildTextField(educationController, 'Education'),
                buildTextField(interestsController, 'Interests'),
                buildTextField(skillsController, 'Skills'),
                buildTextField(projectsController, 'Projects'),
                buildTextField(internshipsController, 'Internships'),
                buildTextField(openToWorkController, 'Open to Work (Yes/No)'),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () => _submitForm(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text('Create', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          floatingLabelStyle: const TextStyle(color: Colors.orange),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
          ),
          fillColor: Colors.orange,
        ),
        cursorColor: Colors.orange,
      ),
    );
  }
}

