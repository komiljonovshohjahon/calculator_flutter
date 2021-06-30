class AppState {
  bool isDark;
  bool isLight;
  double sum;
  double subtract;
  double multiply;
  double divide;
  String first;
  String second;
  var clear;

  AppState({
    this.isDark,
    this.isLight,
    this.sum,
    this.subtract,
    this.multiply,
    this.divide,
    this.first,
    this.second,
    this.clear,
  });

  AppState.initial() {
    this.isDark = false;
    this.isLight = false;
    this.sum = 0.0;
    this.subtract = 0.0;
    this.multiply = 0.0;
    this.divide = 0.0;
    this.first = "0";
    this.second = "0";
    this.clear = 0.0;
  }

  AppState.copyWith({
    AppState prevState,
    bool isDark,
    bool isLight,
    double sum,
    double subtract,
    double multiply,
    double divide,
    String first,
    String second,
    var clear,
  }) {
    this.isDark = isDark ?? prevState.isDark;
    this.isLight = isLight ?? prevState.isLight;
    this.sum = sum ?? prevState.sum;
    this.subtract = subtract ?? prevState.subtract;
    this.multiply = multiply ?? prevState.multiply;
    this.divide = divide ?? prevState.divide;
    this.first = first ?? prevState.first;
    this.second = second ?? prevState.second;
    this.clear = clear ?? prevState.clear;
  }
}
