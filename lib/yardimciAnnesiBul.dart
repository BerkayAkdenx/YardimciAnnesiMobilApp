import 'package:flutter/material.dart';
import 'package:yardimci_annesi_app/yardimciAnneler.dart';

class yardimciAnnesiBul extends StatefulWidget {
  const yardimciAnnesiBul({Key? key}) : super(key: key);

  String get title => "YARDİMCİ ANNESİ BUL";

  @override
  State<yardimciAnnesiBul> createState() => _yardimciAnnesiBulState();
}

class _yardimciAnnesiBulState extends State<yardimciAnnesiBul> {
  String dropdownValue = 'Sisli';

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    double ekranGenisligi = ekranBilgisi.size.width;
    double ekranYukseligi = ekranBilgisi.size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    top: ekranYukseligi / 3, bottom: ekranYukseligi / 100),
                child: Text("KONUM SEÇİNİZ :")),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Sisli', 'Bagcilar', 'Sariyer', 'Fatih']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => yardimciAnneler()));
              },
              child: Text("Yardimci Annesi Ara",
                  style: TextStyle(fontSize: ekranGenisligi / 25)),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  textStyle: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
