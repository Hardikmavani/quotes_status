import 'package:flutter/material.dart';

extension SizeBoxExtensions on num {
  SizedBox get sbh => SizedBox(height: toDouble());

  SizedBox get sbw => SizedBox(width: toDouble());
}
