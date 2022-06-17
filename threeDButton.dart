import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ThreeDButton extends StatefulWidget {
  const ThreeDButton({ Key? key }) : super(key: key);

  @override
  _ThreeDButtonState createState() => _ThreeDButtonState();
}

class _ThreeDButtonState extends State<ThreeDButton> {

  // Photos from google
  bool isFavourite = false;
  void changeFavourite(bool isFavourite){
    setState(() {
      this.isFavourite = isFavourite;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
  SizedBox(
    height: 350,
    child: WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl:
          'https://sketchfab.com/3d-models/headphones-ef7799bcdba043238c4deef9d2832730',
      backgroundColor: Colors.white,
    ),
  ),
  SizedBox(
    height: 20,
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Container(
      height: 15,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(18)),
      child: Text(
        "IN STOCK",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.white,
            fontSize: 12),
      ),
    ),
  ),
  SizedBox(
    height: 10,
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Phantom II",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color(0xffEDF3FF),
                      borderRadius: BorderRadius.circular(25)),
                ),
                Positioned(
                    top: 13,
                    left: 13,
                    child: GestureDetector(
                      onTap: () {
                        changeFavourite(!isFavourite);
                      },
                      child: Icon(
                        Icons.favorite,
                        color: isFavourite == false ? Colors.grey : Colors.red,
                      ),
                    ))
              ],
            )
          ],
        ),
      ],
    ),
  ),
  SizedBox(
    height: 10,
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure ",
      style: TextStyle(fontWeight: FontWeight.w300),
      textAlign: TextAlign.justify,
    ),
  ),
  SizedBox(
    height: 20,
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(
                  0,
                  0,
                ),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.radio,
              size: 30,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(
                  0,
                  0,
                ),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.bluetooth,
              size: 30,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(
                  0,
                  0,
                ),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.cable,
              size: 30,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(
                  0,
                  0,
                ),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.dehaze,
              size: 30,
            ),
          ),
        ),
      ],
    ),
  ),
  SizedBox(
    height: 10,
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "AirPlay 2",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        ),
        Text("BlueTooth",
            style:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
        Text("Optical Cable",
            style:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
        Text("Deezer C",
            style:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
      ],
    ),
  ),
  SizedBox(
    height: 20,
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Row(
      children: [
        Container(
          height : 50,
          width: 150,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xff222D4A),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
              child: Text("Add To Cart")),
        ),
            SizedBox(width: 30,),
        Column(
          children: [
            Text(
              "\$1,400",
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w300),
            ),
            Text("Free delivery")
          ],
        )
      ],
    ),
  )
          ],
        );
        },
      ),
    );
  }
}