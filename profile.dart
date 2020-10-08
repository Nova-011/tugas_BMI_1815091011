import 'package:flutter/material.dart';

class Tentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile Saya'),
          centerTitle: true,
          actions: [
            Icon(Icons.settings),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10))
          ],
          backgroundColor: Colors.greenAccent,
        ),
        body: Container(
          color: Colors.black54,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 26),
          child: Column(
            children: <Widget>[
              Container(
                  width: 175,
                  height: 175,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://scontent.fdps5-1.fna.fbcdn.net/v/t1.0-9/52896787_1155114597983348_829544448999292928_o.jpg?_nc_cat=111&_nc_sid=09cbfe&_nc_eui2=AeFkZj9t_hN4-cwelq0zyAxuDfA0MvKOANsN8DQy8o4A21KmqWH4kMJRL1xzLTbjqI6EEIGYzgkMHQne1ssVZ7S4&_nc_ohc=2kbC4IVsq1YAX9yRKZ6&_nc_ht=scontent.fdps5-1.fna&oh=725332faaecf91652f173d25aa07ebfd&oe=5F9C234C'),
                      )
                  )
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Text('Kadek Nova Wardana',
                  style: TextStyle(
                      fontSize: 20, height: 1.7, color: Colors.white)),
              Text('Mahasiswa',
                  style: TextStyle(
                      fontSize: 20, height:1.7, color: Colors.white)),
              Text('Hindu',
                  style: TextStyle(
                      fontSize: 20, height:1.7, color: Colors.white)),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email, size: 45, color: Colors.white,)
            ],
          ),
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
