import 'package:user_social_profile/user_social_profile.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
   // final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('change value after 1 sec delay', () {
      expect(Validate.delayValueChange(),null);
    });
  });
}
