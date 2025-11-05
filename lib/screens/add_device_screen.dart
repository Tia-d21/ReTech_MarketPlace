import 'package:flutter/material.dart';
import '../models/device_model.dart';

class AddDeviceScreen extends StatefulWidget {
  const AddDeviceScreen({super.key});

  @override
  State<AddDeviceScreen> createState() => _AddDeviceScreenState();
}

class _AddDeviceScreenState extends State<AddDeviceScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _conditionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _repairCostController = TextEditingController();
  final TextEditingController _resaleValueController = TextEditingController();
  final TextEditingController _sellerNameController = TextEditingController();
  final TextEditingController _sellerContactController = TextEditingController();

  String? _selectedImagePath;

  final Map<String, String> _imageOptions = {
    'iPhone': 'assets/images/iphone.png',
    'Samsung': 'assets/images/samsung.png',
    'Dell Laptop': 'assets/images/laptopdell.png',
    'HP Laptop': 'assets/images/hplaptop.png',
    'Bluetooth Speaker': 'assets/images/bluetoothspeaker.png',
    'PlayStation': 'assets/images/playstation.png',
    'TV': 'assets/images/tv.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Device'),
        backgroundColor: Colors.green.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // DEVICE INFO
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Device Name'),
                  validator: (value) =>
                  value!.isEmpty ? 'Enter device name' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _conditionController,
                  decoration: const InputDecoration(labelText: 'Condition'),
                  validator: (value) =>
                  value!.isEmpty ? 'Enter device condition' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _priceController,
                  decoration: const InputDecoration(labelText: 'Price (ETB)'),
                  keyboardType: TextInputType.number,
                  validator: (value) =>
                  value!.isEmpty ? 'Enter device price' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _repairCostController,
                  decoration:
                  const InputDecoration(labelText: 'Estimated Repair Cost'),
                  validator: (value) =>
                  value!.isEmpty ? 'Enter repair cost' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _resaleValueController,
                  decoration: const InputDecoration(labelText: 'Resale Value'),
                  validator: (value) =>
                  value!.isEmpty ? 'Enter resale value' : null,
                ),
                const SizedBox(height: 12),

                // SELLER INFO
                TextFormField(
                  controller: _sellerNameController,
                  decoration: const InputDecoration(labelText: 'Seller Name'),
                  validator: (value) =>
                  value!.isEmpty ? 'Enter seller name' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _sellerContactController,
                  decoration:
                  const InputDecoration(labelText: 'Seller Contact'),
                  keyboardType: TextInputType.phone,
                  validator: (value) =>
                  value!.isEmpty ? 'Enter seller contact' : null,
                ),
                const SizedBox(height: 16),

                // IMAGE SELECTION
                DropdownButtonFormField<String>(
                  value: _selectedImagePath,
                  items: _imageOptions.entries
                      .map((entry) => DropdownMenuItem<String>(
                    value: entry.value,
                    child: Text(entry.key),
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedImagePath = value;
                    });
                  },
                  decoration:
                  const InputDecoration(labelText: 'Select Device Image'),
                  validator: (value) =>
                  value == null ? 'Select an image' : null,
                ),
                const SizedBox(height: 16),

                // LIVE IMAGE PREVIEW
                if (_selectedImagePath != null)
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        _selectedImagePath!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final newDevice = Device(
                        id: DateTime.now()
                            .millisecondsSinceEpoch
                            .toString(), // unique id
                        name: _nameController.text,
                        condition: _conditionController.text,
                        price: double.parse(_priceController.text),
                        imagePath: _selectedImagePath,
                        estimatedRepairCost: _repairCostController.text,
                        resaleValue: _resaleValueController.text,
                        sellerName: _sellerNameController.text,
                        sellerContact: _sellerContactController.text,
                      );
                      DeviceData.addDevice(newDevice);
                      Navigator.pop(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                  ),
                  child: const Text('Add Device'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
