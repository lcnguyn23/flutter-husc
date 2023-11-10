import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyInstagramLogin extends StatefulWidget {
  MyInstagramLogin({super.key});

  @override
  State<MyInstagramLogin> createState() => _MyInstagramLoginState();
}

class _MyInstagramLoginState extends State<MyInstagramLogin> {

  var username = TextEditingController();
  var password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            HexColor("#4e4376"),
            HexColor("#2b5876"),
          ]
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2 + 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "Tiếng Việt",
                          style: TextStyle(
                            color: Colors.grey,
                            fontStyle: FontStyle.normal
                          ),
                        ),
                      ),
                      Container(
                        child: Image(
                          image: AssetImage('assets/images/instLogo.png'),
                          width: 70,
                          height: 70,
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              child: TextFormField(
                                controller: username,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  hintText: "Tên người dùng, email/số di động",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18
                                  ),
                                  fillColor: HexColor("#25343Bff"),
                                  filled: true,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              child: TextFormField(
                                controller: password,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                                ),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  hintText: "Mật khẩu",
                                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                                  fillColor: HexColor("#25343Bff"),
                                  filled: true,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              width: double.infinity,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: (){
                                  var thongtin = username.text + password.text;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text("đăng nhập: ${thongtin}"))
                                  );
                                },
                                child: Text(
                                  "Đăng nhập",
                                  style: TextStyle(
                                    fontSize: 18
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print("Nhấn quên mật khẩu!");
                              },
                              child: Text(
                                "Bạn quên mật khẩu ư?",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Nhấn tạo tài khoản"))
                          );
                        },
                        child: Text(
                          "Tạo tài khoản mới",
                          style: TextStyle(
                            fontSize: 18
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          onPrimary: Colors.blueAccent,
                          shadowColor: Colors.transparent.withOpacity(0.1),
                          side: BorderSide(color: Colors.blueAccent, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
