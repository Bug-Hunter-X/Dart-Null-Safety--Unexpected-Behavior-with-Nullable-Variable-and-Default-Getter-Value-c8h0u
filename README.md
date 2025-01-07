# Dart Null Safety Issue: Unexpected Behavior with Nullable Variable and Default Getter Value

This repository demonstrates a subtle issue related to null safety in Dart when using nullable variables with getter methods that provide default values.

## Problem Description
The `bug.dart` file contains a class `MyClass` with a nullable integer variable `_myVariable`. The getter `myVariable` returns 0 if `_myVariable` is null, providing a default value.  The issue arises when setting `myVariable` to null.  Although the value is set to null, the getter masks this, always returning 0.

## Solution
The `bugSolution.dart` file shows two possible solutions:
1.  Using a different approach to providing a default value. For example, the getter does not provide a default. 
2. Providing more robust error handling for the case where myVariable is null.  

This example highlights the importance of careful consideration when dealing with nullable variables and default values in getters to avoid unexpected behavior and potential bugs.