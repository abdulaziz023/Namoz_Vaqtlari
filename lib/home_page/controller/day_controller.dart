import 'package:dio/dio.dart';
import '../../constants/config.dart';
import '../../models/namoz_model.dart';

class DayController {

  NamozModel? region;
  NamozModel? date;
  NamozModel? bomdod;
  NamozModel? quyosh;
  NamozModel? peshin;
  NamozModel? asr;
  NamozModel? shom;
  NamozModel? xufton;


  Future<void> getDayNamozData() async {
    Dio dio = Dio();
    Response response = await dio
        .get("${AppConfig.namozvaqtiBaseUrl}${AppConfig.namozvaqtiApiKeyDay}");
    date = NamozModel.fromJson(response.data[0]);
    region = NamozModel.fromJson(response.data[1]);
    quyosh = NamozModel.fromJson(response.data[2]);
    bomdod = NamozModel.fromJson(response.data[3]);
    peshin = NamozModel.fromJson(response.data[4]);
    asr = NamozModel.fromJson(response.data[5]);
    shom = NamozModel.fromJson(response.data[6]);
    xufton = NamozModel.fromJson(response.data[7]);
    print(response);
  }

  @override
  String toString() {
    return 'DayController{region: $region, date: $date, bomdod: $bomdod, quyosh: $quyosh, peshin: $peshin, asr: $asr, shom: $shom, xufton: $xufton}';
  }
}
