import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shop_app/screens/complete_profile/components/complete_profile_form.dart';

void main() {
  testWidgets('CompleteProfileForm validation', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CompleteProfileForm(),
        ),
      ),
    );

    // Fill in the form fields
    await tester.enterText(find.byKey(Key('firstNameFormField')), 'John');
    await tester.enterText(find.byKey(Key('lastNameFormField')), 'Doe');
    await tester.enterText(find.byKey(Key('phoneNumberFormField')), '1234567890');
    await tester.enterText(find.byKey(Key('addressFormField')), '123 Main St');

    // Trigger the form submission
    await tester.tap(find.text('continue'));
    await tester.pump();

    // Verify that the form validation passed
    expect(find.text('This field is required'), findsNothing);
  });
}
