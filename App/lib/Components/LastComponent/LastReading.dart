import 'dart:async';


import 'package:flutter/material.dart';
double reading;
// ignore: must_be_immutable

class LastReading extends StatefulWidget {


  LastReading(double _reading){
    reading=_reading;
    print(_reading);
  }
  @override
  State<StatefulWidget> createState() => _LastReading(reading);
}
class _LastReading extends State<LastReading>{
  _LastReading(double reading){
    print(reading);
  }

  int _start = 0;
  void startTimer(){ _start = 0;
    const oneSec=const Duration(seconds: 1);
     new Timer.periodic(oneSec, (Timer timer) { setState(() {
      if(_start <=0  ){timer.cancel();}
      if(reading ==10 || reading >30  ){timer.cancel();}
      else {
        _start=_start+1;
      }
    });});
  }


  @override
  Widget build(BuildContext context) {

    if (reading < 30.00 || reading ==30.00){
      startTimer();
    }

    return  Center(

      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'From 30 to 10',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2, bottom: 10),
            child: Text('$_start',
                style: TextStyle(
                    fontFamily: 'Digital',
                    fontSize: 100,
                    color: Colors.green)),
          ),
          Text( 'Seconds',
              style: TextStyle(fontWeight: FontWeight.w400)
          )

        ],
      ),
    );
  }
}


