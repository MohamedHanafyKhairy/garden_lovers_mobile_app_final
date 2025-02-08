class UserModel {
  String name;
  String email;
  String address;
  String password;
  String Phone;

  UserModel({
    required this.name,
    required this.email,
    required this.address,
    required this.password,
    required this.Phone
  });

  Map<String, dynamic> toJson() {
    return {
      "user_Name": name,
      "user_Email": email,
      "user_Password": password,
      "user_PhoneNumber": Phone,
      "user_Address": address
    };
  }
}
