
import 'package:flutter/material.dart';
import 'package:synfusion/barcode_scanner.dart';
import 'package:synfusion/calender.dart';
import 'package:synfusion/chart.dart';
import 'package:synfusion/demo.dart';
import 'package:synfusion/pdf.dart';
import 'package:synfusion/qr_code_genetr.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SynfusionDemo(),
    );
  }
}

class SynfusionDemo extends StatelessWidget {
  const SynfusionDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Synfusion Demo'),
        ),
        body: ListView(
          children: [
            DemoItems(
              listTitle: 'Barcode generator',
              demoRoute: BarcodeScanner(),
            ),
            DemoItems(
              listTitle: 'QRcode generator',
              demoRoute: QRcodeGenerator(),
            ),
            DemoItems(
              listTitle: 'Calender',
              demoRoute: Calendar(),
            ),
            DemoItems(
              listTitle: 'PDF viewer',
              demoRoute: PDFViewer(),
            ),
            DemoItems(
              listTitle: 'Chart',
              demoRoute: ChartDemo(),
            ),
          ],
        ));
  }
}