import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/sign_in/components/sign_form.dart';


void main() {
  group('demoProducts', () {
    test('should contain the correct number of products', () {
      // Arrange & Act
      final productCount = demoProducts.length;
      final expectedProductCount = 4;

      // Assert
      expect(productCount, equals(expectedProductCount));
    });

    test('should have the correct titles', () {
      // Arrange
      final expectedTitles = [
        "Foundation for Light Skinned™",
        "Sanitary Pads - Kotexv Long",
        "Sanitary Tampon - Kotex",
        "Face Powder",
      ];

      // Act
      final titles = demoProducts.map((product) => product.title).toList();

      // Assert
      expect(titles, equals(expectedTitles));
    });
  });

  group('SignForm', () {
    late SignForm signForm;

    setUp(() {
      signForm = SignForm();
    });

    testWidgets('Email validation', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: signForm)));

      // Provide an invalid email address
      await tester.enterText(find.byKey(ValueKey('emailFormField')), 'invalid_email');
      await tester.pump();

      // Trigger form validation
      await tester.tap(find.text('Log In'));
      await tester.pump();

      // Verify that the error is displayed
      expect(find.text('Invalid email address. Please enter a valid email.'), findsOneWidget);
    });

    testWidgets('Password validation', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: signForm)));

      // Provide a password with fewer than 8 characters
      await tester.enterText(find.byKey(ValueKey('passwordFormField')), '1234567');
      await tester.pump();

      // Trigger form validation
      await tester.tap(find.text('Log In'));
      await tester.pump();

      // Verify that the error is displayed
      expect(find.text('Password must be at least 8 characters.'), findsOneWidget);
    });

    testWidgets('Successful form submission', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: signForm)));

      // Provide valid email and password
      await tester.enterText(find.byKey(ValueKey('emailFormField')), 'test@example.com');
      await tester.enterText(find.byKey(ValueKey('passwordFormField')), 'password123');
      await tester.pump();

      // Trigger form submission
      await tester.tap(find.text('Log In'));
      await tester.pumpAndSettle();

      // Verify that the login success screen is pushed
      expect(find.byType(LoginSuccessScreen), findsOneWidget);
    });
  });


}

