import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCinema extends StatelessWidget {
  MyCinema({super.key});

  final urlImages = [
    'assets/images/bluebettle.jpg',
    'assets/images/missmarvel.jpg',
    'assets/images/thenun.jpg',
    'assets/images/venice.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.purple,
              ],
            ),
          ),
        ),
        //leading: Icon(Icons.home),
        title: Center(
          child: Text(
            "My Cinema",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff784cc6), Color(0xff293474)],
            stops: [0, 0.5],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 380,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/bluebettle.jpg'),
                            fit: BoxFit.contain,
                            width: 200,
                            height: 300,
                          ),
                          SizedBox(
                            width: 200,
                            child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Blue Beetle',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '2023',
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/missmarvel.jpg'),
                            fit: BoxFit.contain,
                            width: 200,
                            height: 300,
                          ),
                          SizedBox(
                            width: 200,
                            child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Captain Marvel 2',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '2023',
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/thenun.jpg'),
                            fit: BoxFit.contain,
                            width: 200,
                            height: 300,
                          ),
                          SizedBox(
                            width: 200,
                            child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'The Nun 2',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '2023',
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/venice.jpg'),
                            fit: BoxFit.contain,
                            width: 200,
                            height: 300,
                          ),
                          SizedBox(
                            width: 200,
                            child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'A Hounting in Venice',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '2023',
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 380,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 600),
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  viewportFraction: 0.8,
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex){
                  final urlImage = urlImages[index];
                  
                  return buildImage(urlImage, index);
                },
              ),


            ],
          ),
        ),
      ),
    );

  }
  Widget buildImage(String urlImage, int index) =>
    Container(
      margin: EdgeInsets.all(12),
      width: double.infinity,
      color: Colors.grey,
      child: Image(
        image: AssetImage(urlImage),
        fit: BoxFit.cover,
      )
    );

}
