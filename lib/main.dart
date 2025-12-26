import 'package:flutter/material.dart';
import 'package:getx_course/all_pages.dart';
import 'package:getx_course/route_mangement/route_mangement_page.dart';
import 'package:getx_course/route_mangement/page_one.dart';
import 'package:getx_course/route_mangement/page_two.dart';
import 'package:get/get.dart';
import 'package:getx_course/state_mangement/utilities/get_builder_bindings.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: AllPages(),
      initialRoute: '/',
      // routes: {
      //   '/': (context) => const RouteMangementPage(),
      //   '/PageOne': (context) => const PageOne(),
      //   '/PageTwo': (context) => const PageTwo(),
      // },
      initialBinding: GetBuilderBindings(), // app level
      
      getPages: [
        GetPage(name: '/', page: () => const AllPages(), ),//binding: GetBuilderBindings(),), // AllPages level
        GetPage(name: '/RouteMangementPage', page: () => const RouteMangementPage()),
        GetPage(name: '/PageOne', page: () => const PageOne()),
        GetPage(name: '/PageTwo', page: () => const PageTwo()),
      ],
    );
  }
}
