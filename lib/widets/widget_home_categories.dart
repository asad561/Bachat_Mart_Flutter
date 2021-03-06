import 'package:flutter/material.dart';
import 'package:practise/api_service.dart';
import 'package:practise/models/category.dart';
import 'dart:core';


class WidgetCategories extends StatefulWidget {
  @override
  _WidgetCategoriesState createState() => _WidgetCategoriesState();
}

class _WidgetCategoriesState extends State<WidgetCategories> {
  APIService apiService;

  @override
  void initState() {
    apiService = new APIService();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: (Text(
                  'All Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4, right: 10),
                child: (Text(
                  'View All',
                  style: TextStyle(color: Colors.redAccent),
                )),
              ),
            ],
          ),
        //  _categoriesList()
        ],
      ),
    );
  }
  //
  // Widget _categoriesList() {
  //   return new FutureBuilder(
  //     future: apiService.getCategories(),
  //     // ignore: missing_return
  //     builder: (BuildContext context,
  //         AsyncSnapshot<List<category>> model,
  //     ) {
  //       if(model.hasData){
  //         return _buildCategoridesList(model.data);
  //       }
  //
  //       return Center(
  //         child: CircularProgressIndicator(),
  //       );
  //     },
  //   );
  // }

  Widget _buildCategoridesList(List<category> categories
      ) {
    return Container(
      height: 150,
      alignment: Alignment.centerLeft,
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          var data = categories[index];
          return Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: 80,
                height: 80,
                alignment: Alignment.center,
                // child: Image.network(
                //   data.image.url,
                //   height: 80,
                // ),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12,
                      offset: Offset(0,5),
                        blurRadius: 15,
                      )
                    ],
                    ),
              ),
              Row(children: [
                Text(data.categoryName.toString()),
                Icon(Icons.keyboard_arrow_right,
                size: 14,
                )
              ],)
            ],
          );
        },
      ),
    );
  }
}
