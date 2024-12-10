# Unhandled JSON Key Exception in Dart

This repository demonstrates a common error in Dart applications involving handling JSON data:  failure to check for the existence of keys before accessing them.

The `bug.dart` file shows the problematic code.  The `bugSolution.dart` file presents a corrected version.

## Problem

The original code attempts to access the `'someKey'` element from JSON data received from a remote server without verifying its existence.  If the response from the server omits this key, a runtime exception occurs.

## Solution

The solution involves adding a check to ensure that `'someKey'` exists before accessing its value.  This prevents the runtime exception and improves the robustness of the application.