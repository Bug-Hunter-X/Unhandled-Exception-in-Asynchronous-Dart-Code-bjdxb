```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    if (true) {
      throw Exception('Network request failed');
    }
    // Process data here
  } on TimeoutException catch (e) {
    // Handle timeout exceptions
    print('Timeout occurred: $e');
  } on Exception catch (e) {
    // Handle other exceptions
    print('An error occurred: $e');
  } catch (e, s) {
    // Handle unexpected errors
    print('An unexpected error occurred: $e');
    print('Stack trace: $s');
  } finally {
    print('Operation finished'); // This will always run
  }
}

void main() async {
  await fetchData();
}
```