// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'HomePage.dart';

class Template2Screen extends StatelessWidget {
  final UserData userData;

  // Constructor for Template1Screen with required parameter userData
  const Template2Screen({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display user name with a stylish font and larger size
          Container(
      color: Colors.orange, // Background color for the name
      padding: EdgeInsets.all(16),
      child: Text(
        userData.name,
        textAlign: TextAlign.center,	
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1.2,
          fontFamily: 'Roboto',
        ),
      ),
    ),
            SizedBox(height: 16), // Add some spacing between name and other details        
            Row(
    children: [
      Expanded(
        child:            _buildDetailRow('Birthdate', userData.birthdate),

      ),
      VerticalDivider(),
      Expanded(
        child:             _buildDetailRow('Email', userData.email),

      ),
    ],
  ),
  Row(
    children: [
      Expanded(
        child:            _buildDetailRow('WhatsApp', userData.whatsapp),

      ),
      VerticalDivider(),
      Expanded(
        child:            _buildDetailRow('LinkedIn', userData.linkedin),

      ),
    ],
  ),
  Row(
    children: [
      Expanded(
       child:             _buildDetailRow('Website', userData.website),

      ),
      VerticalDivider(),
      Expanded(
        child:             _buildDetailRow('Education', userData.education),

      ),
    ],
  ),
  Row(
    children: [
      Expanded(
        child:             _buildDetailRow('Interests', userData.interests),

      ),
      VerticalDivider(),
      Expanded(
       child:             _buildDetailRow('Skills', userData.skills),

      ),
    ],
  ),
  Row(
    children: [
      Expanded(
        child:             _buildDetailRow('Projects', userData.projects),

      ),
      VerticalDivider(),
      Expanded(
        child:             _buildDetailRow('Internships', userData.internships),

      ),
    ],
  ),
	  Row(
	    children: [
	      Expanded(
		child: _buildDetailRow(
		  'Open to Work','${userData.openToWork}',
		),
	      ),
	    ],
	  ),
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

