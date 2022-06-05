// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kellton_flutter_training/day13/twitter/tweetItems.dart';

class MyTwitterApp extends StatelessWidget {
  const MyTwitterApp({Key? key}) : super(key: key);

//   @override
//   _MyTwitterAppState createState() => _MyTwitterAppState();
// }

// class _MyTwitterAppState extends State<MyTwitterApp> {
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
              padding: EdgeInsets.all(10),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ]
          // const [Icon(FontAwesomeIcons.search)],
          ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: const Text(
      //     'Home',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   leading:
      //       const Icon(Icons.account_circle, color: Colors.grey, size: 35.0),
      // ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, position) {
          TweetItemModel tweet = TweetHelper.getTweet(position);
          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                        padding: EdgeInsets.all(8.0),
                        child:
                            // Icon(
                            //   Icons.account_circle,
                            //   size: 60.0,
                            //   color: Colors.grey,
                            //       CircleAvatar(
                            //           radius: 30,
                            //           backgroundImage:
                            //               AssetImage('/assets/images/DSC_0072.JPG')),
                            // ),
                            CircleAvatar(
                                // radius: 20.0,
                                // maxRadius: 30,
                                // AssetImage(bundle: null, name: "download1.jfif")
                                backgroundImage: AssetImage(
                          'images/IMG-20201219-WA0019.jpg',
                        )
                                // AssetBundle('images/IMG-20201219-WA0019.jpg'),

                                )),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Container(
                                      child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: tweet.username,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18.0,
                                                  color: Colors.black)),
                                          TextSpan(
                                              text: ' ' + tweet.twitterHandle,
                                              style: const TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.grey)),
                                          TextSpan(
                                              text: tweet.time,
                                              style: const TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.grey)),
                                        ]),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  flex: 5,
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 4.0),
                                    child: Icon(Icons.expand_more,
                                        color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(tweet.tweet,
                                style: const TextStyle(fontSize: 18.0)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Image.asset(tweet.imageName),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const <Widget>[
                                Icon(FontAwesomeIcons.comment,
                                    color: Colors.grey),
                                Icon(FontAwesomeIcons.retweet,
                                    color: Colors.grey),
                                Icon(FontAwesomeIcons.heart,
                                    color: Colors.grey),
                                Icon(FontAwesomeIcons.shareAlt,
                                    color: Colors.grey),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
            ],
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(FontAwesomeIcons.featherAlt),
      // ),
    );
  }
}
