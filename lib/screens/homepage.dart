import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
   final search = TextField(
     style: TextStyle(
       height: 0.07,
           fontSize:18.0
     ),
 //     textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(

          hintText: 'Enter a search term',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(35.0)),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.search,size: 24,color: Colors.black,),
      ),
    );
   final related_category =  Text(
     'Categories',
     textAlign: TextAlign.left,
     style: TextStyle(fontWeight: FontWeight.bold),
   );
   final related_products =  Text(
     'On Sale',
     textAlign: TextAlign.left,
     style: TextStyle(fontWeight: FontWeight.bold),
   );
    return Scaffold(

      appBar: AppBar(
          title: Container(
            alignment: Alignment.center,
            //padding: const EdgeInsets.only(left: 4),
            child: Image.asset(
              "assets/images/asd.png",
              fit: BoxFit.contain,
              alignment: Alignment.center,
              height: 50,
            ),
          ),
          leading: Icon(Icons.menu),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
          backgroundColor: Color.fromRGBO(253, 15, 15, 1)
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.08,
              color: Color.fromRGBO(253, 15, 15, 1),
              child: Padding(
                padding: const EdgeInsets.only(left:012.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 8.7),
                    search,

                  ],
                ),

              ),
            ),
           Container(
             height: 40.2,
             child: ListView(
               scrollDirection: Axis.horizontal,
               padding: const EdgeInsets.all(8),
               children: <Widget>[
                 Container(
                   height: 50,
                   child: const Center(child: Text('Entry A')),
                   margin: EdgeInsets.only(left: 4.5),
                 ),
                 Container(
                   height: 50,
                   child: const Center(child: Text('Entry B')),
                   margin: EdgeInsets.only(left: 8.5),
                 ),
                 Container(
                   height: 50,
                   child: const Center(child: Text('Entry C')),
                   margin: EdgeInsets.only(left: 8.5),
                 ),
                 Container(
                   height: 50,
                   child: const Center(child: Text('Entry A')),
                   margin: EdgeInsets.only(left: 8.5),
                 ),
                 Container(
                   height: 50,
                   child: const Center(child: Text('Entry B')),
                   margin: EdgeInsets.only(left: 8.5),
                 ),
                 Container(
                   height: 50,
                   child: const Center(child: Text('Entry C')),
                   margin: EdgeInsets.only(left: 8.5),
                 ),
                 Container(
                   height: 50,
                   child: const Center(child: Text('Entry A')),
                   margin: EdgeInsets.only(left: 8.5),
                 ),
                 Container(
                   height: 50,
                   child: const Center(child: Text('Entry B')),
                   margin: EdgeInsets.only(left: 8.5),
                 ),
                 Container(
                   height: 50,
                   child: const Center(child: Text('Entry C')),
                   margin: EdgeInsets.only(left: 8.5),
                 ),
               ],
             ),
           ),
            Container(
              child: Image.asset("assets/images/asd.png",color: Colors.red,height: 170,),
            ),
            Container(
                  child: related_category,
              alignment: AlignmentDirectional.centerStart,
              margin: EdgeInsets.only(left: 12.0),
              ),
            Container(
              height: 70.2,
              child: ListView(

                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.5),
            ),
                        elevation: 3,
                        color: Color.fromRGBO(252, 15, 15, 1),
                        child: const Center(child: Text('Entry A')),
                        margin: EdgeInsets.only(left: 4.5),

                      ),

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.5),
                    ),
                    elevation: 3,
                    color: Color.fromRGBO(252, 15, 15, 1),
                    child: const Center(child: Text('Entry A')),
                    margin: EdgeInsets.only(left: 4.5),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.5),
                    ),
                    elevation: 3,
                    color: Color.fromRGBO(252, 15, 15, 1),
                    child: const Center(child: Text('Entry A')),
                    margin: EdgeInsets.only(left: 4.5),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.5),
                    ),
                    elevation: 3,
                    color: Color.fromRGBO(252, 15, 15, 1),
                    child: const Center(child: Text('Entry A')),
                    margin: EdgeInsets.only(left: 4.5),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.5),
                    ),
                    elevation: 3,
                    color: Color.fromRGBO(252, 15, 15, 1),
                    child: const Center(child: Text('Entry A')),
                    margin: EdgeInsets.only(left: 4.5),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.5),
                    ),
                    elevation: 3,
                    color: Color.fromRGBO(252, 15, 15, 1),
                    child: const Center(child: Text('Entry A')),
                    margin: EdgeInsets.only(left: 4.5),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.5),
                    ),
                    elevation: 3,
                    color: Color.fromRGBO(252, 15, 15, 1),
                    child: const Center(child: Text('Entry A')),
                    margin: EdgeInsets.only(left: 4.5),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.5),
                    ),
                    elevation: 3,
                    color: Color.fromRGBO(252, 15, 15, 1),
                    child: const Center(child: Text('Entry A')),
                    margin: EdgeInsets.only(left: 4.5),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.5),
                    ),
                    elevation: 3,
                    color: Color.fromRGBO(252, 15, 15, 1),
                    child: const Center(child: Text('Entry A')),
                    margin: EdgeInsets.only(left: 4.5),
                  ),

                ],
              ),

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
                      image: AssetImage('assets/images/asd.png',),
                        fit: BoxFit.fill
                      )),
                    width: 160,
                    child: Card(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      elevation: 3,
                      color: Colors.white,
                      child: Text("yknvl"),
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
