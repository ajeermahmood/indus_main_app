import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:indus_app/bindings/base_bindings.dart';
import 'package:indus_app/routes/app_routes.dart';
import 'package:indus_app/routes/getx_app_pages.dart';
import 'package:indus_app/theme/theme_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(
    prefs: prefs,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.prefs,
  });

  final SharedPreferences prefs;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool? themeModeBlack = prefs.getBool('theme_black');
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Indus Real Estate App',
      initialBinding: BaseBindings(),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.splashScreen,
      theme: IndusTheme.buildlightTheme(context),
      darkTheme: IndusTheme.builddarkTheme(context),
      themeMode: themeModeBlack != null
          ? themeModeBlack == true
              ? ThemeMode.dark
              : ThemeMode.light
          : ThemeMode.system,
    );
  }
}
