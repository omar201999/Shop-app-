class ShopLoginModel
{
  bool? status;
  String? message;
  UserData? data;


  ShopLoginModel.fromJson(Map<String,dynamic> json)
  {
    status=json['status'];
    message=json['message'];
    // عشان ممكن الداتا ترجعلي بي null في حالة ان اليوزر دخل حاجة غلط او ملهوش داتا عندي
    data = json['data'] != null ? UserData.fromJson(json['data']) : null;

  }

}


class UserData
{
  int? id;
  String? name;
  String? email;
  String? phone;
  String? image;
  int? points;
  int? credit;
  String? token;

  UserData.fromJson(Map<String,dynamic> json)
  {
    id=json['id'];
    name=json['name'];
    email=json['email'];
    phone=json['phone'];
    image=json['image'];
    points=json['points'];
    credit=json['credit'];
    token=json['token'];
  }

}