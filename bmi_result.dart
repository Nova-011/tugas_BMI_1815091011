import 'package:flutter/material.dart';
import 'dart:math';


class BMIResult extends StatelessWidget {

  BMIResult({@required this.tinggi_badan, @required this.berat_badan, @required this.nama, @required this.jenisKelamin, @required this.age});
  final int tinggi_badan;
  final int berat_badan;
  final String nama;
  final String jenisKelamin;
  final int age;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan/pow(tinggi_badan/100,2);
    String cBMI;
    if (bmi>=28) cBMI="Obesitas";
    else if (bmi>=23) cBMI="Kegendutan";
    else if (bmi>=17.5) cBMI="Normal";
    else cBMI="Kurus";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL'),
        backgroundColor: Colors.greenAccent,
      ),
      backgroundColor: Colors.amber,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
           Container(
             width: double.infinity,
             color: Colors.blueGrey,
             child: Column(
               children: <Widget>[
                 Padding(padding: EdgeInsets.symmetric(vertical: 15),),
                 Text(
                     nama,
                     style: TextStyle(
                         fontSize: 30, height: 1.7, color: Colors.white)
                 ),
                 Text(
                     jenisKelamin,
                     style: TextStyle(
                         fontSize: 30, height: 1.7, color: Colors.white)
                 ),
                 Text(
                     age.toString(),
                     style: TextStyle(
                         fontSize: 30, height: 1.7, color: Colors.white)
                 ),
                 SizedBox(
                   height: 40,
                 ),
               ],
             ),
           ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),

          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(

          color: Colors.black54,
          child: Text('KEMBALI',
            style: TextStyle(
                fontSize: 30
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

    );
  }
}
