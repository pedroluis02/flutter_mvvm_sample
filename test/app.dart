import 'package:flutter/material.dart';
import 'package:flutter_mvvm_sample/app.dart';
import 'package:flutter_riverpod/src/consumer.dart';

class MyApplicationTest extends MyApplication {
  final Widget home;

  const MyApplicationTest({required this.home, super.key})
      : super(title: 'My App Test');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: title,
      home: home,
    );
  }
}
