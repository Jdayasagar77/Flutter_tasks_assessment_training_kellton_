//Code From Abhishek
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Twitter extends StatelessWidget {
  const Twitter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // ignore: deprecated_member_use
            leading: const Icon(FontAwesomeIcons.userFriends),
            title: const Center(
              child: Icon(FontAwesomeIcons.twitter),
            ),
            // ignore: deprecated_member_use
            actions: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 20),
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ]
            // const [Icon(FontAwesomeIcons.search)],
            ),
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                'https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg',
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Text(
                            'J Dayasagar',
                            style: GoogleFonts.lateef(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            // style: TextStyle(
                            //   fontFamily:  GoogleFonts.lateef(),
                            //    fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(top: 35, left: 10),
                            child: Text(
                              '@dj77',
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.w600),
                            )),
                        const Padding(
                            padding: EdgeInsets.only(top: 35, left: 100),
                            child: Text(
                              '10s',
                              style: TextStyle(
                                  fontSize: 10.0, fontWeight: FontWeight.w400),
                            )),
                      ],
                    ),
                    // Row(
                    //   children: const [Text('home')],
                    // ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35, top: 0),
                          child: Card(
                            child: Image.network(
                              'https://image.shutterstock.com/image-vector/night-time-full-moon-view-260nw-1460493929.jpg',
                            ),
                          ),
                        ),
                        Row(
                          // textBaseline: TextBaseline.alphabetic,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 60),
                              child: Icon(
                                FontAwesomeIcons.share,
                                size: 15,
                              ),
                            ),
                            Text(
                              ' 150.9k',
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Icon(FontAwesomeIcons.retweet),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Icon(FontAwesomeIcons.heart),
                            ),
                            Text(
                              ' 200K',
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Icon(FontAwesomeIcons.forward),
                            )
                          ],
                        )
                      ],
                    ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                'https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg',
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'Abhishekk',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 18, left: 5),
                            child: Text(
                              '@noname',
                              style: TextStyle(
                                  fontSize: 9.0, fontWeight: FontWeight.w600),
                            )),
                        Padding(
                            padding: EdgeInsets.only(top: 19, left: 160),
                            child: Text(
                              '10s',
                              style: TextStyle(
                                  fontSize: 9.0, fontWeight: FontWeight.w100),
                            )),
                      ],
                    ),
                    //     Column(
                    //       children: const [Text('come home')],
                    //     )
                    //   ],
                    //  ),
                  ]),

              // Padding(
              //   padding: const EdgeInsets.only(left: 90, top: 0),
            )
          ],
        )
//         bottomNavigationBar: BottomNavigationBar(items: [
// BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home))

//         ]),
        );
  }
}
