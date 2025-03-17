import 'package:flutter/material.dart';
import 'package:flutter_api/models/get_model.dart';
import 'package:flutter_api/services/get_service.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<GetModel> models = [];

  getComments() {
    GetServices().getModelList().then((value) {
      setState(() {
        models = value!;
      });
    });
  }

  @override
  void initState() {
    getComments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: const Text("Now menssage"),
        elevation: 1,
        shadowColor: Colors.black,
      ),

      body: 
      ListView.builder(
        shrinkWrap: true,
        itemCount: models.length,
        itemBuilder: (context, index) {
          final dataApiData = models[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.lightBlue[70],
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
            child: Row( 
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.lightBlueAccent,
                  radius: 12,
                  child: Text(
                    dataApiData.id.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.175,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dataApiData.name.toString(),
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),

                      Text(
                        dataApiData.email.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(dataApiData.body.toString()),
                    ],
                  ),
                ),
              ],
            ),
            ),
          );
        },
      ),
    );
  }
}
