import 'package:flutter/material.dart';
import 'package:tutorial_11/screens/second_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Center(child: Text(widget.title)),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Flutter navigation',style: TextStyle(fontSize: 20),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //methana apita widget ekak pawichchi karanna wenawa Navigator.of kiyala eken api ilaga page aka load karaganna ona nisa push kiyala widget ekak danwa itaapasse warahan athule api danna ona Material page rout kiyana widget eka.eka athule builder method ekak danna ona.eka athule thamai return karanne ilagata load wena page eka. c
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_){
                return SecondScreen();

              }
          ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
