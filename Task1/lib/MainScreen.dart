import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  bool isClicked = false;
  Color mainColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/desert_image.jpg',
                fit: BoxFit.fill,
                width: double.infinity,
                height: 215,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 30.0),
                child: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.black, size: 24),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45))),
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.white54,
                        elevation: 4,
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("2024-02-01714:13:00Z",
                                  textAlign: TextAlign.left),
                              Text(
                                  "The U.S. military plans to strike targets in Iraq and Syria, including Iranian personnel and facilities, in response to a drone attack that killed 3 U.S. troops.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text(
                                "Tucker Reals, Eleanor Watson, Alex Sundby",
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                        "U.S. officials have confirmed to CBS News that plans have been approved for a series of strikes over a number of days against targets — including Iranian personnel and facilities — inside Iraq and Sy... [+4065 chars]",
                        style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isClicked = true;
            mainColor = isClicked ? Colors.red : Colors.white;
          });
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.bookmark_add_outlined, color: mainColor),
      ),
    );
  }
}
