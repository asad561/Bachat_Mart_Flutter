class CustomerModel {
  String email;
  String userName;
  String firstName;
  String lastName;
  String phone;
  String password;
  String company;
  String address_1;
  String address_2;
  String city;
  String state;
  String postcode;
  String country;

  CustomerModel(
      {this.email,
      this.userName,
      this.firstName,
      this.lastName,
      this.phone,
      this.password,
      this.company,
        this.address_1,
        this.address_2,
        this.city,
        this.country,
        this.postcode,
        this.state,
      });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};

    map.addAll({
      'email' : email,
      'username': userName,
      'first_name': firstName,
      'last_name': lastName,
      'phone': phone,
      'password': password,
      'company' : company,
      'address_1' : address_1,
      'address_2' : address_2,
      'city' : city,
      'country' : country,
      'postcode' : postcode,
      'state' : state,
    });

    return map;
  }
}
