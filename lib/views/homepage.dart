import 'package:flutter/material.dart';
import 'package:hng_cv/data/cvdata.dart';
import 'package:hng_cv/views/cvscreen.dart';

class HomePage extends StatefulWidget {
  final CVdata cvData;
  const HomePage({super.key, required this.cvData});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CVdata cvData;

  @override
  void initState() {
    super.initState();
    cvData = widget.cvData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My CV',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/slack.jpeg"),
                radius: 50.0,
              ),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Name: ${cvData.name}'),
                Text('Slack Name: ${cvData.username}'),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Phone: ${cvData.phone}'),
                Text('Github: ${cvData.github}'),
              ],
            ),
            const SizedBox(
              height: 3.0,
            ),
            const Divider(height: 6.0),
            const SizedBox(
              height: 5.0,
            ),
            Text('Bio: ${cvData.bio}'),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // Navigate to CV editing screen and update data.
                  final updatedData = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CVScreen(initialData: cvData),
                    ),
                  );

                  if (updatedData != null) {
                    setState(() {
                      cvData = updatedData;
                    });
                  }
                },
                child: const Text('Edit Details'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
