enum Gender{
  Male, Female, Others
}
enum ProgLang{
  Dart, Java, JavaScript
}

class Settings{
  final String username;
  final Gender gender;
  final Set<ProgLang> progLanguage;
  final bool isEmployed;

  Settings({required this.gender,required this.isEmployed,required this.progLanguage,required this.username});
}