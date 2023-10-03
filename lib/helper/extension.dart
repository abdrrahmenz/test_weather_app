import 'package:flutter/material.dart';

extension SizedBoxExtension on double {
  /// Creates a [SizedBox] widget with the specified width.
  SizedBox get width => SizedBox(width: this);

  /// Creates a [SizedBox] widget with the specified height.
  SizedBox get height => SizedBox(height: this);

  /// Creates a square [SizedBox] widget with the specified size.
  SizedBox get box => SizedBox(height: this, width: this);
}
