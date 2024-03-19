import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../constants/sizes.dart';

class TAppBarTheme{
  TAppBarTheme._();

  static const LightAppBarTheme = AppBarTheme(
  elevation: 0,
  centerTitle: false,
  scrolledUnderElevation: 0,
  backgroundColor: Colors.transparent,
  surfaceTintColor: Colors.transparent,
  iconTheme: IconThemeData(color: TColors.black, size: TSizes.iconMd),
  actionsIconTheme: IconThemeData(color: TColors.black, size: TSizes.iconMd),
  titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: TColors.black),
  ); // AppBarTheme
  static const darkAppBarTheme= AppBarTheme(
  elevation: 0,
  centerTitle: false,
  scrolledUnderElevation: 0,
  backgroundColor: Colors.transparent,
  surfaceTintColor: Colors.transparent,
  iconTheme: IconThemeData(color: TColors.black, size: TSizes.iconMd),
  actionsIconTheme: IconThemeData(color: TColors.black, size: TSizes.iconMd),
  titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: TColors.black),
  );

  }