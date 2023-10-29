class Data {
  List<dynamic>? coords;
  double? temperature;
  double? power;
  double? pressure;
  double? humidity;
  int? khlamidaProbability;
  int? manadaProbability;
  int? bimbimProbability;

  Data({
    this.coords,
    this.temperature,
    this.power,
    this.pressure,
    this.humidity,
    this.khlamidaProbability,
    this.manadaProbability,
    this.bimbimProbability,
  });

  Data.fromJSON(Map<String, dynamic> json) {
    coords = json['coords'];
    temperature = json['temperature'];
    power = json['power'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    khlamidaProbability = json['stats']['khlamida_probability'];
    manadaProbability = json['stats']['manada_probability'];
    bimbimProbability = json['stats']['bimbim_probability'];
  }
}
