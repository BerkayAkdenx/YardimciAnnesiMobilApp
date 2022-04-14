import 'package:flutter/material.dart';

class yardimciAnneler extends StatefulWidget {
  const yardimciAnneler({Key? key}) : super(key: key);

  @override
  State<yardimciAnneler> createState() => _yardimciAnnelerState();
}

class _yardimciAnnelerState extends State<yardimciAnneler> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.arrow_drop_down_circle),
                title: const Text('AYŞE AKYOL'),
                subtitle: Text(
                  'YEMEK/ÜTÜ/ÇAMAŞIR/TEMİZLİK',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Merhaba 52 yaşında 1 polis ve 1 avukat annesi olma guruyla ev hanımıyım uzun yıllara dayanan tecrübelerimle herzaman yardıma etmeye hazırım.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      AlertDialog(
                          title: Text("Yardimci Annesinin No: "),
                          content: Text("+90506979745"));
                    },
                    child: const Text('Whatsapp Numarası'),
                  ),
                ],
              ),
              Image.asset('resimler/hande.jpg'),
              ListTile(
                leading: Icon(Icons.arrow_drop_down_circle),
                title: const Text('AYŞE AKYOL'),
                subtitle: Text(
                  'YEMEK/ÜTÜ/ÇAMAŞIR/TEMİZLİK',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Merhaba 52 yaşında 1 polis ve 1 avukat annesi olma guruyla ev hanımıyım uzun yıllara dayanan tecrübelerimle herzaman yardıma etmeye hazırım.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      AlertDialog(
                          title: Text("Yardimci Annesinin No: "),
                          content: Text("+90506979745"));
                    },
                    child: const Text('Whatsapp Numarası'),
                  ),
                ],
              ),
              Image.asset('resimler/karin.jpg'),
              ListTile(
                leading: Icon(Icons.arrow_drop_down_circle),
                title: const Text('AYŞE AKYOL'),
                subtitle: Text(
                  'YEMEK/ÜTÜ/ÇAMAŞIR/TEMİZLİK',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Merhaba 52 yaşında 1 polis ve 1 avukat annesi olma guruyla ev hanımıyım uzun yıllara dayanan tecrübelerimle herzaman yardıma etmeye hazırım.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      AlertDialog(
                          title: Text("Yardimci Annesinin No: "),
                          content: Text("+90506979745"));
                    },
                    child: const Text('Whatsapp Numarası'),
                  ),
                ],
              ),
              Image.asset('resimler/asuman.jpg'),
            ],
          ),
        ),
      ],
    );
  }
}
