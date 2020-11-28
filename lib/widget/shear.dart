import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Shear extends StatefulWidget {
  @override
  _ShearState createState() => _ShearState();
}

class _ShearState extends State<Shear> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
       title: Text('تابعنا على السوشال ميديا',style: new TextStyle(
           fontWeight: FontWeight.bold,
           fontFamily: ArabicFonts.Cairo,
           package: 'google_fonts_arabic',
           fontSize: 20.0,
           color: Colors.black),
       )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: _launchURL,
              child: child('assets/m2.svg', Colors.blueAccent.shade700),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: _launchURL1,
              child: child('assets/m3.svg', Colors.amberAccent.shade700),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: _launchURL2,
              child: child1(),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: _launchURL3,
              child:child('assets/m7.svg', Colors.red.shade700),
            ),

            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }

  child1() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Image.asset('assets/m4.png'),
    );
  }

  child(String image, Color color) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      color: color,
      child: SvgPicture.asset(image),
    );
  }

  _launchURL() async {
    const url = 'https://www.facebook.com/aldanaNews1/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL1() async {
    const url = 'https://www.instagram.com/aldananews/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url = 'https://twitter.com/ALDana_News';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL3() async {
    const url = 'https://www.youtube.com/channel/UCOk6eDJPrJjIJSWI5TmkyrQ';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
