import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {





  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[

            SizedBox(
                width: width/4,
                child: Image.asset("images/icon.png")
            ),

             SizedBox(
              width: (5*width)/6,
              child:const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
            ),

            SizedBox(
              width: (5*width)/6,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  //scrollPadding: EdgeInsets.only(bottom:40),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
            ),

            ElevatedButton(
              child: Text('Login!'),
              onPressed: () {
                print('Hello');
              },
            ),

            TextButton(

              onPressed: () {
                print('help me');
              },
              child: const Text(
                'help', //title
                textAlign: TextAlign.end, //aligment
              ),
            ),







          ],
        ),
      ),
    );
  }
}
