```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Safe way to access the key
      final value = jsonData['nonExistentKey'] ?? 'Key not found';
      print(value);
      //Alternative using containsKey()
if(jsonData.containsKey('anotherKey')){
  final anotherValue = jsonData['anotherKey'];
  print(anotherValue);
}
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```