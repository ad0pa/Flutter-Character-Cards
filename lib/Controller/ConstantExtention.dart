import 'package:flutter/material.dart';

extension ContextExtension on BuildContext{

  double dynwidth (double val) => MediaQuery.of(this).size.width*val;
  double dynmheight (double val) => MediaQuery.of(this).size.height*val;



}
