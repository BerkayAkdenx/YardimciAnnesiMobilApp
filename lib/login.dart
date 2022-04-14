import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  String get title => "Giriş Sayfası ";

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  get nameController => null;

  get passwordController => null;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                "resimler/login.jpg",
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Giriş Yap',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kullanıcı Adı',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Sifre',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                AlertDialog(title: Text("E postanızı kontrol edin"));
              },
              child: const Text(
                'Sifremi unuttum',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Giriş'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
