

import 'package:flutter/material.dart';
String reading;
// ignore: must_be_immutable

class CurrentReading extends StatefulWidget {


  CurrentReading(String _reading){
    reading=_reading;
    print(_reading);
  }
  @override
  State<StatefulWidget> createState() => _CurrentReading(reading);
  }
  class _CurrentReading extends State<CurrentReading>{
  _CurrentReading(String reading){
    print(reading);
  }




  @override
  Widget build(BuildContext context) {


    return  Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Current Speed',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( bottom: 10),
              child: Text(reading,
                  style: TextStyle(
                      fontFamily: 'Digital',
                      fontSize: 150,
                      color: Colors.green)),
            ),
            Padding(
              padding: const EdgeInsets.only( bottom: 60),
              child: Text( 'Kmh',
              style: TextStyle(fontWeight: FontWeight.w900)
              ),
            )
          ],
        ),
      );
  }
  }


