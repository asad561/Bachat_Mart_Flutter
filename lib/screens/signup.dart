import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise/api_service.dart';
import 'package:practise/models/customer.dart';
import 'package:practise/screens/homepage.dart';
import 'package:practise/screens/productgallery.dart';
import 'package:practise/screens/productdetail.dart';
import 'package:practise/screens/api.dart';
import 'package:practise/utils/ProgressHUD.dart';
import 'package:practise/utils/form_helper.dart';
import 'package:practise/utils/validator_service.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  APIService apiService;
  CustomerModel model;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool hidePassword = true;
  bool isApiCallPocess = false;

  @override
  void initState() {
    apiService = new APIService();
    model = new CustomerModel();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontSize: 20.00858);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
          title: Text("Sign Up"),
          backgroundColor: Color.fromRGBO(253, 15, 15, 1)),
      body: ProgressHUD(
        child: new Form(
          key: globalKey,
          child: _formUI(),
        ),
        inAsyncCall: isApiCallPocess,
        opacity: .3,
      ),
    );
  }

  Widget _formUI() {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FormHelper.fieldLabel("Email"),
            FormHelper.textInput(
              context,
              model.email,
              (value) => {
                this.model.email = value,
              },
              onValidate: (value) {
                if (value.toString().isEmpty) {
                  return 'Please Enter email Id';
                }
                return null;
              },
            ),
            FormHelper.fieldLabel("User Name"),
            FormHelper.textInput(
              context,
              model.userName,
              (value) => {
                this.model.userName = value,
              },
              onValidate: (value) {
                if (value.toString().isEmpty) {
                  return 'Please Enter user name';
                }
                return null;
              },
            ),
            FormHelper.fieldLabel("First Name"),
            FormHelper.textInput(
              context,
              model.firstName,
              (value) => {
                this.model.firstName = value,
                this.model.phone = value,
                this.model.company = value,
                this.model.address_1 = value,
                this.model.address_2 = value,
                this.model.city = value,
                this.model.country = value,
                this.model.postcode = value,
                this.model.state = value
              },
              onValidate: (value) {
                return null;
              },
            ),
            FormHelper.fieldLabel("Last Name"),
            FormHelper.textInput(
              context,
              model.lastName,
              (value) => {
                this.model.lastName = value,
              },
              onValidate: (value) {
                return null;
              },
            ),
            FormHelper.fieldLabel("Password"),
            FormHelper.textInput(
                context,
                model.password,
                (value) => {
                      this.model.password = value,
                    }, onValidate: (value) {
              return null;
            }),
            SizedBox(
              height: 15.0,
            ),
            new Center(
              child: FormHelper.saveButton("Register", () {
                if (validateAndSave()) {
                  print(model.toJson());
                  setState(() {
                    isApiCallPocess = true;
                  });

                  apiService.createCustomer(model).then(
                          (ret) {
                    setState(() {
                      isApiCallPocess = false;
                    });

                    if (ret) {
                      FormHelper.showMessage(
                        context,
                        "Bachat Mart",
                        "Register Successfull",
                        "Ok",
                        () {
                          Navigator.of(context).pop();
                        },
                      );
                    } else {
                      FormHelper.showMessage(
                        context,
                        "Bachat Mart",
                        "User Already Register",
                        "Ok",
                        () {
                          Navigator.of(context).pop();
                        },
                      );
                    }
                  });
                }
              }),
            )
          ]),
    ));
  }

  bool validateAndSave() {
    final form = globalKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
