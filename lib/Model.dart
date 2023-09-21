class UserData {
  late final String name;
  late final String age;
  late final String address;

  UserData({
   required this.name,
   required this.age,
   required this.address,
  });

 UserData.fromJson(Map<String, dynamic> json) {
    name= json["name"];
    age= json["age"];
    address= json["address"];
  }

}
