import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
          flex: 1,
          child: SizedBox(
            height: 56.3,
            child: DropdownButton(
                iconEnabledColor: Colors.orange,
                isExpanded: true,
                underline: Container(height: 1, color: Colors.orange),
                items: [
                  DropdownMenuItem(
                    child: Text('Real'),
                    value: 'real',
                  ),
                  DropdownMenuItem(child: Text('USD'), value: 'dolar')
                ],
                value: 'real',
                onChanged: (value) {}),
          )),
      SizedBox(width: 10),
      Expanded(
        flex: 2,
        child: TextField(
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.orange)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
          ),
        ),
      ),
    ]);
  }
}
