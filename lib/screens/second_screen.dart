import 'package:flutter/material.dart';
import 'package:tutorial_11/screens/home_page.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Second Screen'),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), onPressed: () {
            Navigator.pop(context,MyHomePage(title: '',));
            //methana api navigate una page eke idan aye kalin idapu page ekata yanna nm apita Navigator kiyana class ekema thiyena pop kiyana method eka use karanna puluwan

        },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(''
                  'Second Screen',
                style: TextStyle(fontSize: 20),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
