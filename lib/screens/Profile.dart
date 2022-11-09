import 'package:flutter/material.dart';
import 'package:travelic/components.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Profile",
            style:
                TextStyle(color: brown_dark, fontFamily: 'Poppins-SemiBold')),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/rizha.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: 50),
              ProfileBox(
                icon: Icons.person_outline,
                text: "Rizha Alfianita",
              ),
              SizedBox(height: 20),
              ProfileBox(
                icon: Icons.email_outlined,
                text: "rizhaalfianita1412@gmail.com",
              ),
              SizedBox(height: 20),
              ProfileBox(
                icon: Icons.lock_outline,
                text: "*******",
              ),
              SizedBox(height: 20),
              ProfileBox(
                icon: Icons.phone,
                text: "082334118991",
              ),
              SizedBox(height: 20),
              ProfileBox(
                icon: Icons.location_city_outlined,
                text: "Malang, Jawa Timur",
              ),
              SizedBox(height: 20),
              ProfileBox(
                icon: Icons.location_pin,
                text: "Indonesia",
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileBox extends StatelessWidget {
  final String text;
  final IconData icon;
  const ProfileBox({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: dark_white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(icon, color: brown_dark),
          SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins-Light',
              color: subtitle,
            ),
          ),
        ],
      ),
    );
  }
}
