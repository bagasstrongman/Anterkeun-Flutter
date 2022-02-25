import 'package:flutter/material.dart';
import 'package:flutter_antarkeun_app/main_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Container(
              child: Image(
                image: AssetImage("assets/Logo.png"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Send anything fast, leading to destination, real time monitoring, first compensation guarantee and peace of mind",
                style: TextStyle(
                    fontFamily: "RubikRegular",
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            ButtonTheme(
                minWidth: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.14,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MainPage();
                    }));
                  },
                  color: Colors.green.shade600,
                  elevation: 10,
                  //highlightElevation: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
