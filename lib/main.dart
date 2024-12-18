import 'package:cology/pages/login.dart';
import 'package:cology/pages/singin.dart';
import 'package:cology/rout_manager.dart';
import 'package:cology/themes/Custom_Themes/CustomStyle/button/primary_button.dart';
import 'package:cology/themes/customtheme.dart';
import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
          initialRoute: MyHomePage.routeName,
          onGenerateRoute: RoutManager.GenerateRoute,
          locale: const Locale('ar', ''),
          supportedLocales: const [
            Locale('en', ''),
            Locale('ar', ''),
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale?.languageCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
          debugShowCheckedModeBanner: false,
          title: 'Cology',
          theme: CTheme.lightTheme,
          home: const Directionality(
            textDirection: TextDirection.rtl,
            child: MyHomePage(),
          )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const String routeName = "homePage";
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      backgroundColor: primary,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  //backgroundColor: Colors.transparent,
                  radius: screenWidth * 0.3,
                  child: Image.asset(
                    "assets/logo.png",
                    width: screenWidth * 0.5,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Login.routeName);
                      },
                      style: CustomButton.buttonStyleWithbackgroundColor(
                          screenWidth),
                      child: Text(
                        "تسجيل الدخول",
                        style: CTheme.lightTheme.textTheme.headlineMedium,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Singin.routeName);
                      },
                      style: CustomButton.secondaryButtonStyle(screenWidth),
                      child: Text(
                        "انشاء حساب",
                        style: CTheme.lightTheme.textTheme.headlineMedium!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
