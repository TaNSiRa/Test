import 'package:flutter/material.dart';
import 'package:mobiletest/loginpage.dart';
import 'package:mobiletest/menu1.dart';

class userrequest extends StatelessWidget {
  const userrequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 20,
            child: IconButton(
              onPressed: () {
                // เมื่อกดปุ่ม ให้เปลี่ยนหน้าไปยังหน้าใหม่
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => menu1()),
                );
              },
              icon: Icon(Icons.home, color: Color.fromARGB(255, 0, 2, 100)),
              color: Color.fromARGB(255, 0, 0, 0),
              iconSize: 30,
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
              icon: Icon(Icons.exit_to_app, color: Color.fromARGB(255, 0, 2, 100)),
              color: Color.fromARGB(255, 0, 0, 0),
              iconSize: 30,
            ),
          ),
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
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  'User request wait approval',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: screenHeight * 0.6, // กำหนดความสูงของ DataTable
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: [
                        DataColumn(
                          label: Container(
                            width: 50,
                            child: Center(
                              child: Text(
                                'Customer',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Container(
                            width: 50,
                            child: Center(
                              child: Text(
                                'Req.date',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Container(
                            width: 50,
                            child: Center(
                              child: Text(
                                'Samp.date',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Container(
                            width: 50,
                            child: Center(
                              child: Text(
                                'Action',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                      ],
                      rows: List<DataRow>.generate(
                        8, // จำนวนแถว
                        (index) => DataRow(
                          cells: [
                            DataCell(
                              Center(
                                child: Wrap(
                                  children: [
                                    Text(
                                      'Data ${index * 4 + 1}',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            DataCell(
                              Center(
                                child: Wrap(
                                  children: [
                                    Text(
                                      'Data ${index * 4 + 2}',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            DataCell(
                              Center(
                                child: Wrap(
                                  children: [
                                    Text(
                                      'Data ${index * 4 + 3}',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            DataCell(
                              Center(
                                child: Wrap(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        _showRemarkDialog(context,
                                            'Approve'); // เรียกใช้งาน _showRemarkDialog พร้อมส่งค่า 'ถูก' เพื่อระบุว่าเป็นไอคอน "ถูก"
                                      },
                                      icon: Icon(Icons.check),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        _showRemarkDialog(context,
                                            'Reject'); // เรียกใช้งาน _showRemarkDialog พร้อมส่งค่า 'ผิด' เพื่อระบุว่าเป็นไอคอน "ผิด"
                                      },
                                      icon: Icon(Icons.clear),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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

  void _showRemarkDialog(BuildContext context, String status) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Remark ($status)"),
          content: TextField(
            decoration: InputDecoration(hintText: "Enter your remark"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Do something with the remark
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
