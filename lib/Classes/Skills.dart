// Skills or Skill quests

class Skills {
  static List<String> listTitles = <String>[];
  static List<String> listDescriptions = <String>[];


  void AddAchievement(String title, String desc){
    listTitles.add(title);
    listDescriptions.add(desc);
  }

  void ShowAchievement(int index){
    print(listTitles[index]);
    print(listDescriptions[index]);
  }

  static Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titles'] = listTitles;
    data['descriptions'] = listDescriptions;
    return data;
  }

  Skills.fromJson(Map<String, dynamic> json) {
    listTitles = json['titles'];
    listDescriptions = json['descriptions'];
  }

}