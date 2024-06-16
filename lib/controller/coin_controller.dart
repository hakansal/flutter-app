import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import '../model/coin_model.dart';

class CoinController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<Coin> coinlist = <Coin>[].obs;

  @override
  onInit() {
    super.onInit();
    getcoin();
  }

  getcoin() async {
    try {
      isLoading(true);
      var response = await http.get(Uri.parse(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&locale=en'));

      List<Coin> coins = coinFromJson(response.body);
      coinlist.value = coins;
    } finally {
      isLoading(false);
    }
  }
}
