class Device {
  final String id;
  final String name;
  final String condition;
  final double price;
  final String? imagePath;
  final String estimatedRepairCost;
  final String resaleValue;

  Device({
    required this.id,
    required this.name,
    required this.condition,
    required this.price,
    this.imagePath,
    required this.estimatedRepairCost,
    required this.resaleValue,
  });
}

class DeviceData {
  static List<Device> devices = [
    Device(
      id: '1',
      name: 'iPhone 11',
      condition: 'Good',
      price: 4500,
      imagePath: null,
      estimatedRepairCost: '500 ETB',
      resaleValue: '5,200 ETB',
    ),
    Device(
      id: '2',
      name: 'Samsung Galaxy S10',
      condition: 'Fair',
      price: 3200,
      imagePath: null,
      estimatedRepairCost: '800 ETB',
      resaleValue: '4,000 ETB',
    ),
  ];

  static void addDevice(Device device) {
    devices.add(device);
  }

  static List<Device> getAllDevices() {
    return devices;
  }
}
