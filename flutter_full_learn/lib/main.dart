import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';

import '101/app_bar_learn.dart';
import '101/button_learn.dart';
import '101/color_learn.dart';
import '101/column_row_learn.dart';
import '101/indicator_learn.dart';
import '101/list_tile_learn.dart';
import '101/list_view_builder.dart';
import '101/list_view_learn.dart';
import '101/navigate_detail_learn.dart';
import '101/navigation_learn.dart';
import '101/page_view_learn.dart';
import '101/stack_learn.dart';
import '101/stateful_learn.dart';
import '101/statefulf_live_cycle_learn.dart';
import '101/text_field_learn.dart';
import '202/animated_learn_view.dart';
import '202/form_learn_view.dart';
import '202/image_learn_202.dart';
import '202/model_learn_view.dart';
import '202/oop_learn_view.dart';
import '202/service/comments_learn_view.dart';
import '202/service/package_learn_view.dart';
import '202/service/service_learn_get_view.dart';
import '202/service/service_post_learn_view.dart';
import '202/tab_learn.dart';
import '202/theme_learn_view.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle.dart';
import 'demos/my_collections_demos.dart';
import 'demos/stack_demo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,

      // ThemeData.dark().copyWith(
      //     tabBarTheme: const TabBarTheme(
      //       labelColor: Colors.white,
      //       unselectedLabelColor: Colors.red,
      //       indicatorSize: TabBarIndicatorSize.label,
      //     ),
      //     bottomAppBarTheme:
      //         const BottomAppBarTheme(shape: CircularNotchedRectangle()),
      //     listTileTheme:
      //         const ListTileThemeData(contentPadding: EdgeInsets.zero),
      //     progressIndicatorTheme:
      //         const ProgressIndicatorThemeData(color: Colors.white),
      //     cardTheme: CardTheme(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20))),
      //     errorColor: ColorsItems.sulu,
      //     textSelectionTheme: const TextSelectionThemeData(
      //       selectionColor: Colors.red,
      //       cursorColor: Colors.green,
      //       selectionHandleColor: Colors.black,
      //     ),
      //     inputDecorationTheme: const InputDecorationTheme(
      //         filled: true,
      //         fillColor: Colors.white,
      //         iconColor: Colors.red,
      //         border: OutlineInputBorder(),
      //         labelStyle: TextStyle(color: Colors.lime),
      //         floatingLabelStyle: TextStyle(
      //             color: Colors.red,
      //             fontSize: 24,
      //             fontWeight: FontWeight.w600)),
      //     textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.red)),
      //     appBarTheme: const AppBarTheme(
      //       centerTitle: true,
      //       systemOverlayStyle: SystemUiOverlayStyle.light,
      //       backgroundColor: Colors.transparent,
      //       elevation: 0,
      //     )),
      home: const FormLearnView(),
    );
  }
}
