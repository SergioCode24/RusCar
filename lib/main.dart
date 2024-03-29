import 'package:flutter/material.dart';
import 'package:rus_car/components/grid_view_sample.dart';
import 'package:rus_car/model/cars.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Российские автомобили',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Российские автомобили",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black26,
        child: Expanded(
          flex: 1,
          child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: carsList.length,
              itemBuilder: (BuildContext context, index) {
                return GridViewSample(
                  img: carsList[index].pathPhoto,
                  nam: carsList[index].name,
                  qpm: carsList[index].equipment,
                  prc: carsList[index].price,
                );
              }
          ),
        ),
      ),
    );
  }
}
