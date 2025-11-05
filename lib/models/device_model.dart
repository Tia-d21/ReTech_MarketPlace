class Device {
  final String id;
  final String name;
  final String condition;
  final double price;
  final String? imagePath;
  final String estimatedRepairCost;
  final String resaleValue;
  final String sellerName;
  final String sellerContact;

  Device({
    required this.id,
    required this.name,
    required this.condition,
    required this.price,
    this.imagePath,
    required this.estimatedRepairCost,
    required this.resaleValue,
    required this.sellerName,
    required this.sellerContact,
  });
}

class DeviceData {
  static List<Device> devices = [
    Device(
      id: '1',
      name: 'iPhone 11',
      condition: 'Good',
      price: 4500,
      imagePath: 'assets/images/iphone.png',
      estimatedRepairCost: '500 ETB',
      resaleValue: '5,200 ETB',
      sellerName: 'Kaleb',
      sellerContact: '0912345678',
    ),
    Device(
      id: '2',
      name: 'Samsung Galaxy S10',
      condition: 'Fair',
      price: 3200,
      imagePath: 'assets/images/samsung.png',
      estimatedRepairCost: '800 ETB',
      resaleValue: '4,000 ETB',
      sellerName: 'Samson',
      sellerContact: '0912345679',
    ),
    Device(
      id: '3',
      name: 'Dell Inspiron Laptop',
      condition: 'Used - Battery weak',
      price: 12500,
      imagePath: 'assets/images/laptopdell.png',
      estimatedRepairCost: '1,200 ETB',
      resaleValue: '14,000 ETB',
      sellerName: 'Hiwot',
      sellerContact: '0912345680',
    ),
    Device(
      id: '4',
      name: 'JBL Bluetooth Speaker',
      condition: 'Like New',
      price: 3800,
      imagePath: 'assets/images/bluetoothspeaker.png',
      estimatedRepairCost: '200 ETB',
      resaleValue: '4,500 ETB',
      sellerName: 'Yared',
      sellerContact: '0912345681',
    ),
    Device(
      id: '5',
      name: 'PlayStation 4 Slim',
      condition: 'Used - minor scratches',
      price: 18000,
      imagePath: 'assets/images/playstation.png',
      estimatedRepairCost: '1,500 ETB',
      resaleValue: '20,000 ETB',
      sellerName: 'Abela',
      sellerContact: '0912345682',
    ),
    Device(
      id: '6',
      name: 'Hisense Smart TV 43"',
      condition: 'Used - Screen slight shadow',
      price: 15500,
      imagePath: 'assets/images/tv.png',
      estimatedRepairCost: '2,000 ETB',
      resaleValue: '18,000 ETB',
      sellerName: 'Almaz',
      sellerContact: '0912345683',
    ),
    Device(
      id: '7',
      name: 'HP EliteBook 840 G3',
      condition: 'Fair - needs keyboard replacement',
      price: 10500,
      imagePath: 'assets/images/hplaptop.png',
      estimatedRepairCost: '900 ETB',
      resaleValue: '12,500 ETB',
      sellerName: 'Eyasu',
      sellerContact: '0912345684',
    ),
  ];

  static void addDevice(Device device) {
    devices.add(device);
  }

  static List<Device> getAllDevices() {
    return devices;
  }
}
