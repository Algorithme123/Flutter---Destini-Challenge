import 'package:destini/Histoire.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Destini());
}

class Destini extends StatelessWidget {
  const Destini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: PageHistoire(),
    );
  }
}

Histoire histoire = Histoire();

class PageHistoire extends StatefulWidget {
  const PageHistoire({Key? key}) : super(key: key);

  @override
  State<PageHistoire> createState() => _PageHistoireState();
}

class _PageHistoireState extends State<PageHistoire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/photo_2022-11-26_16-58-19.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  flex: 12,
                  child: Center(
                    child: Text(
                      histoire.getStory(),
                      style: TextStyle(
                      color: Colors.white,
                          fontSize: 25.0),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      histoire.nextStory(1);
                    });
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text(
                    histoire.getChoix1(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.4,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(flex : 2,
                  child: Visibility(
                    visible:  histoire.buttonShouldBeVisible(),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          histoire.nextStory(2);
                        });
                      },
                      style: TextButton.styleFrom(backgroundColor: Colors.blue),
                      child: Text(
                        histoire.getChoix2(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.4,
                        ),
                      ),
                    ),
                  ) )
            ],
          ),
        ),
      ),
    );
  }
}
