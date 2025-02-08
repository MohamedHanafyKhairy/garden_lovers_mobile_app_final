class ResponceModel {
  final String userName;
  final String userEmail;
  final String userPhone;
  final String userAddress;
  final List<dynamic> userServices;

  ResponceModel({
    required this.userName,
    required this.userEmail,
    required this.userPhone,
    required this.userAddress,
    required this.userServices,
  });

  factory ResponceModel.fromJson(Map<String, dynamic> json) {
    return ResponceModel(
      userName: json['user_Name'] ?? '',
      userEmail: json['user_Email'] ?? '',
      userPhone: json['user_PhoneNumber'] ?? '',
      userAddress: json['user_Address'] ?? '',
      userServices: json['user_Services'] ?? [],
    );
  }
}
