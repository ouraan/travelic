import 'package:flutter/material.dart';
import 'package:travelic/components.dart';
import 'package:travelic/screens/Profile.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Favorite",
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
            child: InkWell(
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Expanded(
            child: Column(
              children: [
                FavoriteCard(
                  title: "Flora Wisata San Terra",
                  location: "Jurangrejo, Pandesari, Pujon, Malang",
                  image: "assets/images/san-terra.jpg",
                ),
                SizedBox(height: 20),
                FavoriteCard(
                  title: "Taman Langit Gunung Banyak",
                  location:
                      "Jl. Gn. Banyak, Gunungsari, Kec. Bumiaji, Kota Batu",
                  image: "assets/images/taman-langit.jpg",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FavoriteCard extends StatelessWidget {
  final String title;
  final String location;
  final String image;
  const FavoriteCard(
      {Key? key,
      required this.title,
      required this.location,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
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
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 15, fontFamily: 'Poppins-Light'),
                      ),
                      SizedBox(height: 6),
                      Text(location,
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins-Light',
                              color: subtitle)),
                    ],
                  ),
                  Icon(
                    Icons.favorite,
                    color: brown_dark,
                    size: 22,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
