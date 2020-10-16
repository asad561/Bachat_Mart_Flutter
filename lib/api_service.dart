import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:practise/config.dart';
import 'package:practise/models/category.dart';
import 'dart:core';
import 'package:practise/models/customer.dart';
import 'package:practise/models/login_model.dart';



class APIService {
  Future<bool> createCustomer(CustomerModel model) async {
    var authToken = base64.encode(
      utf8.encode(config.consumer_key + ":" + config.consumer_secret),
    );

    bool ret = false;

    try {
      var response = await Dio().post(
          config.base_url +
              config.customerUrl +
              "?consumer_key=${config.consumer_key}&consumer_secret=${config
                  .consumer_secret}",
          data: model.toJson(),
          options: new Options(headers: {
            HttpHeaders.authorizationHeader: 'Basic $authToken',
            HttpHeaders.contentTypeHeader: "application/json"
          }));

      if (response.statusCode == 201) {
        ret = true;
      }
      print(response.toString());
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        ret = false;
      } else {
        ret = false;
      }
    }

    return ret;
  }

  Future<LoginResponseModel> logincustomer(String username,
      String password) async {
    LoginResponseModel model;
    try {
      var response = await Dio().post(
        config.tokenUrl,
        data: {
          "username": username,
          "password": password,
        },
        options: new Options(
          headers: {
            HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded",
          },
        ),
      );

      if (response.statusCode == 200) {
        model = LoginResponseModel.fromJson(response.data);
      }
    } on DioError catch (e) {
      print(e.message);
    }
    return model;
  }

  Future<List<Category>> getCategories() async {
    List<Category> data = new List<Category>();

    try{
      String url = config.base_url +
  config.categoriesURL +
  "?consumer_key=${config.consumer_key}&consumer_secret=${config.consumer_secret}";
      var response = await Dio().get(
  url,
  options: new Options(
  headers: {
    HttpHeaders.contentTypeHeader: "application/json",
  },
  ),
  );
      if (response.statusCode == 200) {
        data = (response.statusCode as List)
  .map(
  (i) => category.fromJson(i)
  ).cast<Category>()
  .toList();
  }
  } on DioError catch (e){
      print(e.response);
  }

  return data;
}

}
