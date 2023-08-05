import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Widget Edit Text Phone Number
  Padding edtPhoneNumberWidget = const Padding(
    padding: EdgeInsets.all(20),
    child: SizedBox(
      height: 45,
      child: TextField(
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 14),
        maxLines: 17,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          labelText: "Nomor Telepon",
          hintText: "08123xxxxxx",
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black38,
            ),
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                height: 250,
                width: size.width,
                child: const Center(
                  child: Image(
                    image: AssetImage("images/login_asset.jpg"),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "Masuk",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                "Masuk menggunakan nomor telepon kamu",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            edtPhoneNumberWidget,
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff1849A9)),
                child: SizedBox(
                  width: size.width,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Divider(
              color: Colors.black54,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Belum punya akun ? ',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Center(
                      child: Text(
                        'Daftar Akun',
                        style: TextStyle(
                          color: Color(0xff1849A9),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black54,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 12,
                left: 16,
                right: 16,
              ),
              child: Center(
                child: Text(
                  "Dengan Masuk, Kamu telah menyetujui",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 14),
                    children: [
                      TextSpan(
                        text: "Syarat Ketentuan ",
                        style: const TextStyle(
                          color: Color(0xff1849A9),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            if (kDebugMode) {
                              print('Syarat Ketentuan');
                            }
                          },
                      ),
                      const TextSpan(
                        text: "& ",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      TextSpan(
                        text: "Kebijakan Privacy",
                        style: const TextStyle(
                          color: Color(0xff1849A9),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            if (kDebugMode) {
                              //to avoid when production using kDebugMode
                              print('Kebijakan privacy');
                            }
                          },
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
