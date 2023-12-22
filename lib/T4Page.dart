import 'package:flutter/material.dart';
import 'HomePage.dart';

class Template4Screen extends StatelessWidget {
  final UserData userData;

  const Template4Screen({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display user name on the left side with a stylish font and larger size
            Container(
              width: 200, // Set a fixed width for the name container
                margin: EdgeInsets.only(top: 100), // Add margin at the top to move the name down

              color: Colors.orange, // Background color for the name
              padding: EdgeInsets.all(16),
              child: Text(
                userData.name,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            SizedBox(width: 20), // Add some spacing between name and other details        
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailRow('Birthdate', userData.birthdate),
                  _buildDetailRow('Email', userData.email),
                  _buildDetailRow('WhatsApp', userData.whatsapp),
                  _buildDetailRow('LinkedIn', userData.linkedin),
                  _buildDetailRow('Website', userData.website),
                  _buildDetailRow('Education', userData.education),
                  _buildDetailRow('Interests', userData.interests),
                  _buildDetailRow('Skills', userData.skills),
                  _buildDetailRow('Projects', userData.projects),
                  _buildDetailRow('Internships', userData.internships),
                  _buildDetailRow('Open to Work', '${userData.openToWork}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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

