import 'package:cylinder_kini/core/config/quran_color.dart';
import 'package:cylinder_kini/core/static/font_family.dart';
import 'package:flutter/material.dart';

class CylinderTheme {
  CylinderTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: FontFamily.inter,
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(
        color: CylinderColor.primaryColorLight.withOpacity(0.3),
        width: 2,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.5)),
    ),
    bannerTheme:
        const MaterialBannerThemeData(backgroundColor: Color(0xffDBDBDB)),
    dialogTheme: const DialogTheme(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xffDEDEDE)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff17B686)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff17B686)),
      ),
      focusColor: CylinderColor.primaryColorLight,
      labelStyle: TextStyle(color: Color(0xff17B686)),
      hoverColor: Color(0xff17B686),
      fillColor: Colors.white,
    ),
    dividerTheme: DividerThemeData(
      color: const Color(0xff614730).withOpacity(0.9),
      thickness: 1,
      space: 0,
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(
        CylinderColor.primaryColorLight.withOpacity(0.3),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: CylinderColor.primaryColorLight,
      selectionColor: const Color(0xff17B686).withOpacity(0.5),
      selectionHandleColor: const Color(0xff17B686),
    ),
    disabledColor: const Color(0xff7F909F),
    dividerColor: const Color(0xffDEDEDE),
    primaryColorLight: Colors.black,
    secondaryHeaderColor: const Color(0xff17B686),
    //   iconButtonTheme: IconButtonThemeData(
    //     style: ButtonStyle(
    //  iconColor: MaterialStateProperty<>
    //     ),
    //   ),
    buttonTheme: const ButtonThemeData(
      buttonColor: CylinderColor.textColorLight,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        // backgroundColor: Colors.red,
        ),
    cardColor: CylinderColor.cardColorLight,
    iconTheme: const IconThemeData(color: CylinderColor.textColorLight),
    primaryColor: CylinderColor.primaryColorLight,
    scaffoldBackgroundColor: CylinderColor.scaffoldBachgroundColorLight,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      modalBackgroundColor: Color(0xFFF3F3F3),
    ),
    scrollbarTheme: const ScrollbarThemeData(),
    appBarTheme: const AppBarTheme(
      shadowColor: Colors.white,
      backgroundColor: CylinderColor.secondaryColorLight,
      foregroundColor: Color(0xff477848),
      elevation: 0,
      scrolledUnderElevation: 0,

      // color: Color(0xff17B686),
      iconTheme: IconThemeData(color: CylinderColor.textColorLight),
    ),
    textTheme: const TextTheme(
        displayLarge: TextStyle(color: CylinderColor.primaryColorLight),
        displayMedium: TextStyle(color: Color(0xFF3B3B3B)),
        titleMedium: TextStyle(
          fontFamily: FontFamily.inter,
          fontWeight: FontWeight.bold,
          color: CylinderColor.textColorLight,
        ),
        bodyMedium: TextStyle(
          color: CylinderColor.textColorLight,
          fontFamily: FontFamily.inter,
        ),
        labelSmall: TextStyle(color: Colors.white)),
    colorScheme: const ColorScheme(
      scrim: CylinderColor.primaryColorLight, //set for setting page title color
      background: Color(0xFFF3F3F3),
      brightness: Brightness.light,
      error: Color(0xFFB00020),
      onBackground: Color(0xFF000000),
      onError: Color(0xFFFFFFFF),
      onPrimary: Color(0xFFFFFFFF),
      onSecondary: Color(0xFF000000),
      errorContainer: Color(0xFFFCF3F3),
      onSurface: Color(0xFF000000),
      primary: CylinderColor.primaryColorLight,
      secondary: CylinderColor.secondaryColorLight,
      //surface: set for check box color dark and light,
      surface: CylinderColor.primaryColorLight,
      inverseSurface: CylinderColor.scaffoldBachgroundColorLight,
    ).copyWith(error: const Color(0xffF95B53)),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: FontFamily.inter,
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(
        color: CylinderColor.textColorDark.withOpacity(0.3),
        width: 2,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.5)),
    ),
    bannerTheme:
        const MaterialBannerThemeData(backgroundColor: Color(0xff7F909F)),
    dialogTheme: const DialogTheme(
      backgroundColor: Color(0xff122337),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        //backgroundColor: Colors.red,
        ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(
          CylinderColor.textColorDark.withOpacity(0.5)),
      overlayColor: MaterialStateProperty.all(const Color(0xff17B686)),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: Color(0xff7F909F)),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF585868)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff17B686)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff17B686)),
      ),
      focusColor: CylinderColor.textColorDark,
      labelStyle: TextStyle(color: Color(0xff17B686)),
      hoverColor: Color(0xff17B686),
      fillColor: Color(0xff223449),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: CylinderColor.textColorDark,
      selectionColor: const Color(0xff17B686).withOpacity(0.5),
      selectionHandleColor: const Color(0xff17B686),
    ),
    disabledColor: const Color(0xff7F909F),
    secondaryHeaderColor: const Color(0xff17B686),
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.amber),
    cardColor: CylinderColor.cardColorDark,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color(0xff122337),
      modalBackgroundColor: Color(0xff223449),
    ),
    appBarTheme: const AppBarTheme(
      shadowColor: Colors.black,
      backgroundColor: CylinderColor.secondaryColorDark,
      foregroundColor: Color(0xff477848),
      elevation: 0,
      iconTheme: IconThemeData(color: CylinderColor.textColorDark),
      scrolledUnderElevation: 0,
    ),
    primaryColor: CylinderColor.primaryColorDark,
    scaffoldBackgroundColor: CylinderColor.scaffoldBachgroundColorDark,
    primaryColorDark: const Color(0xff122337),
    dividerColor: const Color(0xFF585868),
    iconTheme: const IconThemeData(color: Color(0xff7F909F)),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(
          color: CylinderColor.textColorDark,
          fontFamily: FontFamily.inter,
        ),
        displayLarge: TextStyle(color: CylinderColor.textColorDark),
        displayMedium: TextStyle(color: Colors.white),
        displaySmall: TextStyle(color: Colors.white),
        headlineMedium: TextStyle(color: Colors.white),
        headlineSmall: TextStyle(color: Colors.white),
        titleLarge: TextStyle(color: Colors.white),
        titleMedium: TextStyle(
          fontFamily: FontFamily.inter,
          fontWeight: FontWeight.bold,
          color: CylinderColor.textColorDark,
        ),
        titleSmall: TextStyle(color: Colors.white),
        labelLarge: TextStyle(color: Colors.white),
        bodySmall: TextStyle(color: Colors.white),
        labelSmall: TextStyle(color: CylinderColor.textColorLight)),
    colorScheme: const ColorScheme.dark(
      scrim: CylinderColor.textColorDark, //set for setting page title color
      primary: CylinderColor.textColorDark,
      secondary: CylinderColor.secondaryColorDark,
      //surface: set for check box color dark and light,
      surface: CylinderColor.textColorDark,
      inverseSurface: CylinderColor.scaffoldBachgroundColorDark,
    ).copyWith(background: const Color(0xff122337)),
  );
}

// Future<SystemUiOverlayStyle?> getSystemUiOverlayStyle({
//   bool? isDark,
//   BuildContext? context,
// }) async {
//   final SystemUiOverlayStyle? uiOverlayStyle =
//       await catchAndReturnFuture(() async {
//     final ThemeData theme = Theme.of(context ?? CylinderKini.globalContext);
//     final Color statusBarColor = isDark == null
//         ? theme.primaryColor
//         : (isDark ? const Color(0x00ffffff) : const Color(0x00ffffff));
//     final Color systemNavigationBarColor = isDark == null
//         ? theme.cardColor
//         : (isDark ? const Color(0xff161C23) : const Color(0xffffffff));
//     return SystemUiOverlayStyle(
//       statusBarColor: statusBarColor,
//       statusBarIconBrightness: Brightness.light,
//       systemNavigationBarColor: systemNavigationBarColor,
//       systemNavigationBarIconBrightness: Brightness.dark,
//     );
//   });
//   return uiOverlayStyle;
// }
