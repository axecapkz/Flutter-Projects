import 'package:crypto_coin_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:dio/dio.dart';

class CryptoCoinRepository implements AbstractCoinRepository {
  
  @override
  Future<List<CryptoCoin>> getCoinList() async {
    final response = await Dio().get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,SHIB,DOGE,AID,CYBER,SOL,PEPE&tsyms=USD'
    );
    // debugPrint(response.toString());
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries.map((e) {
      final usdData = (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imageURL = usdData['IMAGEURL'];
    return CryptoCoin(
      name: e.key, 
      priceInUSD: price,
      imageURL: 'https://www.cryptocompare.com/$imageURL',
      );
      }).toList();
      return cryptoCoinsList; 
  }
}