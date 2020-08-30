import 'package:flutter/material.dart';

List<int> withoutCascade() {
  final list = [5, 1, 4, 3, 2];
  //sort list
  list.sort();
  // remove last element
  list.removeLast();
  return list;
}

List<int> withCascade() {
  final list = [5, 1, 4, 3, 2];
  return list
    ..sort()
    ..removeLast();
}

class CascadeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
