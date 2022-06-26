import "package:flutter/material.dart";
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stv_calender2/view/calender_screen.dart';
void main() {

  // final database =MyDatabase();
  runApp(
      const ProviderScope(
          child:MyApp()
      )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Intl.defaultLocale="ja_JP";
    // 初期化のためのメソッドを追加
    // initializeDateFormatting('ja');
    //
    return  MaterialApp(

      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja'),
      ],
      locale: const Locale("ja"),
      home: CalenderScreen(),
    );
  }
}