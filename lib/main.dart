import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/app.dart';
import 'package:shopping_app/model/app_state_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(
    ChangeNotifierProvider<AppStateModel>(
      create: (_) => AppStateModel()..loadProducts(),
      child: CupertinoStoreApp(),
    ),
  );
}
