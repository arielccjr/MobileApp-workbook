//import 'package:week_02_async_dart/week_02_async_dart.dart' as week_02_async_dart;
import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  final res =
      await http.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));
  final data = jsonDecode(res.body);

  print(data['message']);
}
