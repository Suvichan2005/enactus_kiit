import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enactus KIIT-KISS',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset(
              'assets/enactus.png', // Your logo image
              height: 40,
            ),
            const Spacer(),
            _buildNavButton("Home"),
            _buildNavButton("About Us"),
            _buildNavButton("Our Work"),
            _buildNavButton("Our Team"),
            _buildNavButton("Contact"),
          ],
        ),
      ),
      body: SingleChildScrollView(
  child: Container(
    decoration: BoxDecoration(
      color: Colors.black, // Set the background color to black
    ),
    child: Column(
      children: [
        // Right-side graphic elements
        Positioned(
          right: 0,
          child: Image.asset(
            'assets/graphic_vectors.png', // Your graphic vector image
            height: MediaQuery.of(context).size.height * 0.7,
          ),
        ),
        // Main content
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'enactus',
                style: TextStyle(
                  fontSize: 64,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'KIIT-KISS',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Enactus is the world\'s largest experiential\n'
                'learning platform dedicated to creating a better world\n'
                'developing the next generation of entrepreneurial\n'
                'leaders and social innovators...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.5, // Increase line height for readability
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text('Read More'),
              ),
              const SizedBox(height: 40),
              // Social Media Icons using FontAwesome
              Row(
                children: [
                  _buildSocialIcon(FontAwesomeIcons.facebook),
                  _buildSocialIcon(FontAwesomeIcons.linkedin),
                  _buildSocialIcon(FontAwesomeIcons.instagram),
                ],
              ),
              const SizedBox(height: 40),
              // "What we believe" section
              const Text(
                'What we believe',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Enactus is a nonprofit organization that was founded in the year 1965. It is led\n'
                'by student teams from all the top universities in the world which creates\n'
                'entrepreneurial projects to address social, environmental, and economic\n'
                'issues in order to achieve the sustainable development goals in the\n'
                'community.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.5, // Increase line height for readability
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildBeliefIcon(FontAwesomeIcons.handshake, 'Integrity'),
                  _buildBeliefIcon(FontAwesomeIcons.lightbulb, 'Innovation'),
                  _buildBeliefIcon(FontAwesomeIcons.users, 'Collaboration'),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    ),
  ),
),
);

  }

  Widget _buildNavButton(String title) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.yellow.withOpacity(0.2)),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return IconButton(
      icon: FaIcon(icon, color: Colors.yellow),
      onPressed: () {},
      hoverColor: Colors.yellow.withOpacity(0.2),
    );
  }

  Widget _buildBeliefIcon(IconData icon, String label) {
    return Column(
      children: [
        FaIcon(icon, color: Colors.yellow, size: 40),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}
