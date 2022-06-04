import 'package:cofredesenha/src/message.view.dart';
import 'package:cofredesenha/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: DefaultColors.secondaryColor,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light
    ));

    Intl.defaultLocale = 'pt_BR';
    initializeDateFormatting('pt_BR');
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MessageView(),
      
    );
  }
}
