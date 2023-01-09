import 'package:currency_converter/src/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<CurrencyModel> currencies;

  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();

  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  HomeController() {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    }

    if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    }
  }
}
