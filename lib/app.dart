import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/route.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.buildRoutes,
      initialRoute: "/",
      title: "Cupertino Store",
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('vi'),
      ],
    );
  }
}

