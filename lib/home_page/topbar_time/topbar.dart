import 'package:flutter/material.dart';
import 'package:namoz_vaqtlari/home_page/controller/controller.dart';

import '../controller/day_controller.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  late final MyController dayController;
  @override
  void initState() {
    super.initState();
    dayController = MyController();

  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: dayController.getNamozData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding:  EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  dayController.nomozModelDush!.region.toString(),
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("${dayController.nomozModelDush?.date}"),
                        Text("Bomdod${dayController.nomozModelDush?.times?.tong_saharlik}"),
                        Text("Quyosh${dayController.nomozModelDush?.times?.quyosh}"),
                        Text("Peshin${dayController.nomozModelDush?.times?.peshin}"),
                        Text("Asr${dayController.nomozModelDush?.times?.asr}"),
                        Text("Shom${dayController.nomozModelDush?.times?.shom_iftor}"),
                        Text("Xufton${dayController.nomozModelDush?.times?.hufton}"),

                      ],
                    ),
                    SizedBox(
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.shield_moon, size: 40),
                          TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.blue)),
                            onPressed: () {
                              print("object");
                            },
                            child: const Text(
                              "Bir oylik namoz vaqtlari",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
