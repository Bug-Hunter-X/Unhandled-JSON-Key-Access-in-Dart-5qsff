# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart when handling JSON responses: attempting to access a key that might not exist in the JSON data.  The `bug.dart` file contains the erroneous code, while `bugSolution.dart` provides a corrected version.

The error occurs when the code assumes the existence of a key ('nonExistentKey') in the JSON response without checking for its presence. If this key is missing, the `jsonDecode` method will throw an exception and the application might crash.

The solution involves checking for the key's existence before accessing its value using methods like `containsKey()` or using the ?? operator for null-safe access.