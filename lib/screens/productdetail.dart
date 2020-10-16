import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}

// ignore: camel_case_types
class productdetail extends StatefulWidget {
  @override
  _productdetailState createState() => _productdetailState();
}

class _productdetailState extends State<productdetail> {
  @override
  Widget build(BuildContext context) {
    final loginButon = Material(
      color: Color.fromRGBO(252, 15, 15, 1),
      borderRadius: BorderRadius.circular(5.0),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => productdetail()));
        },
        child: Text("ADD TO CART",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final related_category = Text(
      'Dressed Chicken (with \n skin)(1Kg)',
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
    final related_products = Text(
      '\n\nRelated Products',
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
    var row = Row(
      children: [],
    );
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
          backgroundColor: Color.fromRGBO(253, 15, 15, 1)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/images/asd.png",
                color: Colors.red,
                height: 170,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 14,
                ),
                Text('Dressed Chicken (with \nskin)(1Kg)',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(
                  width: 71.9,
                ),
                Image.asset("assets/images/wishlist1.png", height: 29.2),
                IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 14,
                ),
                Text(
                  'In Stock',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.rate_review,
                    color: Colors.amber,
                  ),
                ),
                Text('View Review'),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 14,
                ),
                Text('Rs 575',
                    style: TextStyle(
                        fontSize: 18.9,
                        color: Color.fromRGBO(252, 15, 15, 1),
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Rs 650',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.red,
                    decorationThickness: 2.85,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 14),
                Text(
                  '\nSelect Quantity:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 14,
                ),
                Text('\nDescription:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 14),
                Text('3M Mask for COVID-19 protection\n\n')
              ],
            ),
            row,
            Container(
              child: loginButon,
            ),
            Container(
              child: related_products,
              alignment: AlignmentDirectional.centerStart,
              margin: EdgeInsets.only(left: 12.0),
            ),
            Container(
              height: 220.2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      elevation: 3,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/asd.png',
                        width: 50,
                        alignment: AlignmentDirectional.topCenter,
                        color: Colors.red,
                      ),
                      margin: EdgeInsets.only(left: 6.5),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/asd.png',
                            ),
                            fit: BoxFit.fill)),
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      elevation: 3,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/asd.png',
                        width: 50,
                        alignment: AlignmentDirectional.topCenter,
                        color: Colors.red,
                      ),
                      margin: EdgeInsets.only(left: 6.5),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      elevation: 3,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/asd.png',
                        width: 50,
                        alignment: AlignmentDirectional.topCenter,
                        color: Colors.red,
                      ),
                      margin: EdgeInsets.only(left: 6.5),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      elevation: 3,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/asd.png',
                        width: 50,
                        alignment: AlignmentDirectional.topCenter,
                        color: Colors.red,
                      ),
                      margin: EdgeInsets.only(left: 6.5),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      elevation: 3,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/asd.png',
                        width: 50,
                        alignment: AlignmentDirectional.topCenter,
                        color: Colors.red,
                      ),
                      margin: EdgeInsets.only(left: 6.5),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      elevation: 3,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/asd.png',
                        width: 50,
                        alignment: AlignmentDirectional.topCenter,
                        color: Colors.red,
                      ),
                      margin: EdgeInsets.only(left: 6.5),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      elevation: 3,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/asd.png',
                        width: 50,
                        alignment: AlignmentDirectional.topCenter,
                        color: Colors.red,
                      ),
                      margin: EdgeInsets.only(left: 6.5),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      elevation: 3,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/asd.png',
                        width: 50,
                        alignment: AlignmentDirectional.topCenter,
                        color: Colors.red,
                      ),
                      margin: EdgeInsets.only(left: 6.5),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      elevation: 3,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/asd.png',
                        width: 50,
                        alignment: AlignmentDirectional.topCenter,
                        color: Colors.red,
                      ),
                      margin: EdgeInsets.only(left: 6.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
