import 'package:bookly/features/home/presentation/views/widgets/items.dart';
import 'package:flutter/material.dart';

class best_seller extends StatelessWidget {
  const best_seller({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context,index){
      return items();
    },childCount: 10,
    ));
  }
}
