import 'package:luminator/src/tb/storage/storage.dart';

class InMemoryStorage implements TbStorage {
  final storageMap = <String, String>{};

  @override
  Future<void> deleteItem(String key) async {
    storageMap.remove(key);
  }

  @override
  Future<String?> getItem(String key) async {
    return storageMap[key];
  }

  @override
  Future<void> setItem(String key, String value) async {
    storageMap[key] = value;
  }
}
