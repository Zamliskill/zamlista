import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:zamlista/constants.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:  SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/map1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Overlay with low opacity
              Container(
                color: Colors.black.withOpacity(0.8), // Adjust opacity here (0.0 to 1.0)
                width: double.infinity,
                height: double.infinity,
              ),

            Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Hi, Welcome!", style: TextStyle(fontSize: 26,
                      color: kPrimaryLightColor,
                    fontWeight: FontWeight.bold
                  ),),
                  const Text("What's the emergency?", style: TextStyle(fontSize: 26,
                      color: kPrimaryLightColor,
                  fontWeight: FontWeight.bold,
                  ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: defaultPadding * 2.5),
                    child: SwipeButton.expand(
                      thumb: const Icon(
                        Icons.double_arrow_rounded,
                        color: kPrimaryLightColor,
                      ),
                      activeThumbColor: kPrimaryColor,
                      activeTrackColor: kSecondaryColor,
                      onSwipe: () {
                        // Navigate to another page immediately when swiped
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => AnotherPage()));
                      },
                      child: const Padding(
                        padding:  EdgeInsets.only(left: 30),
                        child: Text(
                          "Swipe Right to Report an Accident",
                          style: kTextStyle,
                        ),
                      ),
                    ),
                  ),

                 const Padding(
                    padding:  EdgeInsets.only(top: 20, left:6),
                    child: Text("Our Services", style: TextStyle(color: kPrimaryLightColor, fontWeight: FontWeight.bold)),
                  ),

                  //tow truck
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Container(
                      height: 110, // Set the desired height
                      width: 330, // Set the desired width
                      child: Card(
                        color: kCardColor,
                        elevation: 8, // Shadow elevation
                        shadowColor: Colors.purple, // Shadow color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 8),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Tow Vehicle", style: kHeadingStyle
                              ),
                                  SizedBox(height: 5,),
                                  Text("Experiencing a vehicle", style: kTextStyle,),
                                  Text("breakdown? A tow truck", style: kTextStyle,),
                                  Text("will be on the way to you!", style: kTextStyle,),
                              ],
                        ),
                              Image(image: AssetImage("assets/images/truck_tow.png"),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // tyres and fuel
                  Padding(
                padding: const EdgeInsets.only(top: defaultPadding),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //tyres
                     Container(
                      height: 200, // Set the desired height
                      width: 160, // Set the desired width
                      child: Card(
                        color: kCardColor,
                        elevation: 5, // Shadow elevation
                        shadowColor: Colors.purple, // Shadow color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: defaultPadding,
                              vertical: 8,),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tyre',
                                    style: kHeadingStyle
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Tyre Problem?',
                                    style: kTextStyle,
                                  ),
                                  Text(
                                    'No fret',
                                    style: kTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: Image(
                                  image: AssetImage('assets/images/tyre.png', ),
                              ),
                              height: 100,
                            ),
                          ],
                        ),
                      ),


                    ),

                    //fuel
                    Container(
                      height: 200, // Set the desired height
                      width: 160, // Set the desired width
                      child: Card(
                        color: kCardColor,
                        elevation: 5, // Shadow elevation
                        shadowColor: Colors.purple, // Shadow color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: defaultPadding,
                                vertical: 8,),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fuel',
                                    style: kHeadingStyle
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Out of fuel?',
                                    style: kTextStyle,
                                  ),
                                  Text(
                                    'Stranded?',
                                    style: kTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: Image(
                                image: AssetImage('assets/images/fuel.png', ),
                              ),
                              height: 90,
                            ),
                          ],
                        ),
                      ),


                    ),
                  ],
                ),
              ),

                  //Battery & Lockout
                  Padding(
                    padding: const EdgeInsets.only(top: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // battery
                        Container(
                          height: 200, // Set the desired height
                          width: 160, // Set the desired width
                          child: Card(
                            color: kCardColor,
                            elevation: 5, // Shadow elevation
                            shadowColor: Colors.purple, // Shadow color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: defaultPadding,
                                    vertical: 8,),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Battery',
                                        style: kHeadingStyle
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Onsite',
                                        style: kTextStyle,
                                      ),
                                      Text(
                                        'replacement',
                                        style: kTextStyle,
                                      ),
                                      Text(
                                        'service',
                                        style: kTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  child: Image(
                                    image: AssetImage('assets/images/battery.png', ),
                                  ),
                                  height: 100,
                                ),
                              ],
                            ),
                          ),


                        ),

                        //Lockout
                        Container(
                          height: 200, // Set the desired height
                          width: 160, // Set the desired width
                          child: Card(
                            color: kCardColor,
                            elevation: 5, // Shadow elevation
                            shadowColor: Colors.purple, // Shadow color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: defaultPadding,
                                    vertical: 8,),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Lockout',
                                        style: kHeadingStyle
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Locksmith at',
                                        style: kTextStyle,
                                      ),
                                      Text(
                                        'your service',
                                        style: kTextStyle,
                                      ),

                                      Text(
                                        '24/7',
                                        style: kTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  child: Image(
                                    image: AssetImage('assets/images/lock.png', ),
                                  ),
                                  height: 80,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(top: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // battery
                        Container(
                          height: 200, // Set the desired height
                          width: 160, // Set the desired width
                          child: Card(
                            color: kCardColor,
                            elevation: 5, // Shadow elevation
                            shadowColor: Colors.purple, // Shadow color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: defaultPadding,
                                    vertical: 8,),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Battery',
                                        style: kHeadingStyle
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Onsite',
                                        style: kTextStyle,
                                      ),
                                      Text(
                                        'replacement',
                                        style: kTextStyle,
                                      ),
                                      Text(
                                        'service',
                                        style: kTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  child: Image(
                                    image: AssetImage('assets/images/battery.png', ),
                                  ),
                                  height: 100,
                                ),
                              ],
                            ),
                          ),


                        ),

                        //Lockout
                        Container(
                          height: 200, // Set the desired height
                          width: 160, // Set the desired width
                          child: Card(
                            color: kCardColor,
                            elevation: 5, // Shadow elevation
                            shadowColor: Colors.purple, // Shadow color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: defaultPadding,
                                    vertical: 8,),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Lockout',
                                        style: kHeadingStyle
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Locksmith at',
                                        style: kTextStyle,
                                      ),
                                      Text(
                                        'your service',
                                        style: kTextStyle,
                                      ),

                                      Text(
                                        '24/7',
                                        style: kTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  child: Image(
                                    image: AssetImage('assets/images/lock.png', ),
                                  ),
                                  height: 80,
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
          ),

          ],
          ),

      ),


    );
  }
}



class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Another Page"),
      ),
      body: Center(
        child: Text("This is another page!"),
      ),
    );
  }
}
