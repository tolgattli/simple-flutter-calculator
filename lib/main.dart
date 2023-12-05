// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Çatı widgetimiz!!
      title: "Hesap Makinesi",
      home: Iskele(), //  Scaffold widgetimiz
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: const AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  dynamic sayi1, sayi2, sonuc;

  TextEditingController t1 = TextEditingController(
      text: "0"); // textfield içindeki metinleri okuyabilecek!
  TextEditingController t2 = TextEditingController(text: "0");

  void sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    }); // state güncellendiğinde ekran yenilensin diye bunu kullanırız.
  }

  void sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    }); // state güncellendiğinde ekran yenilensin diye bunu kullanırız.
  }

  void sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    }); // state güncellendiğinde ekran yenilensin diye bunu kullanırız.
  }

  void sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    }); // state güncellendiğinde ekran yenilensin diye bunu kullanırız.
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(controller: t1),
            TextField(
              controller: t2,
            ),
            ElevatedButton(
              onPressed: sayiTopla,
              child: Text("Topla"),
            ),
            ElevatedButton(
              onPressed: sayiCikar,
              child: Text("Çıkar"),
            ),
            ElevatedButton(
              onPressed: sayiCarp,
              child: Text("Çarp"),
            ),
            ElevatedButton(
              onPressed: sayiBol,
              child: Text("Böl"),
            ),
          ],
        ),
      ),
    );
  }
}
