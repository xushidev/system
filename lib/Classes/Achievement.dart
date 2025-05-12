// Achievement list

class Achievement {
  static List<String> listTitles = <String>[];
  static List<String> listDescriptions = <String>[];
  static List<String> listImages = <String>[];


  void AddAchievement(String title, String desc, String image){
    listTitles.add(title);
    listDescriptions.add(desc);
    listImages.add(image);
  }

  List<String> getAchievement(int index){
    print(listTitles[index]);
    print(listDescriptions[index]);
    print(listImages[index]);

    return [listTitles[index],listDescriptions[index],listImages[index]];
  }

  static Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titles'] = listTitles;
    data['descriptions'] = listDescriptions;
    data['images'] = listImages;
    return data;
  }

  Achievement.fromJson(Map<String, dynamic> json) {
    listTitles = json['titles'];
    listDescriptions = json['descriptions'];
    listImages = json['images'];
  }

}