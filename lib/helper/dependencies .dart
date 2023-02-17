import 'package:food_delivery/utils/app_constant.dart';
import 'package:get/get.dart';

import '../controllers/popular_product_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/popular_product_repo.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
