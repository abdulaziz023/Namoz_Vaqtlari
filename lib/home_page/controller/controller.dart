import 'package:dio/dio.dart';
import '../../constants/config.dart';
import '../../models/namoz_model.dart';

class MyController {
  NamozModel? nomozModelDush;
  NamozModel? nomozModelSesh;
  NamozModel? nomozModelChor;
  NamozModel? nomozModelPay;
  NamozModel? nomozModelJum;
  NamozModel? nomozModelShan;
  NamozModel? nomozModelYak;



  Future<void> getNamozData() async {
    Dio dio = Dio();
    Response response = await dio
        .get("${AppConfig.namozvaqtiBaseUrl}${AppConfig.namozvaqtiApiKey}");

    nomozModelDush = NamozModel.fromJson(response.data[0]);
    nomozModelSesh = NamozModel.fromJson(response.data[1]);
    nomozModelChor = NamozModel.fromJson(response.data[2]);
    nomozModelPay = NamozModel.fromJson(response.data[3]);
    nomozModelJum = NamozModel.fromJson(response.data[4]);
    nomozModelShan = NamozModel.fromJson(response.data[5]);
    nomozModelYak = NamozModel.fromJson(response.data[6]);
  }

  @override
  String toString() {
    return 'MyController{nomozModelDush: $nomozModelDush, nomozModelSesh: $nomozModelSesh, nomozModelChor: $nomozModelChor, nomozModelPay: $nomozModelPay, nomozModelJum: $nomozModelJum, nomozModelShan: $nomozModelShan, nomozModelYak: $nomozModelYak}';
  }
}
