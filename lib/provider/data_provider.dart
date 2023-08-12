

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/dataModel.dart';
import '../service/api_service.dart';
final userDataProvider = FutureProvider<List<DataModel>>((ref) async {
  return ref.watch(userProvider).getProducts();
});