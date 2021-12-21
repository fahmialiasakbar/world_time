import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    String name = await Future.delayed(Duration(seconds: 3), () {
      return 'Jake';
    });

    String age = await Future.delayed(Duration(seconds: 2), () {
      return '23';
    });

    print('$name - $age');
  }

  @override
  void initState() {
    super.initState();
    print("Sudah selesai");
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print("build function run");
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Choose a Location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: RaisedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text('counter is $counter'),
        ));
  }
}
