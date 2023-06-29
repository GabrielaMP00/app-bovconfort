class DataHolder {
  double average = 0.0;

  static final DataHolder _instance = DataHolder._internal();

  factory DataHolder() {
    return _instance;
  }

  DataHolder._internal();
}
