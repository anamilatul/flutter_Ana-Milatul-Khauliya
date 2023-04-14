import 'package:flutter/material.dart';
import 'package:project_rest_api/service/service.dart';

class Prioritas1 extends StatefulWidget {
  const Prioritas1({super.key});

  @override
  State<Prioritas1> createState() => _Prioritas1State();
}

class _Prioritas1State extends State<Prioritas1> {
  String name = '';
  String phone = '';
  String? result;
  var formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soal Prioritas 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                    onChanged: (value) {
                      name = value;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone',
                    ),
                    onChanged: (value) {
                      phone = value;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final service = Service();
                    final _result = await service.createContact(
                        name: _nameController.text,
                        phone: _phoneController.text);
                    result = _result.toString();
                    setState(() {});
                  },
                  child: const Text('Post'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final service = Service();
                    final _result = await service.getContact();
                    result = _result.toString();
                    setState(() {});
                  },
                  child: const Text('Fetch'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final service = Service();
                    final _result = await service.putContact();
                    result = _result.toString();
                    setState(() {});
                  },
                  child: const Text('PUT'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
