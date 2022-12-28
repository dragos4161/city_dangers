import 'package:auth_app/src/models/index.dart';
import 'package:auth_app/src/presentation/containers/user_container.dart';
import 'package:auth_app/src/presentation/home_page.dart';
import 'package:auth_app/src/presentation/login_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? appUser) {
        if (appUser == null) {
          return const LoginPage();
        } else {
          return const HomePage();
        }
      },
    );
  }
}
