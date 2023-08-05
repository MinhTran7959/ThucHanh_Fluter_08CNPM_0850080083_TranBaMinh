import 'package:flutter/material.dart';

void main() {
  runApp(Bai1App());
}

class Bai1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double a = 0;
  double b = 0;
  double result = 0;
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://hoang-phuc.com/thoi-trang/wp-content/uploads/2021/12/may-tinh-casio-fx-580-vnx-20.jpg',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 16.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nhập A'),
              onChanged: (value) {
                setState(() {
                  a = double.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nhập B'),
              onChanged: (value) {
                setState(() {
                  b = double.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 16.0),
            hasError
                ? Text(
              'Phép tính sai',
              style: TextStyle(color: Colors.red),
            )
                : Text('Kết Quả: $result'),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(30, 50),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      hasError = false;
                      result = a + b;
                      if (result.isNaN) {
                        hasError = true;
                        result = 0;
                      }
                    });
                  },
                  child: Text('+'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50, 50),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      hasError = false;
                      result = a - b;
                      if (result.isNaN) {
                        hasError = true;
                        result = 0;
                      }
                    });
                  },
                  child: Text('-'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50, 50),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    setState(() {
                      hasError = false;
                      result = a * b;
                      if (result.isNaN) {
                        hasError = true;
                        result = 0;
                      }
                    });
                  },
                  child: Text('*'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50, 50),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    primary: Colors.orange,
                  ),
                  onPressed: () {
                    setState(() {
                      hasError = false;
                      if (b == 0) {
                        hasError = true;
                        result = 0;
                      } else {
                        result = a / b;
                      }
                    });
                  },
                  child: Text('/'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}