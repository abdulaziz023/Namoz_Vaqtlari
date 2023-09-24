import 'dart:convert';

class NamozModel {
  final String? region;
  final String? date;
  final String? weekday;
  final Times? times;

  NamozModel({
    required this.region,
    required this.date,
    required this.weekday,
    required this.times,
  });

  factory NamozModel.fromJson(Map<String, Object?> map) {
    return NamozModel(
      region: map['region'] as String,
      date: map['date'] as String,
      weekday: map['weekday'] as String,
      times: map['times'] != null
          ? Times.fromJson(map["times"] as Map<String, Object?>)
          : null,
    );
  }

  @override
  String toString() {
    return 'DayModel{region: $region,'
        'date: $date,'
        'weekday: $weekday,'
        'times: $times}';
  }
}

class Times {
  final String? tong_saharlik;
  final String? quyosh;
  final String? peshin;
  final String? asr;
  final String? shom_iftor;
  final String? hufton;

  const Times({
    required this.tong_saharlik,
    required this.quyosh,
    required this.peshin,
    required this.asr,
    required this.shom_iftor,
    required this.hufton,
  });

  factory Times.fromJson(Map<String, Object?> map) {
    return Times(
      tong_saharlik: map['tong_saharlik'] as String,
      quyosh: map['quyosh'] as String,
      peshin: map['peshin'] as String,
      asr: map['asr'] as String,
      shom_iftor: map['shom_iftor'] as String,
      hufton: map['hufton'] as String,
    );
  }

  @override
  String toString() {
    return 'Times{'
        'tong_saharlik: $tong_saharlik,'
        'quyosh: $quyosh, '
        'peshin: $peshin,'
        'asr: $asr, '
        'shom_iftor: $shom_iftor,'
        'hufton: $hufton}';
  }
}
