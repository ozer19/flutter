import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/package/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../package/launch_mixin.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary,
        onPressed: () {
          launchUrl(url);
        },
      ),
      body: Column(
        children: [
          Text('a', style: Theme.of(context).textTheme.subtitle1),
          const LoadingBar(),
        ],
      ),
    );
  }
}
