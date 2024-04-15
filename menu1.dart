import 'package:flutter/material.dart';
import 'package:mobiletest/loginpage.dart';
import 'package:mobiletest/userrequest.dart';

class menu1 extends StatelessWidget {
  const menu1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 20,
            right: 120,
            child: Text(
              'User : ',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 20,
            child: IconButton(
              onPressed: () {
                // เมื่อกดปุ่ม ให้เปลี่ยนหน้าไปยังหน้าใหม่
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LOGINPAGE()),
                );
              },
              icon: Icon(Icons.exit_to_app,
                  color: Color.fromARGB(255, 0, 2, 100)),
              color: Color.fromARGB(255, 0, 0, 0),
              iconSize: 30,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('lib/image/logo.jpg'),
                ),
                SizedBox(height: 100),
                Text(
                  'Smart Analysis and Report (SAR)',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      // โค้ดที่ต้องการให้ปุ่มทำงาน
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(
                          double.infinity,
                          50)), // กำหนดความกว้างและความสูงของปุ่ม
                    ),
                    child: Text(
                      'Main page',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 2, 100),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      // เมื่อกดปุ่ม ให้เปลี่ยนหน้าไปยังหน้าใหม่
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => userrequest()),
                      );
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(
                          double.infinity,
                          50)), // กำหนดความกว้างและความสูงของปุ่ม
                    ),
                    child: Text(
                      'Create request',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 2, 100),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      // โค้ดที่ต้องการให้ปุ่มทำงาน
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(
                          double.infinity,
                          50)), // กำหนดความกว้างและความสูงของปุ่ม
                    ),
                    child: Text(
                      'Previous data',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 2, 100),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      // โค้ดที่ต้องการให้ปุ่มทำงาน
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(
                          double.infinity,
                          50)), // กำหนดความกว้างและความสูงของปุ่ม
                    ),
                    child: Text(
                      'Previous report',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 2, 100),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
