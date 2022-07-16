import 'package:flutter/material.dart';

class PaddingConstants{
  static PaddingConstants instance =PaddingConstants._init();
  PaddingConstants._init();

  final VLP = EdgeInsets.all(4.0);
  final VeryLowPad = EdgeInsets.all(8.0);
  final LowPad = EdgeInsets.all(12.0);
  final RegularPad = EdgeInsets.all(16.0);

  final VeryLowMediumPad = EdgeInsets.all(18.0);
  final LowMediumPad = EdgeInsets.all(24.0);
  final MediumPad = EdgeInsets.all(28.0);
  final BigMediumPad = EdgeInsets.all(32.0);

  final VeryLowBigPad = EdgeInsets.all(36.0);
  final LowBigPad = EdgeInsets.all(42.0);
  final BigPad = EdgeInsets.all(48.0);
  final VeryBigPad = EdgeInsets.all(64.0);

}

class BorderRadiusConstants{
  static BorderRadiusConstants instance = BorderRadiusConstants._init();
  BorderRadiusConstants._init();

  final VeryLowBorder = BorderRadius.circular(3);
  final LowBorder = BorderRadius.circular(5);
  final RegularBorder = BorderRadius.circular(8);

  final VeryLowMediumBorder = BorderRadius.circular(12);
  final LowMediumBorder = BorderRadius.circular(16);
  final MediumBorder = BorderRadius.circular(18);
  final BigMediumBorder = BorderRadius.circular(22);

  final VeryLowBigBorder = BorderRadius.circular(24);
  final LowBigBorder = BorderRadius.circular(36);
  final BigBorder = BorderRadius.circular(48);
  final VeryBigBorder = BorderRadius.circular(360);

}

