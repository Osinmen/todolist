import 'package:flutter/material.dart';
//to call this class into the other folders we use the keyword yourpreferredSize.height or yourpreferredSize.width e.g 10.height
extension SizedBoxExtensions on num {
  Widget get height => SizedBox(height: toDouble(),);
  Widget get width => SizedBox(width: toDouble(),);
}