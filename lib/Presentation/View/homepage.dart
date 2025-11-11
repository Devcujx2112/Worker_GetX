import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Trang Chu"), leading: Icon(Icons.manage_accounts),),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Tìm kiếm đồ ưa thích...",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => {},
          ),
          SizedBox(height: 10),

          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text("Công việc 1"),
                  subtitle: Text("Mô tả công việc 1"),
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text("Công việc 2"),
                  subtitle: Text("Mô tả công việc 2"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}