import 'package:travelic/items/place_items.dart';
import 'package:flutter/material.dart';
import 'package:travelic/components.dart';

class Detail extends StatelessWidget {
  final PlaceItems place;
  Detail({Key? key, required this.place});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        bottomOpacity: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: dark.withOpacity(0.2),
                    spreadRadius: 10,
                    blurRadius: 30,
                    offset: Offset(0, 15),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      image: DecorationImage(
                        image: AssetImage(place.imageCover),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF343434).withOpacity(0.4),
                            Color(0xFF343434).withOpacity(0.15),
                          ]),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month,
                                color: brown_light, size: 15),
                            SizedBox(width: 10),
                            Text(
                              place.openDays,
                              style: TextStyle(color: subtitle, fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(width: 20),
                        Row(
                          children: [
                            Icon(Icons.timer, color: brown_light, size: 15),
                            SizedBox(width: 10),
                            Text(
                              place.openTimes,
                              style: TextStyle(color: subtitle, fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(place.name,
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Poppins-SemiBold',
                        )),
                    SizedBox(height: 8),
                    Text(place.location,
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Poppins-Light',
                          color: subtitle,
                        )),
                    SizedBox(height: 30),
                    Text(
                      place.description,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Poppins-Light',
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 40),
                    Text(
                      "Gallery",
                      style: TextStyle(
                          fontSize: 17,
                          color: subtitle,
                          fontFamily: 'Poppins-Regular'),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: place.imageDetails.map((url) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: SizedBox(
                                    width: screenSize.width * 0.5,
                                    height: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(url),
                                          fit: BoxFit.cover,
                                        )),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ],
        ),
      ),
      floatingActionButton: ChangeFavoriteButton(),
    );
  }
}

class GalleryImage extends StatelessWidget {
  const GalleryImage({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: screenSize.width * 0.5,
          height: screenSize.height * 0.15,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://img.jakpost.net/c/2020/06/23/2020_06_23_98524_1592882725._large.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}

class ChangeFavoriteButton extends StatefulWidget {
  const ChangeFavoriteButton({Key? key}) : super(key: key);

  @override
  _ChangeFavoriteButtonState createState() => _ChangeFavoriteButtonState();
}

class _ChangeFavoriteButtonState extends State<ChangeFavoriteButton> {
  IconData icon = Icons.favorite_border;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          icon = Icons.favorite;
        });
      },
      backgroundColor: brown_dark,
      child: Icon(
        icon,
        color: Colors.white,
        size: 18,
      ),
    );
  }
}
