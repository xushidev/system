// Bio of the user
// Age, birthday, height

// Attributes: skills

class Bio {
  static String age = "";
  static DateTime birthday = DateTime.now();
  static double height = 0;
  static String bio = "";

  static Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['age'] = age;
    data['birthday'] = birthday;
    data['height'] = height;
    data['bio'] = bio;
    return data;
  }

  Bio.fromJson(Map<String, dynamic> json) {
    age = json['age'];
    birthday = json['birthday'];
    height = json['height'];
    bio = json['bio'];
  }
}