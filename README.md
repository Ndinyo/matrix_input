# matrix_input

A package that leverages on the power of flutter widgets to display data in matrix form.

# Getting Started

Instead of hard coding the widgets to represent matrices, let this package make life bearable for you!

# Features

Use this package in your flutter app to:

* Place data i.e. numbers in matrix form.
* Perform arithmetic operations.
* Build puzzles which requires numbers displayed in matrix form.
* Teach i.e. perfect squares.

# Setup

Import it in your project:

```dart: 
import 'package:matrix_input/matrix_input.dart';
```

Most importantly, bundle it in either a row or column.

Note: the "matrixController" is required. Just like a normal TextEditingController.

Thus, declare your TextEditingController textEditingController; i.e TextEditingController r0c0;
Implying Row0Column0 e.t.c

Make sure to initialize it in the init() section. Refer to example folder.

# Usage Examples

- 1x3 Matrix

![pic1](https://user-images.githubusercontent.com/19472506/120332238-382b3b00-c2f7-11eb-84db-ea2063fc5b29.png)

- Sample code

```dart:
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
```

- 4x4 Matrix

![pic2](https://user-images.githubusercontent.com/19472506/120332263-3d888580-c2f7-11eb-8348-37d4877d8d85.png)


- 5x5 Matrix

![pic3](https://user-images.githubusercontent.com/19472506/120332276-40837600-c2f7-11eb-8caa-729db20dc26e.png)

