import 'package:flutter/material.dart';
import 'package:hng_cv/data/cvdata.dart';

class CVScreen extends StatefulWidget {
  final CVdata initialData;

  const CVScreen({super.key, required this.initialData});

  @override
  State<CVScreen> createState() => _CVScreenState();
}

class _CVScreenState extends State<CVScreen> {
  late CVdata cvData;

  @override
  void initState() {
    super.initState();
    cvData = widget.initialData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit CV',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Edit your Informations'),
            TextFormField(
              initialValue: cvData.name,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  cvData.name = value;
                });
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              initialValue: cvData.username,
              decoration: const InputDecoration(
                labelText: 'Slack Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  cvData.username = value;
                });
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              initialValue: cvData.email,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  cvData.email = value;
                });
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              initialValue: cvData.phone,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  cvData.phone = value;
                });
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              initialValue: cvData.github,
              decoration: const InputDecoration(
                labelText: 'Github handle',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  cvData.github = value;
                });
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              initialValue: cvData.bio,
              decoration: const InputDecoration(
                labelText: 'Biography',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  cvData.bio = value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save the updated data and return to the homepage.
                Navigator.of(context).pop(cvData);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
