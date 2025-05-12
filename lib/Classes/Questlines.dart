// Quest line (long term pursuit)

class Questlines {
  static List<Quest> questlines = <Quest>[];

  static Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    List<Map<String, dynamic>> tmp = <Map<String, dynamic>>[];
    for (var element in questlines) {
      tmp.add(element.toJson());
    }
    data['quests'] = tmp;
    return data;
  }

  Questlines.fromJson(Map<String, dynamic> json){
    List<Map<String, dynamic>> tmp = <Map<String, dynamic>>[];
    tmp = json['quests'];
    for (var element in tmp) {
      var item = Quest.fromJson(element);
      questlines.add(item);
    }
    
  }
}

class Quest {
  String questlineName = "";
  String title = "";
  String? image = "";
  String? description = "";
  bool isCompleted = false;

  Quest(this.questlineName, this.title, this.isCompleted, [this.image, this.description]);

  void completeQuest(){
    this.isCompleted = true;
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['questlineName'] = this.questlineName;
    data['title'] = this.title;
    data['image'] = this.image;
    data['description'] = this.description;
    data['isCompleted'] = this.isCompleted;
    return data;
  }

  Quest.fromJson(Map<String, dynamic> json){
    this.questlineName = json['questlineName'];
    this.title = json['title'];
    this.image = json['image'];
    this.description = json['description'];
    this.isCompleted = json['isCompleted'];
  }
}

