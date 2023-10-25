import 'package:crypto_coin_list/repositories/crypto_coins/models/crypto_coin.dart';

abstract class AbstractCoinRepository {
  Future<List<CryptoCoin>> getCoinList();
}