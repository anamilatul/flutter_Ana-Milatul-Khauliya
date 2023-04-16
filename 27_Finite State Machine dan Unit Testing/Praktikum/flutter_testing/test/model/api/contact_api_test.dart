import 'package:flutter_testing/model/api/contact_api.dart';
import 'package:flutter_testing/model/contact_model.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'contact_api_test.mocks.dart';

@GenerateMocks([ContactAPI])
void main() {
  group('ContactAPI', () {
    ContactAPI contactAPI = MockContactAPI(); //object
    test('get all contacts return data', () async {
      //proses getContact dengan when
      when(
        contactAPI.getContacts().then(
            (_) async => <Contact>[Contact(id: 1, name: 'a', phone: '0')]),
      );
      var contacts = await contactAPI.getContacts();
      expect(contacts.isNotEmpty, true); //expect buat cek hasil
    });
  });
}
