import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/Picture_model.dart';

class DBHelper{
  static const int _version =1;
  static const String _dbName = "Photos.db";
  static const String ID = 'id';
  static const String NAME = 'photoName';
  static const String TABLE = 'photoTable';


  static Future<Database> _getDB() async{
    return openDatabase(join(await getDatabasesPath(),_dbName),
      onCreate: (db, version) async => await db.execute(
        "CREATE TABLE $TABLE($ID INTERGER PRIMARY KEY, $NAME TEXT);"),
      version: _version);
  }

  static Future<int> addPic(Picture picture) async{
     final db = await _getDB();

     return await db.insert(TABLE, picture.toJson(),
       conflictAlgorithm: ConflictAlgorithm.replace
     );
  }
  static Future<List<Picture>?> getPics() async{
    final db = await _getDB();

    final List<Map<String,dynamic>> maps = await db.query(TABLE);

    if(maps.isEmpty){
      return null;
    }

    return List.generate(maps.length, (index) => Picture.fromJson(maps[index]));
  }
}
