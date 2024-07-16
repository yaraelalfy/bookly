import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestseller_list.dart';
import 'package:bookly/features/home/presentation/views/widgets/list.dart';
import 'package:flutter/material.dart';

class items extends StatelessWidget {
  const items({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //SizedBox(child:BestSeller_list()),
          SizedBox(width: 155,height: 120,child: BestSeller_list(),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width:200,child: Text("Harry potter and the Goblet of Fire",style: Styles.textStyle20,maxLines: 2,overflow: TextOverflow.ellipsis,)),
              Text("J.K.Rowling",style: Styles.textStyle14,),
              const SizedBox(height: 2,),
              const Row(
                children: [
                  Text("\$19.99",style: Styles.textStyle_20,),
                  SizedBox(width: 25,),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      Text("4.8",style: Styles.textStyle16,),
                      Text("(2390)",style: Styles.textStyle14)
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
