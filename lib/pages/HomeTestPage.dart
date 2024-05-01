import 'package:ch9_listview/pages/header.dart';
import 'package:ch9_listview/pages/row.dart';
import 'package:ch9_listview/pages/row_with_card.dart';
import 'package:flutter/material.dart';

class HomeMainTest extends StatelessWidget {
  const HomeMainTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return HeaderWidget(index: index);
              } else if (index >= 1 && index <= 3) {
                return RowWithCardWidget(index: index);
              } else {
                return RowWidget(index: index);
              }
            }),
      ),
    );
  }
}
