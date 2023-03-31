import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import 'advance_form.dart';
import 'contact_page.dart';

class ContactAndPicker extends StatefulWidget {
  const ContactAndPicker({super.key});

  @override
  State<ContactAndPicker> createState() => _ContactAndPickerState();
}

class _ContactAndPickerState extends State<ContactAndPicker> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  final List<Contact> _contacts = [];
  var selectedIndex = -1;
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.purple;

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contacts',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(103, 80, 164, 0.4),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdvanceForm(),
                    ),
                  );
                },
                title: const Text(
                  'Advance Form',
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Contacts(),
                    ),
                  );
                },
                title: const Text(
                  'Contacts',
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset('assets/images/phone.png'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Create New Contacts',
                style: TextStyle(
                  color: Color.fromARGB(255, 134, 113, 137),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
                  style: TextStyle(
                    color: Color.fromARGB(102, 35, 33, 38),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Divider(
                  thickness: 1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 218, 209, 220),
                          labelText: 'Name',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 117, 133, 160)),
                          hintText: 'Insert Your Name',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 91, 76, 109),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Name cannot be empty!';
                          } else if (value.split(' ').length < 2) {
                            return 'Please enter at least two words for the name!';
                          } else if (!RegExp(r'^[A-Z][a-z]*([ ][A-Z][a-z]*)*$')
                              .hasMatch(value)) {
                            return 'Name must start with a capital letter and only contain letters!';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 219, 207, 221),
                            labelText: 'Nomor',
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 117, 133, 160)),
                            hintText: '+62....',
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 72, 61, 86)))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'phone number cannot be empty!';
                          } else if (!RegExp(r'^0[0-9]{7,14}$')
                              .hasMatch(value)) {
                            return 'Phone number must consist of 8-15 digits and start with 0!';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      buildDatePicker(context),
                      const SizedBox(
                        height: 15,
                      ),
                      buildColorPicker(context),
                      const SizedBox(
                        height: 15,
                      ),
                      buildFilePicker(),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                String nameC = nameController.text;
                                String phoneC = phoneController.text;
                                // check if data already exists in list
                                for (int i = 0; i < _contacts.length; i++) {
                                  if (_contacts[i].name == nameC ||
                                      _contacts[i].phone == phoneC) {
                                    selectedIndex = i;
                                    break;
                                  }
                                }

                                if (selectedIndex != -1) {
                                  setState(() {
                                    _contacts[selectedIndex].name = nameC;
                                    _contacts[selectedIndex].phone = phoneC;
                                    _contacts[selectedIndex].date =
                                        _dueDate.toString();
                                    _contacts[selectedIndex].color =
                                        _currentColor;
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content:
                                          Text('Update Contact Successfully.'),
                                    ),
                                  );
                                } else {
                                  setState(() {
                                    _contacts.add(Contact(
                                      name: nameC,
                                      phone: phoneC,
                                      date: _dueDate.toString(),
                                      color: _currentColor,
                                    ));

                                    //LOG
                                    print(nameC);
                                    print(phoneC);
                                    print(_dueDate.toString());
                                    print(_currentColor.toString());
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Successfully added.'),
                                    ),
                                  );
                                }
                                nameController.clear();
                                phoneController.clear();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 147, 99, 158),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              'Submit',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),

              const Text(
                'List Contacts',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 110, 83, 114),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Widget untuk contact list,
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin:
                        const EdgeInsets.only(right: 15, left: 15, bottom: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: _contacts[index].color,
                        child: Text(
                          _contacts[index].name[0],
                          style: const TextStyle(
                              color: Color.fromARGB(255, 98, 25, 111),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      title: Text(
                        _contacts[index].name,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 69, 36, 74)),
                      ),
                      subtitle: Text(
                          '${_contacts[index].phone} \n Dibuat pada ${_contacts[index].date}'),
                      trailing: SizedBox(
                        width: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  nameController.text = _contacts[index].name;
                                  phoneController.text = _contacts[index].phone;

                                  selectedIndex = index;
                                });
                              },
                              child: const Icon(Icons.edit),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _contacts.removeAt(index);
                                });
                              },
                              child: const Icon(Icons.delete_outline),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Date',
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 94, 65, 99),
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: currentDate,
                    firstDate: DateTime(2002),
                    lastDate: DateTime(currentDate.year + 4),
                  );
                  setState(() {
                    if (selectedDate != null) {
                      _dueDate = selectedDate;
                    }
                  });
                },
                child: const Text('Select'),
              )
            ],
          ),
          Text(
            DateFormat('dd-MM-yyyy').format(_dueDate),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Color',
            style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 94, 65, 99),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: _currentColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(_currentColor),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Pick Your Color'),
                      content: SingleChildScrollView(
                        child: SlidePicker(
                            pickerColor: _currentColor,
                            onColorChanged: (color) {
                              setState(() {
                                _currentColor = color;
                              });
                            }),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Pick Color'),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFilePicker() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'File Picker',
            style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 94, 65, 99),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                _pickFile();
              },
              child: const Text('Pick and Open File'),
            ),
          )
        ],
      ),
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    final file = result.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}

class Contact {
  String name;
  String phone;
  String date;
  Color? color = Colors.purple;

  Contact({
    required this.name,
    required this.phone,
    required this.date,
    this.color,
  });
}
