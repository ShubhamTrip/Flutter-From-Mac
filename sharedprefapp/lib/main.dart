import 'models.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  var _selectedGender = Gender.Female;
  var _selectedLanguages = Set<ProgLang>();
  var _isEmployed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child:

            ListView(

              children: [
                const ListTile(
                  title: TextField( decoration: InputDecoration(labelText: "Username"),)
                ),
                RadioListTile(
                    title: Text('Female'),
                    value: Gender.Female,
                    groupValue: _selectedGender,
                    onChanged: (newValue) =>setState(()=>(_selectedGender = newValue!))),
                RadioListTile(
                    title: Text('Male'),
                    value: Gender.Male,
                    groupValue: _selectedGender,
                    onChanged: (newValue) =>setState(()=>(_selectedGender = newValue!))),
                RadioListTile(
                    title: Text('Others'),
                    value: Gender.Others,
                    groupValue: _selectedGender,
                    onChanged: (newValue) =>setState(()=>(_selectedGender = newValue!))),
                CheckboxListTile(
                    title: Text('Dart'),
                    value:
                    _selectedLanguages.contains(ProgLang.Dart),
                    onChanged: (_) {
                      setState(() {
                        _selectedLanguages.contains(ProgLang.Dart)
                            ? _selectedLanguages
                            .remove(ProgLang.Dart)
                            : _selectedLanguages
                            .add(ProgLang.Dart);
                      });
                    }),
                CheckboxListTile(
                    title: Text('Java'),
                    value:
                    _selectedLanguages.contains(ProgLang.Java),
                    onChanged: (_) {
                      setState(() {
                        _selectedLanguages.contains(ProgLang.Java)
                            ? _selectedLanguages
                            .remove(ProgLang.Java)
                            : _selectedLanguages
                            .add(ProgLang.Java);
                      });
                    }),
                CheckboxListTile(
                    title: Text('JavaScript'),
                    value:
                    _selectedLanguages.contains(ProgLang.JavaScript),
                    onChanged: (_) {
                      setState(() {
                        _selectedLanguages.contains(ProgLang.JavaScript)
                            ? _selectedLanguages
                            .remove(ProgLang.JavaScript)
                            : _selectedLanguages
                            .add(ProgLang.JavaScript);
                      });
                    }),
                SwitchListTile(
                    title: Text('Is Employed'),
                    value: _isEmployed,
                    onChanged: (newValue) =>
                        setState(() => _isEmployed = newValue)),
                TextButton(onPressed: () {  },
                child: Text('Save Settings'))

              ],

            )

        ),
      ),
    );

  }
}
