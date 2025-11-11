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
    return Center(
      child: Text(index == 0 ? "Form Đăng Nhập ở đây" : "Form Đăng Ký ở đây"),
    );
  }
}
