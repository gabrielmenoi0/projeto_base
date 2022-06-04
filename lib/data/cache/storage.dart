import 'package:cofredesenha/models/passwordModel.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _storage = const FlutterSecureStorage();

  Future writeSecureData(String key, String value) async {
    var writeData = await _storage.write(key: key, value: value);
    return writeData;
  }

  Future readSecureData(String key) async {
    var readData = await _storage.read(key: key);
    return readData;
  }

  Future deleteSecureData(String key) async{
    var deleteData = await _storage.delete(key: key);
    return deleteData;
  }

  Future deletePasswords(String key, Passwords item) async{
    var deleteData = await _storage.delete(key: key);
    return deleteData;
  }

  Future containsSecureData(String key) async {
    var readData = await _storage.containsKey(key: key);
    return readData;
  }
}