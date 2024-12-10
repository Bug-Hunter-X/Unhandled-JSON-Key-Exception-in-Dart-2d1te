```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON data here
      final jsonData = jsonDecode(response.body);
      print(jsonData['someKey']); // Potential error: 'someKey' might not exist
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); // This catches exceptions from http.get and jsonDecode
  }
}
```