import 'package:flutter/material.dart';

import '../controller/controller.dart';

class NextDays extends StatefulWidget {
  const NextDays({super.key});

  @override
  State<NextDays> createState() => _NextDaysState();
}

class _NextDaysState extends State<NextDays> {
  late final MyController weekController;

  @override
  void initState() {
    super.initState();
    weekController = MyController();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: weekController.getNamozData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                ExpansionTile(
                  backgroundColor: Colors.blue,
                  collapsedBackgroundColor: Colors.blue,
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title:
                      Text(weekController.nomozModelDush!.weekday.toString()),
                  children: [
                    Text(
                      "Sana ${weekController.nomozModelDush!.date}",
                    ),
                    Text(
                      "Bomdod ${weekController.nomozModelDush!.times!.tong_saharlik}",
                    ),
                    Text(
                      "Quyosh ${weekController.nomozModelDush!.times!.quyosh}",
                    ),
                    Text(
                      "Peshin ${weekController.nomozModelDush!.times!.peshin}",
                    ),
                    Text(
                      "Asr ${weekController.nomozModelDush!.times!.asr}",
                    ),
                    Text(
                      "shom ${weekController.nomozModelDush!.times!.shom_iftor}",
                    ),
                    Text(
                      "Xufton ${weekController.nomozModelDush!.times!.hufton}",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ExpansionTile(
                  backgroundColor: Colors.blue,
                  collapsedBackgroundColor: Colors.blue,
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title:
                      Text(weekController.nomozModelSesh!.weekday.toString()),
                  children: [
                    Text(
                      "Sana ${weekController.nomozModelSesh!.date}",
                    ),
                    Text(
                      "Bomdod ${weekController.nomozModelSesh!.times!.tong_saharlik}",
                    ),
                    Text(
                      "Quyosh ${weekController.nomozModelSesh!.times!.quyosh}",
                    ),
                    Text(
                      "Peshin ${weekController.nomozModelSesh!.times!.peshin}",
                    ),
                    Text(
                      "Asr ${weekController.nomozModelSesh!.times!.asr}",
                    ),
                    Text(
                      "shom ${weekController.nomozModelSesh!.times!.shom_iftor}",
                    ),
                    Text(
                      "Xufton ${weekController.nomozModelSesh!.times!.hufton}",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ExpansionTile(
                  backgroundColor: Colors.blue,
                  collapsedBackgroundColor: Colors.blue,
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title:
                      Text(weekController.nomozModelChor!.weekday.toString()),
                  children: [
                    Text(
                      "Sana ${weekController.nomozModelChor!.date}",
                    ),
                    Text(
                      "Bomdod ${weekController.nomozModelChor!.times!.tong_saharlik}",
                    ),
                    Text(
                      "Quyosh ${weekController.nomozModelChor!.times!.quyosh}",
                    ),
                    Text(
                      "Peshin ${weekController.nomozModelChor!.times!.peshin}",
                    ),
                    Text(
                      "Asr ${weekController.nomozModelChor!.times!.asr}",
                    ),
                    Text(
                      "shom ${weekController.nomozModelChor!.times!.shom_iftor}",
                    ),
                    Text(
                      "Xufton ${weekController.nomozModelChor!.times!.hufton}",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ExpansionTile(
                  backgroundColor: Colors.blue,
                  collapsedBackgroundColor: Colors.blue,
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: Text(weekController.nomozModelPay!.weekday.toString()),
                  children: [
                    Text(
                      "Sana ${weekController.nomozModelPay!.date}",
                    ),
                    Text(
                      "Bomdod ${weekController.nomozModelPay!.times!.tong_saharlik}",
                    ),
                    Text(
                      "Quyosh ${weekController.nomozModelPay!.times!.quyosh}",
                    ),
                    Text(
                      "Peshin ${weekController.nomozModelPay!.times!.peshin}",
                    ),
                    Text(
                      "Asr ${weekController.nomozModelPay!.times!.asr}",
                    ),
                    Text(
                      "shom ${weekController.nomozModelPay!.times!.shom_iftor}",
                    ),
                    Text(
                      "Xufton ${weekController.nomozModelPay!.times!.hufton}",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ExpansionTile(
                  backgroundColor: Colors.blue,
                  collapsedBackgroundColor: Colors.blue,
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: Text(weekController.nomozModelJum!.weekday.toString()),
                  children: [
                    Text(
                      "Sana ${weekController.nomozModelJum!.date}",
                    ),
                    Text(
                      "Bomdod ${weekController.nomozModelJum!.times!.tong_saharlik}",
                    ),
                    Text(
                      "Quyosh ${weekController.nomozModelJum!.times!.quyosh}",
                    ),
                    Text(
                      "Peshin ${weekController.nomozModelJum!.times!.peshin}",
                    ),
                    Text(
                      "Asr ${weekController.nomozModelJum!.times!.asr}",
                    ),
                    Text(
                      "shom ${weekController.nomozModelJum!.times!.shom_iftor}",
                    ),
                    Text(
                      "Xufton ${weekController.nomozModelJum!.times!.hufton}",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ExpansionTile(
                  backgroundColor: Colors.blue,
                  collapsedBackgroundColor: Colors.blue,
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title:
                      Text(weekController.nomozModelShan!.weekday.toString()),
                  children: [
                    Text(
                      "Sana ${weekController.nomozModelShan!.date}",
                    ),
                    Text(
                      "Bomdod ${weekController.nomozModelShan!.times!.tong_saharlik}",
                    ),
                    Text(
                      "Quyosh ${weekController.nomozModelShan!.times!.quyosh}",
                    ),
                    Text(
                      "Peshin ${weekController.nomozModelShan!.times!.peshin}",
                    ),
                    Text(
                      "Asr ${weekController.nomozModelShan!.times!.asr}",
                    ),
                    Text(
                      "shom ${weekController.nomozModelShan!.times!.shom_iftor}",
                    ),
                    Text(
                      "Xufton ${weekController.nomozModelShan!.times!.hufton}",
                    ),
                  ],
                ),
                 const SizedBox(
                  height: 10,
                ),
                ExpansionTile(
                  backgroundColor: Colors.blue,
                  collapsedBackgroundColor: Colors.blue,
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: Text(weekController.nomozModelYak!.weekday.toString()),
                  children: [
                    Text(
                      "Sana ${weekController.nomozModelYak!.date}",
                    ),
                    Text(
                      "Bomdod ${weekController.nomozModelYak!.times!.tong_saharlik}",
                    ),
                    Text(
                      "Quyosh ${weekController.nomozModelYak!.times!.quyosh}",
                    ),
                    Text(
                      "Peshin ${weekController.nomozModelYak!.times!.peshin}",
                    ),
                    Text(
                      "Asr ${weekController.nomozModelYak!.times!.asr}",
                    ),
                    Text(
                      "Shom ${weekController.nomozModelYak!.times!.shom_iftor}",
                    ),
                    Text(
                      "Xufton ${weekController.nomozModelYak!.times!.hufton}",
                    ),
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
