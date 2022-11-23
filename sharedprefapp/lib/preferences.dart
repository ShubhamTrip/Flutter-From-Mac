import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedprefapp/models.dart';

class Pref{

  Future saveSettings(Settings settings)async{
    final preference = await SharedPreferences.getInstance();

    await preference.setString('username', settings.username );
    await preference.setBool('isEmployed', settings.isEmployed);
    await preference.setInt('gender', settings.gender.index);
    await preference.setStringList('languages', settings.progLanguage.map((e) => e.index.toString()).toList());

    print('Settings saved');
  }

  Future<Settings> getSettings()async{
    final preference = await SharedPreferences.getInstance();

    final user = preference.getString('username');
    final isEmployed = preference.getBool('isEmployed');
    final gender = Gender.values[preference.getInt('gender')??0];
    final programmingLanguagesIndicies =
    preference.getStringList('languages');

    final programmingLanguages = programmingLanguagesIndicies?.map(
            (stringIndex) => ProgLang.values[int.parse(stringIndex)]).toSet();

    return Settings(
      username: user.toString(), gender: gender, isEmployed: isEmployed??false, progLanguage: programmingLanguages??{}
    );
  }
  }
