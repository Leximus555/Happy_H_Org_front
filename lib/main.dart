import 'package:flutter/material.dart';
import 'package:organization_app1/features/profile/profile_page.dart';
import 'package:organization_app1/features/models/test_class.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Happy Holidays",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color?>(Colors.grey[600]),
                animationDuration: const Duration(milliseconds: 300),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    // Change your radius here
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
          // Color.fromRGBO(174, 131, 248, 1.0)
          primarySwatch: Colors.blueGrey,
          dividerTheme: const DividerThemeData(
            color: Colors.black45,
            thickness: 3,
          ),
          scaffoldBackgroundColor: Colors.blueGrey[800],
          iconTheme: const IconThemeData(color: Colors.white),
          appBarTheme: const AppBarTheme(
            // backgroundColor:
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300)),
          textTheme: const TextTheme(
            // TODO: Увеличить?
              labelLarge: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
              labelSmall: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
              bodyMedium: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
              bodySmall: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ))),
      // home: HomePage()
      routes: {
        // "/homepage" :(context) => const HomePage(),
        "/": (context) => TestClass().profilePage,
        "/pending": (context) => TestClass().pend,
        //"/organization": (context) => TestClass().orgPage,
        //"/profile": (context) => TestClass().profilePage,
        "/profile/history": (context) => TestClass().histP,
        // "/basket": (context) => TestClass().bakP,
      },
      // initialRoute: "/homepage",
    );
  }
}
