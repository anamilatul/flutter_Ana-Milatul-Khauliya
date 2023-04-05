import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var formKey = GlobalKey<FormState>();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var messageController = TextEditingController();

  final Data _formData = Data();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Escoot',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.all(25),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/escoot.png',
                  fit: BoxFit.cover,
                ),
                const Text(
                  '\t\tWelcome to our electric scooter store! We offer a wide range of high-quality electric scooters that are both eco-friendly and stylish. Browse through our collection and find the perfect scooter for your needs. Start riding and join the electric revolution!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Contact Us',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/contact_us.png',
                  fit: BoxFit.cover,
                  height: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'How can we help you ?',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'It looks like you have problems with our system.We are here to help you, so please get in touch with us.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: TextFormField(
                              controller: firstNameController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: 'First Name',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your first name';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _formData.firstName = value!;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: TextFormField(
                              controller: lastNameController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: 'Last Name',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your last name';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _formData.lastName = value!;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Email Address',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!value.contains('@')) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _formData.email = value!;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: messageController,
                        keyboardType: TextInputType.text,
                        maxLines: 5,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Message',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your message';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _formData.message = value!;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              _showAlertDialog();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          child: const Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Data'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("First Name : ${_formData.firstName}"),
                Text("Last Name : ${_formData.lastName}"),
                Text("Email : ${_formData.email}"),
                Text("Message : ${_formData.message}"),
              ],
            ),
            actions: [
              TextButton(
                child: const Text("OK"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        });
  }
}

class Data {
  String firstName = '';
  String lastName = '';
  String email = '';
  String message = '';
}
