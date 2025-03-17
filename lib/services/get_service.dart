import 'package:http/http.dart' as http;

import '../models/get_model.dart';

class GetServices {

  Future<List<GetModel>?> getModelList() async {
    var data = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/comments");
    var response = await data.get(uri); 
    if (response.statusCode == 200) {
      
      var json = response.body;
      return getModelFromJson(json);

    } else {
      return null;
    }
  }
}
