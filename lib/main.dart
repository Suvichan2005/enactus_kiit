import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import flutter_svg package
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher package

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
      backgroundColor: Colors.black, // Set the background color of the Scaffold
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset(
              'web/enactus.png', // Your logo image
              height: 40,
            ),
            const SizedBox(width: 10),
            const Text(
              'enactus KIIT-KISS',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
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
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: SvgPicture.asset(
                'web/triangle.bd4f7212.svg', // Your SVG image file path
                height: MediaQuery.of(context).size.height * 0.7,
                placeholderBuilder: (BuildContext context) => Container(
                  width: 50,
                  height: 50,
                  child: const CircularProgressIndicator(),
                ),
              ),
            ),
            Container(
              color: Colors.black, // Set the background color of the main content
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SelectableText(
                    'enactus',
                    style: TextStyle(
                      fontSize: 64,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                  ),
                  const SelectableText(
                    'KIIT-KISS',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SelectableText(
                    'Enactus is the world\'s largest experiential\n'
                    'learning platform dedicated to creating a better world\n'
                    'developing the next generation of entrepreneurial\n'
                    'leaders and social innovators...',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      height: 1.5, // Increase line height for readability
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
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
                      _buildSocialIcon(FontAwesomeIcons.facebook, 'https://www.facebook.com/kiitenactus/'),
                      _buildSocialIcon(FontAwesomeIcons.linkedin, 'https://www.linkedin.com/company/enactus-kiit'),
                      _buildSocialIcon(FontAwesomeIcons.instagram, 'https://www.instagram.com/enactus.kiit/'),
                    ],
                  ),
                  const SizedBox(height: 40),
                  // "What we believe" section
                  const SelectableText(
                    'What we believe in?',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SelectableText(
                    'Enactus is a nonprofit organization that was founded in the year 1965. It is led\n'
                    'by student teams from all the top universities in the world which creates\n'
                    'entrepreneurial projects to address social, environmental, and economic\n'
                    'issues in order to achieve the sustainable development goals in the\n'
                    'community.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      height: 1.5, // Increase line height for readability
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
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
    );
  }

  Widget _buildNavButton(String title) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.yellow.withOpacity(0.2)),
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, String url) {
    return IconButton(
      icon: FaIcon(icon, color: Colors.yellow),
      onPressed: () => _launchURL(url),
      hoverColor: Colors.yellow.withOpacity(0.2),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
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