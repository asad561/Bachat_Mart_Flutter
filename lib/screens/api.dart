library woocommerce_api;

import 'package:flutter/material.dart';
import 'package:woocommerce_api/woocommerce_api.dart';

import 'dart:async';
import "dart:core";
import 'package:flutter/foundation.dart';

//[url] is you're site's base URL, e.g. `https://www.yourdomain.com`

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'WooCommerce API Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  String url = "";
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future _getProducts() async {
    // Initialize the API
    WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
        url: "https://www.bachatmart.com.pk",
        consumerKey: "",
        consumerSecret: "");

    // Get data using the "products" endpoint
    var products = await wooCommerceAPI.getAsync("products?newproduct=1");
    return products;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: _getProducts(),
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.hasData) {
            // Create a list of products
            return ListView.builder(
              itemCount: snap.data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Image.network(snap.data[index]["images"][0]["src"]),
                  ),
                  title: Text(snap.data[index]["name"]),
                  subtitle:
                      Text("Buy now for \Rupees. " + snap.data[index]["price"]),
                );
              },
            );
          }

          // Show a circular progress indicator while loading products
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
