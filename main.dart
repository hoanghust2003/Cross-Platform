import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = 'Press me, pls!'; // Giá trị hiển thị mặc định

  void _toggleText() {
    setState(() {
      // Chuyển đổi giữa hai trạng thái văn bản
      if (displayText == 'Press me, pls!') {
        displayText = 'List Tile pressed';
      } else {
        displayText = 'Press me, pls!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My List Tile demo'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 8, // Chiều cao của hiệu ứng bóng mờ
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.3), // Màu đen mờ ở trên
                  Colors.transparent, // Màu trong suốt ở dưới
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListTile(
              tileColor: Colors.lightBlue[100], // Màu nền của ListTile
              leading: Icon(Icons.add, color: Colors.blue), // Icon ở phía trái
              title: Text(
                'GFG Title',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                ),
              ), // Tiêu đề chính
              subtitle: Text(
                  'This is subtitle',
                  style: TextStyle(color: Colors.blue),
            ), // Tiêu đề phụ
              trailing: Icon(Icons.check, color: Colors.blue), // Icon ở phía phải
              onTap: _toggleText, // Khi nhấn vào, gọi hàm _toggleText
            )
          ),
          SizedBox(height: 20), // Khoảng cách giữa ListTile và Text
          Text(
            displayText, // Hiển thị văn bản dựa trên trạng thái
            style: TextStyle(fontSize: 24), // Kích thước chữ
          ),
        ],
      ),
    );
  }
}
