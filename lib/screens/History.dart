import 'package:flutter/material.dart';
import 'package:travelic/components.dart';
import 'package:travelic/screens/Profile.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("History",
            style:
                TextStyle(color: brown_dark, fontFamily: 'Poppins-SemiBold')),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: dark_white,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Profile();
                }));
              },
              child: Icon(
                Icons.person,
                color: brown_dark,
                size: 18,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              HistoryCard(
                screenSize: screenSize,
                title: "Batu Night Spectacular",
                location:
                    "Jl. Hayam Wuruk No.1, Oro-Oro \nOmbo, Kec. Batu, Kota Batu",
                image: "assets/images/bns.jpg",
              ),
              SizedBox(height: 20),
              HistoryCard(
                screenSize: screenSize,
                title: "Taman Langit Gunung Banyak",
                location:
                    "Jl. Gn. Banyak, Gunungsari, \nKec. Bumiaji, Kota Batu",
                image: "assets/images/taman-langit.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final String title;
  final String location;
  final String image;

  const HistoryCard({
    Key? key,
    required this.title,
    required this.location,
    required this.image,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: dark.withOpacity(0.05),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 4),
            ),
          ]),
      child: Row(
        children: [
          SizedBox(
            width: screenSize.width * 0.25,
            height: screenSize.height * 0.1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(width: 17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 15, fontFamily: 'Poppins-Light'),
              ),
              SizedBox(height: 6),
              Text(location,
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Poppins-Light',
                      color: subtitle)),
            ],
          )
        ],
      ),
    );
  }
}
