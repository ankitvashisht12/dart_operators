import 'package:flutter/material.dart';

void withoutCoalescing() {
  //  by default all variables are assigned null value
  String myValue;

  String fallback = 'fallback';

  String result;

  if (myValue == null)
    result = fallback;
  else
    result = myValue;

  print(result);
}

void withCoalescing() {
  // Using null coalescing operator
  String myValue;

  String fallbackValue = 'fallback';

  String result = myValue ?? fallbackValue;

  print(result);
}

void assignment() {
  // Only the uninitialised variable value is assiged using
  // null-aware assignment operator

  String uninitialisedVariable;
  String initialisedVariable = "something";

  uninitialisedVariable ??= "new_value";
  initialisedVariable ??= "new_something"; // this is not initialised

  print(uninitialisedVariable);
  print(initialisedVariable);
}

void access() {
  // null-safe access operator :

  String uninitialisedVariable;

  // this will throw error as value is null
  print(uninitialisedVariable.toLowerCase());

  // now using '?' will not give error
  // this will print out null
  print(uninitialisedVariable?.toLowerCase());

  // We can also use null safe operator with already initialised variable
}

void spread() {
  // using null aware spread operator
  List<int> list1;
  final list2 = [2, 4, 5];

  // this will throw error as list1 is null
  final result = [...list1, ...list2];

  // using null-aware spread operator
  // here is collection is null then it will be skipped
  // so result2 conatains only list2
  final result2 = [...?list1, ...list2];

  print(result);
  print(result2);
}

class NullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
