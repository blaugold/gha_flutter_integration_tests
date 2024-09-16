import 'dart:ffi';

import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('smoke 1', (tester) async {});
  testWidgets('smoke 2', (tester) async {
    await Future.delayed(const Duration(seconds: 10));
    abort();
  });
}

final process = DynamicLibrary.process();
final abort = process.lookupFunction<Void Function(), void Function()>("abort");
