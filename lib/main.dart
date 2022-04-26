import 'package:flutter/material.dart';
import 'speechscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/speechtotext' : (context)=>SpeechScreen(),
      },
      title: 'Flutter Voice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Vad-Anuvaad',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(40.0),
              child: SizedBox(
                width: 125,
                height: 60,
                child: TextButton(
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder:(context)=> firstscreen(),
                    // ),);
                    Navigator.pushNamed(context, '/speechtotext');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                  ),
                  child: Text(
                      'Speech-To-Text',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 40),
              child: SizedBox(
                width: 125,
                height: 60,
                child: TextButton(
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder:(context)=> firstscreen(),
                    // ),);
                    Navigator.pushNamed(context, '/speechtotext');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                  ),
                  child: Text(
                      'Text-To-Sign',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}