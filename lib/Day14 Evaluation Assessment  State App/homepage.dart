// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kellton_flutter_training/State%20App%20Evaluation%20Assessment%20Day14/displayState.dart';
import 'package:kellton_flutter_training/State%20App%20Evaluation%20Assessment%20Day14/service.dart';

class Stateui extends StatelessWidget {
  final states = State1Service().getState1s();
  Stateui({Key? key}) : super(key: key);

  // var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Know About your State',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: const [
                Padding(
                  padding: EdgeInsets.only(left: 140, top: 50),
                  child: Text(
                    'Select The State ',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 46,
                    left: 5,
                  ),
                  child: Icon(
                    FontAwesomeIcons.locationArrow,
                    color: Colors.lightBlue,
                  ),
                )
              ]),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 70),
                    child: GestureDetector(
                      child: Image.network(
                        'https://cdn.iconscout.com/icon/free/png-256/delhi-139357.png',
                        height: 150,
                        width: 150,
                      ),
                      onTap: () {
                        var delhi = states[0];
                        Navigator.pushNamed(context, StateDetails.routeName,
                            arguments: delhi);
                      },
                    ),
                  ),
                  // ListTile(
                  //   title: Text('Delhi'),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 70),
                    child: GestureDetector(
                      child: Image.network(
                        'https://cdn4.iconfinder.com/data/icons/landmarks-set1/1024/Gateway_Of_India_Mumbai-512.png',
                        height: 100,
                        width: 100,
                      ),
                      onTap: () {
                        var maharashtra = states[1];
                        Navigator.pushNamed(context, StateDetails.routeName,
                            arguments: maharashtra);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 70),
                    child: GestureDetector(
                      child: Image.network(
                        'https://cdn.iconscout.com/icon/free/png-256/chennai-1-119692.png',
                        height: 130,
                        width: 130,
                      ),
                      onTap: () {
                        var tamil = states[2];
                        Navigator.pushNamed(context, StateDetails.routeName,
                            arguments: tamil);
                      },
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 75),
                        child: Text(
                          'Delhi',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80),
                        child: Text(
                          'Maharashtra',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Tamil Nadu',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 70),
                        child: GestureDetector(
                          child: Image.network(
                            'https://cdn2.iconfinder.com/data/icons/landmarks-22/100/golden-temple-landmarks-national-symbol-architecture-india-punjab-amritsar-golden-temple-512.png',
                            height: 120,
                            width: 150,
                          ),
                          onTap: () {
                            var punjab = states[3];
                            Navigator.pushNamed(context, StateDetails.routeName,
                                arguments: punjab);
                          },
                        ),
                      ),
                      // ListTile(
                      //   title: Text('Delhi'),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 70),
                        child: GestureDetector(
                          child: Image.network(
                            'https://cdn.iconscout.com/icon/premium/png-256-thumb/hyderabad-112414.png',
                            height: 100,
                            width: 100,
                          ),
                          onTap: () {
                            var telangana = states[4];
                            Navigator.pushNamed(context, StateDetails.routeName,
                                arguments: telangana);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 70),
                        child: GestureDetector(
                          child: Image.network(
                            'https://static.thenounproject.com/png/2165511-200.png',
                            height: 130,
                            width: 130,
                          ),
                          onTap: () {
                            var karnataka = states[5];
                            Navigator.pushNamed(context, StateDetails.routeName,
                                arguments: karnataka);
                          },
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 75),
                            child: Text(
                              'Punjab',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 80),
                            child: Text(
                              'Telangana',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 55),
                            child: Text(
                              'Karnataka',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
