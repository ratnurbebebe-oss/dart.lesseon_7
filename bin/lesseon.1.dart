
abstract class Switchable {
  void turnOn();
  void turnOff();
}
abstract class Adjustable {
  void increase();
  void decrease();
}

mixin BatteryPowered {
  int batteryLevel = 100;

  void showBattery() {
    print('Battery level: $batteryLevel%');
  }
}
abstract class Device implements Switchable {
  final String name;

  Device(this.name);

  void showInfo() {
    print('Device: $name');
  }
}

class SmartLamp extends Device
    with BatteryPowered
    implements Adjustable {

  int brightness = 50;

  SmartLamp(String name) : super(name);

  @override
  void turnOn() {
    print('Lamp $name is ON');
  }

  @override
  void turnOff() {
    print('Lamp $name is OFF');
  }

  @override
  void increase() {
    brightness += 10;
    if (brightness > 100) brightness = 100;
  }

  @override
  void decrease() {
    brightness -= 10;
    if (brightness < 0) brightness = 0;
  }

  @override
  void showInfo() {
    print('Lamp: $name | Brightness: $brightness');
  }
    }
class SmartSpeaker extends Device
    with BatteryPowered
    implements Adjustable {

  int volume = 50;

  SmartSpeaker(String name) : super(name);

  @override
  void turnOn() {
    print('Speaker $name is ON');
  }

  @override
  void turnOff() {
    print('Speaker $name is OFF');
  }

  @override
  void increase() {
    volume += 5;
    if (volume > 100) volume = 100;
  }

  @override
  void decrease() {
    volume -= 5;
    if (volume < 0) volume = 0;
  }

  @override
  void showInfo() {
    print('Speaker: $name | Volume: $volume');
  }
}

class SmartThermostat extends Device {
  int temperature;

  SmartThermostat(String name, this.temperature) : super(name);

  @override
  void turnOn() {
    print('Thermostat $name is ON');
  }

  @override
  void turnOff() {
    print('Thermostat $name is OFF');
  }

  @override
  void showInfo() {
    print('Thermostat: $name | Temperature: $temperature°C');
  }
}
void main() {
  List<Device> devices = [
    SmartLamp('Xiaomi Lamp'),
    SmartSpeaker('JBL Speaker'),
    SmartThermostat('Nest', 22),
  ];

  for (var device in devices) {
    device.showInfo();
    device.turnOn();

    if (device is Adjustable) {
      device.showInfo();
    }

    if (device is BatteryPowered) {
    device.showInfo();
    }

    print('---');
  }

  print('All devices processed.');
}