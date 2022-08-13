import 'package:flutter/material.dart';

import 'color_demos_view.dart';

class ColorWidgetView extends StatefulWidget {
  const ColorWidgetView({Key? key}) : super(key: key);

  @override
  State<ColorWidgetView> createState() => _ColorWidgetViewState();
}

class _ColorWidgetViewState extends State<ColorWidgetView> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: _changeBackground, icon: const Icon(Icons.clear))],
      ),
      body: Column(
        children: [const Spacer(), Expanded(child: ColorDemos(initialColor: _backgroundColor))],
      ),
    );
  }

  void _changeBackground() {
    setState(() {
      _backgroundColor = Colors.pink;
    });
  }
}
