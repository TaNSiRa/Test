import 'package:flutter/material.dart';
import 'package:mobiletest/menu1.dart';

class LOGINPAGE extends StatelessWidget {
  const LOGINPAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Username : ',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password : ',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // เมื่อกดปุ่ม ให้เปลี่ยนหน้าไปยังหน้าใหม่
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => menu1()),
                    );
                  },
                  child: Text('Sign in'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
