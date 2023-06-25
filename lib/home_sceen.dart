import 'package:chai_with_molly/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Image.asset(
            'assets/images/tv.png',
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
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/womenn.png',
                  width: 0.9 * screenWidth,
                  height: 0.9 * screenWidth,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: EdgeInsets.only(right: 0.1 * screenWidth),
                    child: const FlutterLogo()
                  
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
              //SizedBox(height: 0.02 * screenWidth),
              Center(
                child: Text(
                  'Canada leading diversity TV channel',
                  style: TextStyle(
                      fontSize: 0.04 * screenWidth,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 0.03 * screenWidth),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.05 * screenWidth),
                child: const SizedBox(
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
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap : () {
                      context.read<AppProvider>().launchURL('https://www.youtube.com/watch?v=agKc6s5Fc0Y');
                    },
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.black,
                      child: Icon(
                        FontAwesomeIcons.youtube,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
context.read<AppProvider>().launchURL('https://www.facebook.com/iharis.akhtar.965/');
                    },
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.black,
                      child: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
context.read<AppProvider>().launchURL('https://instagram.com/_.theycallmeromeo._?igshid=ZDc4ODBmNjlmNQ==');
                    },
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.black,
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      context.read<AppProvider>().launchURL('https://wa.me/qr/O3A3ZUOTQ46WE1');
                    },
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.black,
                      child: Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                        size: 30,
                      ),
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
