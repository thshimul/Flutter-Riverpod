import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import '../model/dataModel.dart';

class ApiServices{
  String endpoint = 'https://fakestoreapi.com/products';
  Future<List<DataModel>> getProducts() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200){
      final List result = jsonDecode(response.body);
      return result.map(((e) => DataModel.fromJson(e))).toList();
    }else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final userProvider= Provider<ApiServices>((ref)=>ApiServices());