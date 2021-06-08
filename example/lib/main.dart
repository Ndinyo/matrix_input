import 'package:flutter/material.dart';
import 'package:matrix_input/matrix_input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'matrix_input',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Matrix(),
    );
  }
}

class Matrix extends StatefulWidget {
  Matrix({Key? key}) : super(key: key);

  @override
  _MatrixState createState() => _MatrixState();
}

class _MatrixState extends State<Matrix> {
  //Create text controllers
  final r0c0 = TextEditingController(text: '8');
  final r0c1 = TextEditingController(text: '9');
  final r0c2 = TextEditingController(text: '10');
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //Clean up the controller when the widget is removed from the
    // widget tree.
    r0c0.dispose();
    r0c1.dispose();
    r0c2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('matrix_input'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MatrixInput(
              matrixBorderColor: Colors.red,
              textAlign: TextAlign.center,
              enabled: true,
              readOnly: false,
              width: 60,
              matrixController:
                  r0c0, //Connect the controller to a matrixController
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            MatrixInput(
              matrixBorderColor: Colors.yellow,
              textAlign: TextAlign.center,
              enabled: true,
              readOnly: false,
              width: 60,
              matrixController:
                  r0c1, //Connect the controller to a matrixController
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            MatrixInput(
              //matrixBorderColor takes default color - black
              textAlign: TextAlign.center,
              enabled: true,
              readOnly: false,
              width: 60,
              matrixController:
                  r0c2, //Connect the controller to a matrixController
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
