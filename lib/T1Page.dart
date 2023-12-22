// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'HomePage.dart';

class Template1Screen extends StatelessWidget {
  final UserData userData;

  // Constructor for Template1Screen with required parameter userData
  const Template1Screen({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display user name with a stylish font and larger size
            Text(
              userData.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Custom color for the user name
                letterSpacing: 1.2, // Increased letter spacing for a stylish look
                fontFamily: 'Roboto', // Custom font family
              ),
            ),
            SizedBox(height: 16), // Add some spacing between name and other details        
            Text(
              "Personal Information :",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,

                color: Colors.orange, // Custom color for the user name


              ),
            ),
            SizedBox(height: 16), // Add some spacing between name and other details  
            SizedBox(height: 16), // Add some spacing between name and other details
            _buildDetailRow('Birthdate', userData.birthdate),
            _buildDetailRow('Email', userData.email),
            _buildDetailRow('WhatsApp', userData.whatsapp),
            _buildDetailRow('LinkedIn', userData.linkedin),
            _buildDetailRow('Website', userData.website),
            _buildDetailRow('Education', userData.education),
                        SizedBox(height: 16), // Add some spacing between name and other details
                        Text(
              "Skill & Exprience :",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
               
                color: Colors.orange, // Custom color for the user name
               
              ),
            ),
                                    SizedBox(height: 16), // Add some spacing between name and other details
            _buildDetailRow('Interests', userData.interests),
            _buildDetailRow('Skills', userData.skills),
            _buildDetailRow('Projects', userData.projects),
            _buildDetailRow('Internships', userData.internships),
            _buildDetailRow('Open to Work', userData.openToWork.toString()),
          ],
        ),
      ),
    );
  }

  // Helper function to create a row for displaying details
  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

