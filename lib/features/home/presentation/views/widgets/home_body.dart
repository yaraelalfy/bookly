import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller.dart';
import 'package:bookly/features/home/presentation/views/widgets/list.dart';
import 'package:flutter/material.dart';

class home_body extends StatelessWidget {
  const home_body({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child:  Column(//mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            app_bar(),
            list(),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 30,bottom: 20),
              child: Text("Best Seller",style: Styles.textStyle18,),
            )
          ],
        ),),
        best_seller()
      ],
    );

  }
}
