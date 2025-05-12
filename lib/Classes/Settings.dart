// Settings class
// Includes Image and name



class pref{
  static bool darkMode = false;
  static String pathToImage = "";
  static String name = "";

  void SetImage(String path){
    pathToImage = path;
  }

  void SetName(String Name){
    name = Name;
  }

  void SetDarkmode(){
    darkMode = true;
  }

  pref.fromJson(Map<String, dynamic> json) {
    darkMode = json['darkMode'];
    pathToImage = json['pathToImage'];
    name = json['name'];
  }

  static Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['darkMode'] = darkMode;
    data['pathToImage'] = pathToImage;
    data['name'] = name;
    return data;
  }
}