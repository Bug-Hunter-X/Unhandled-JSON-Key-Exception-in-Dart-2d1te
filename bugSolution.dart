```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      if (jsonData.containsKey('someKey')) {
        print(jsonData['someKey']);
      } else {
        print('Key "someKey" not found in JSON data');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```