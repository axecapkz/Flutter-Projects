import 'package:crypto_coin_list/features/crypto_list/widgets/crypto_coin_tile.dart';
import 'package:flutter/material.dart';

class CryptoCurrencyScreen extends StatefulWidget {
  const CryptoCurrencyScreen({super.key, required this.title});
  final String title;

  @override
  State<CryptoCurrencyScreen> createState() => _CryptoCurrencyScreenState();
}

class _CryptoCurrencyScreenState extends State<CryptoCurrencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: 8,
        separatorBuilder: (context, index) => const Divider(thickness: 0.3, color: Colors.amber, ),
        itemBuilder: (context, i) {
          const coinName = 'Bitcoin';
          return const  CryptoCoinTile(coinName: coinName);
        },
      ),
    );
  }
}