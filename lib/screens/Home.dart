import 'package:flutter/material.dart';
import 'package:travelic/components.dart';
import 'package:travelic/items/place_items.dart';
import 'package:travelic/screens/Detail.dart';
import 'package:travelic/screens/Favorite.dart';
import 'package:travelic/screens/Profile.dart';

class Home extends StatelessWidget {
  Home({Key? key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        bottomOpacity: 0.0,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Rizha",
                style: TextStyle(
                  color: subtitle,
                  fontSize: 15,
                  fontFamily: 'Poppins-Regular',
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Where do you \nwant to go?",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 104, 104, 104),
                  fontFamily: 'Poppins-SemiBold',
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: dark_white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: dark.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "Search...",
                    hintStyle: TextStyle(fontFamily: 'Poppins-Light'),
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryBox(
                        category: "Recommended",
                        background: brown_light,
                        color: Colors.white),
                    SizedBox(width: 8),
                    CategoryBox(
                        category: "Most visited",
                        background: dark_white,
                        color: Colors.grey),
                    SizedBox(width: 8),
                    CategoryBox(
                        category: "For Healing",
                        background: dark_white,
                        color: Colors.grey),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 410,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(width: 20);
                        },
                        itemBuilder: (context, index) {
                          final PlaceItems place = placeItemsList[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Detail(place: place);
                              }));
                            },
                            child: SizedBox(
                              width: screenSize.width * 0.6,
                              height: 410,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(place.imageCover),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xFF343434)
                                                  .withOpacity(0.4),
                                              Color(0xFF343434)
                                                  .withOpacity(0.15),
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 20),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 42,
                                              width: 42,
                                              decoration: BoxDecoration(
                                                  color: dark_white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return Favorite();
                                                  }));
                                                },
                                                child: Icon(
                                                  Icons.favorite_border,
                                                  color: brown_dark,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Column(
                                              children: [
                                                Text(
                                                  place.name,
                                                  style: TextStyle(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins-Light',
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  place.location,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins-Light',
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: placeItemsList.length,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  final String category;
  final Color background;
  final Color color;
  CategoryBox(
      {Key? key,
      required this.category,
      required this.background,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Text(
        category,
        style: TextStyle(
          fontSize: 13,
          color: color,
          fontFamily: 'Poppins-Light',
        ),
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
