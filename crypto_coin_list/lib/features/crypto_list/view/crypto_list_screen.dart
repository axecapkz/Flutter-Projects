import 'package:crypto_coin_list/features/crypto_list/widgets/crypto_coin_tile.dart';
import 'package:crypto_coin_list/repositories/crypto_coins/crypto_coin_repository.dart';
import 'package:crypto_coin_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoCurrencyScreen extends StatefulWidget {
  const CryptoCurrencyScreen({super.key, required this.title});
  final String title;

  @override
  State<CryptoCurrencyScreen> createState() => _CryptoCurrencyScreenState();
}

class _CryptoCurrencyScreenState extends State<CryptoCurrencyScreen> {

  List<CryptoCoin>? _cryptoCoinsList;
@override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: (_cryptoCoinsList == null) ? const Center(child: CircularProgressIndicator()) :
      ListView.separated(
        padding: const EdgeInsets.only(top: 16),
        itemCount: _cryptoCoinsList!.length,
        separatorBuilder: (context, index) => const Divider(thickness: 0.3),
        itemBuilder: (context, i) {
          final coin  = _cryptoCoinsList![i];
          return CryptoCoinTile(coin: coin);
        },
      ),
    );
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await CryptoCoinRepository().getCoinList();
    setState(() {});
  }
}