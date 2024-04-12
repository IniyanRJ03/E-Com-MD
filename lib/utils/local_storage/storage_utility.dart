import 'package:get_storage/get_storage.dart';

class NLocalStorage {
  static final NLocalStorage _instance = NLocalStorage._internal();

  factory NLocalStorage() {
    return _instance;
  }

  NLocalStorage._internal();

  final _storage = GetStorage();

  Future<void> saveData<N>(String key, N value) async {
    await _storage.write(key, value);
  }

  N? readData<N>(String key) {
    return _storage.read<N>(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll(String key) async {
    await _storage.erase();
  }
}
