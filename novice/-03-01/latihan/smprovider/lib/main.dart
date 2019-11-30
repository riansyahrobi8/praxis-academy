import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smprovider/layouts/MyCartLayout.dart';
import 'package:smprovider/layouts/MyCatalogLayout.dart';
import 'package:smprovider/models/MyCartModel.dart';
import 'package:smprovider/models/MyCatalogModel.dart';
import 'package:smprovider/themes/Theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(builder: (BuildContext context) => MyCatalogModel()),
        ChangeNotifierProxyProvider<MyCatalogModel, MyCartModel>(
            builder: (BuildContext context, catalog, myCart) =>
                MyCartModel(catalog, myCart)),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => MyCatalogLayout(),
          '/cart': (context) => MyCartLayout(),
        },
      ),
    );
  }
}
