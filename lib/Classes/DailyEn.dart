// Daily energy

class dailyEnergy{
  static int willpower = 0;
  static int health = 0;
  static int mood = 0;

  static int maxWill = 0;
  static int maxHealth = 0;
  static int maxMood = 0;

  dailyEnergy.fromJson(Map<String, dynamic> json) {
    willpower = json['willpower'];
    health = json['health'];
    mood = json['mood'];
    maxWill = json['maxWill'];
    maxHealth = json['maxHealth'];
    maxMood = json['maxMood'];
  }

  static Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['willpower'] = willpower;
    data['health'] = health;
    data['mood'] = mood;
    data['maxWill'] = maxWill;
    data['maxHealth'] = maxHealth;
    data['maxMood'] = maxMood;
    return data;
  }

}
