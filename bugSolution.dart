```dart
//Solution 1: Remove default value from getter
class MyClass {
  int? _myVariable;

  int get myVariable => _myVariable ?? 0;

  set myVariable(int? value) {
    _myVariable = value;
  }
}

//Solution 2: Handle null explicitly
class MyClass2 {
  int? _myVariable;

  int get myVariable {
    if(_myVariable == null){
      throw Exception("Variable is null");
    }
      return _myVariable!;
  }

  set myVariable(int? value) {
    _myVariable = value;
  }
}

void main() {
  MyClass myObject = MyClass();
  print(myObject.myVariable); // Prints 0
  myObject.myVariable = 10;
  print(myObject.myVariable); // Prints 10
  myObject.myVariable = null; 
  print(myObject.myVariable); // Prints 0
  
  MyClass2 myObject2 = MyClass2();
  myObject2.myVariable = 10;
  print(myObject2.myVariable); // Prints 10
  myObject2.myVariable = null; 
  //print(myObject2.myVariable); // Throws Exception
}
```