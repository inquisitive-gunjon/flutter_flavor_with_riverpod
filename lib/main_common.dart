import 'package:flutter/material.dart';
import 'package:flutter_flavor_with_riverpod/config_flavors.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


var flavorConfigProvider;
void mainCommon(FlavorConfig config) {
  flavorConfigProvider=StateProvider((ref) => config);
  runApp(
    ProviderScope(child: MyApp())
  );
}

class MyApp extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build

    final config = ref.read(flavorConfigProvider);

    return MaterialApp(
      title: config.appTitle,
      theme: config.theme,
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends ConsumerWidget{

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    print(ref.read(flavorConfigProvider.notifier).state.appTitle);

    return Scaffold(
      appBar: AppBar(
        title: Text(ref.read(flavorConfigProvider).appTtile),
      ),

      body: Image.asset(
        ref.read(flavorConfigProvider).imageLocation,
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }

}