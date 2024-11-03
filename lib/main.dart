import 'package:base_widgets/components/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mileage_run/constants.dart';
import 'package:mileage_run/hooks/use_signin.dart';
import 'package:mileage_run/pages/top_page.dart';
import 'package:mileage_run/providers/auth_provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initializeDateFormatting('ja_JP');
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        ref.watch(userEmailProvider.notifier).state = null;
      } else {
        ref.watch(userEmailProvider.notifier).state = user.email!;
      }
    });

    String? userEmail = ref.watch(userEmailProvider.notifier).state;

    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: userEmail == null ? const TopPage() : const SignInApp(),
      // home: const SignInApp(),
    );
  }
}

class SignInApp extends HookWidget {
  const SignInApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: SizedBox(
          width: 200,
          height: 30,
          child: CustomButton(
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            borderRadius: BorderRadius.circular(8),
            title: 'Google',
            onPressed: () async {
              await signInGoogle(context);
            },
          ),
        ),
      ),
    );
  }
}
