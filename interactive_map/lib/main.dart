import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
    );
  }
}
class MyHomePage extends StatefulWidget {
  // ignore: use_super_parameters
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late MapShapeSource _shapeSource;

  @override
  void initState() {
    _shapeSource = const MapShapeSource.asset(
      //'assets/australia.json',
      'assets/worldMap.json',
      shapeDataField: 'name',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Add Scaffold here
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: SfMaps(
          layers: [
            MapShapeLayer(source: _shapeSource),
          ],
        ),
      ),
    );
  }
}
