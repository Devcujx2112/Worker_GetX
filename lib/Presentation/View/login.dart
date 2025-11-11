import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 2 tab
      child: Scaffold(
        appBar: AppBar(
          title: Text("Đăng Nhập / Đăng Ký"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Đăng Nhập"),
              Tab(text: "Đăng Ký"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tabLogin(0),
            tabLogin(1),
          ],
        ),
      ),
    );
  }

  Widget tabLogin(int index) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Mật Khẩu",
            border: OutlineInputBorder(),
          ),
          obscureText: true,
        ),

        index == 1 ? TextField(
          decoration: InputDecoration(
            hintText: "Họ tên đầy đủ",
            border: OutlineInputBorder(),
          ),
          obscureText: true,
        ) : Container(),

        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
          },
          child: Text(index == 0 ? "Đăng Nhập" : "Đăng Ký"),
        ),
      ],
    );
  }
}
