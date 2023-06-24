import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Image.asset(
            'assets/images/background_image.png',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 0.2 * screenWidth),
              Center(
                child: Image.asset(
                  'assets/images/man_image.png',
                  width: 0.6 * screenWidth,
                  height: 0.6 * screenWidth,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: EdgeInsets.only(right: 0.1 * screenWidth),
                    child: const FlutterLogo()
                    //  Image.asset(
                    //   'assets/logo.png',
                    //   width: 0.25 * screenWidth,
                    //   height: 0.25 * screenWidth,
                    // ),
                    ),
              ),
              SizedBox(height: 0.05 * screenWidth),
              Center(
                child: Text(
                  'Chai with Molly',
                  style: TextStyle(
                    fontSize: 0.08 * screenWidth,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(
                color: Colors.red,
                thickness: 2,
              ),
              SizedBox(height: 0.02 * screenWidth),
              Center(
                child: Text(
                  'Canada leading diversity TV channel',
                  style: TextStyle(
                      fontSize: 0.04 * screenWidth,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 0.03 * screenWidth),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: SizedBox(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Rogers 129',
                        style: TextStyle(
                            color: Color.fromARGB(255, 158, 32, 103),
                            fontWeight: FontWeight.bold),
                      ),
                      VerticalDivider(
                        color: Color.fromARGB(255, 158, 32, 103),
                        thickness: 2,
                      ),
                      Text(
                        'Bell 593',
                        style: TextStyle(
                            color: Color.fromARGB(255, 158, 32, 103),
                            fontWeight: FontWeight.bold),
                      ),
                      VerticalDivider(
                        color: Color.fromARGB(255, 158, 32, 103),
                        thickness: 2,
                      ),
                      Text(
                        'Bell five 1235',
                        style: TextStyle(
                            color: Color.fromARGB(255, 158, 32, 103),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 0.05 * screenWidth),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    child: Icon(
                      FontAwesomeIcons.youtube,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    child: Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.05 * screenWidth),
              Center(
                child: Text(
                  'www.chaiwithmolly.com',
                  style: TextStyle(
                      fontSize: 0.07 * screenWidth,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 0.05 * screenWidth),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 30.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '647 979 3220',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 0.05 * screenWidth),
                      ),
                      const VerticalDivider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                      Text(
                        'hosted @chaiwithmolly.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 0.03 * screenWidth),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 0.1 * screenWidth),
            ],
          ),
        ),
      ],
    ));
  }
}
