import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'profile.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  String nama ;
  String jenisKelamin;
  DateTime tglLahir;
  int age = 0;
  int terkini = DateTime.now().year;


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
          leading: Icon(
            Icons.thumb_up,
            color: Colors.white,
          ),
          title: Text('MENGHITUNG BMI'),
          actions: [
            IconButton(
              icon: Icon(
                Icons.info_outline
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Tentang()
                ));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.blue[700],
                child:
                Image.asset('images/bmi_top.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),

                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              nama = txt;
                            });
                          },
                          keyboardType: TextInputType.text,
                          maxLength: 50,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              filled: true,
                              hintText: 'Nama'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            jenisKelamin = txt;
                          });
                        },
                        keyboardType: TextInputType.text,
                        maxLength: 50,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            hintText: 'Jenis Kelamin'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tglLahir = DateTime.parse(txt);
                            age = terkini - tglLahir.year;
                          });
                        },
                        keyboardType: TextInputType.text,
                        maxLength: 50,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            hintText: 'thn-bln-tgl'),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              tinggi = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              suffix: Text('cm'),
                              filled: true,
                              hintText: 'Tinggi'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              berat = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              suffix: Text('kg'),
                              filled: true,
                              hintText: 'Berat'),
                        ),
                      ),
                    ],
                  )),

              Container(
                margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BMIResult(tinggi_badan: tinggi, berat_badan: berat, nama: nama, jenisKelamin: jenisKelamin, age: age,)),
                    );
                  },
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  color: Colors.greenAccent,
                  child: Text(
                    'PROSES',
                    style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: Container(
            height: 60,
            color: Colors.black54,
            alignment: Alignment.center,
            child: Text(
              'Acuan dalam mengukur berat ideal Anda',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
      );
  }
}