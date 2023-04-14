class Contacts {
  int? id;
  String name;
  String phone;
  Contacts({
    this.id,
    required this.name,
    required this.phone,
  });

  factory Contacts.fromJson(Map<String, dynamic> json) {
    return Contacts(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
    );
  }
}
