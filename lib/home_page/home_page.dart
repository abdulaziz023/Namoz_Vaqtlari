import 'package:flutter/material.dart';

import '../models/namoz_model.dart';
import 'controller/controller.dart';

import 'next_days_times/next_days.dart';
import 'topbar_time/topbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MyController controller;

  @override
  void initState() {
    super.initState();
    controller = MyController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(

        future: controller.getNamozData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return DecoratedBox(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/arab.png"),fit: BoxFit.cover)),
              child: SafeArea(
                child: Column(
                  children: [
                    TopBar(),
                    Expanded(
                      child: ListView(
                        children: [
                          NextDays(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
