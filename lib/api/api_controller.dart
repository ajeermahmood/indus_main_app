import "dart:convert";

import 'package:dio/dio.dart';
import 'package:indus_app/model/banner_model.dart';

class ApiClass {
  static const baseUrlMobile = 'https://indusre.com/mobile_app_new/';

  final dio = Dio();

  Future<List<BannerModel>> getAllBanners() async {
    var url = "${baseUrlMobile}get_all_banners.php";

    Response response = await dio.get(url);

    List<BannerModel> bannersList = response.data
        .map<BannerModel>((req) => BannerModel.fromJson(jsonEncode(req)))
        .toList();

    return bannersList;
  }
}
