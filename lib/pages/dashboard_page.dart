import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:skeleton/views/aside_social.dart';
import 'package:skeleton/views/header.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          AutoRouter(),
          //AsideSocial(), Header()
        ],
      ),
    );
  }
}
