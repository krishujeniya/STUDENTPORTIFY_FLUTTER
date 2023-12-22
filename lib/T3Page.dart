import 'package:flutter/material.dart';
import 'HomePage.dart';

class Template3Screen extends StatelessWidget {
  final UserData userData;

  const Template3Screen({Key? key, required this.userData}) : super(key: key);

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
            _buildDivider(),            _buildDivider(),
            _buildDetailRow('Birthdate', userData.birthdate),
            _buildDivider(),
            _buildDetailRow('Email', userData.email),
            _buildDivider(),
            _buildDetailRow('WhatsApp', userData.whatsapp),
            _buildDivider(),
            _buildDetailRow('LinkedIn', userData.linkedin),
            _buildDivider(),
            _buildDetailRow('Website', userData.website),
            _buildDivider(),
            _buildDetailRow('Education', userData.education),
            _buildDivider(),
            _buildDetailRow('Interests', userData.interests),
            _buildDivider(),
            _buildDetailRow('Skills', userData.skills),
            _buildDivider(),
            _buildDetailRow('Projects', userData.projects),
            _buildDivider(),
            _buildDetailRow('Internships', userData.internships),
            _buildDivider(),
            _buildDetailRow('Open to Work', userData.openToWork),
            _buildDivider(),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, [Color? color]) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label: ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color ?? Colors.orange,
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
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: Colors.white,
      thickness: 1,
    );
  }
}

