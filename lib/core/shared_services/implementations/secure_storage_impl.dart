import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fola_app/core/shared_services/services/secure_storage.dart';

class SecureStorageImpl implements SecureStorage {
  late FlutterSecureStorage _storage;

  SecureStorageImpl({FlutterSecureStorage? storage}) {
    _storage = storage ?? const FlutterSecureStorage();
  }

  @override
  Future<bool> delete(String key) async {
    try {
      await _storage.delete(key: key);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<String?> read(String key) async {
    try {
      return await _storage.read(key: key);
    } catch (e) {
      print(e.toString());
      return "";
    }
  }

  @override
  Future<void> write({required String key, required String value}) async {
    try {
      await _storage.write(key: key, value: value);
    } catch (e) {
      print(e.toString());
    }
  }
}
