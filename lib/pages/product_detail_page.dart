import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/product_provider.dart';
import '../models/product.dart';


class ProductDetailPage extends ConsumerWidget {

  final int productId;

  
  const ProductDetailPage({

    super.key,

    required this.productId,

    
  });


  




 
  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {

    final product = ref
    .watch(productControllerProvider)
    .products
    .firstWhere(
      (item) => item.id == productId,
    );


    return Scaffold(

      appBar: AppBar(

        title: Text(
          product.title,
        ),

      ),



      body: Padding(

        padding: const EdgeInsets.all(16),


        child: SingleChildScrollView(

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,


            children: [


              Image.network(

                product.imageUrl,

                height: 250,

                width: double.infinity,

                fit: BoxFit.cover,

              ),



              const SizedBox(height: 20),



              Text(

                product.title,

                style: const TextStyle(

                  fontSize: 28,

                  fontWeight: FontWeight.bold,

                ),

              ),



              const SizedBox(height: 10),



              Text(

                "￥${product.price}",

                style: const TextStyle(

                  fontSize: 22,

                ),

              ),



              const SizedBox(height: 10),



              Text(

                product.description,

              ),



              const SizedBox(height: 20),



              Text(

                "卖家：${product.seller}",

              ),



              const SizedBox(height: 20),



              Row(

                children: [


                  ElevatedButton(

                    onPressed: () {

                      ref
                        .read(productControllerProvider.notifier)
                        .toggleFavorite(product.id);

                    },


                    child: Text(

                      product.isFavorite

                          ? "♥ 已收藏"

                          : "♡ 收藏",

                    ),

                  ),



                  const SizedBox(width: 20),



                  ElevatedButton(

                    onPressed: () {


                      ScaffoldMessenger.of(context)

                          .showSnackBar(

                        const SnackBar(

                          content: Text(

                            "购买成功！",

                          ),

                        ),

                      );


                    },


                    child: const Text(

                      "🛒 立即购买",

                    ),

                  ),


                ],

              ),

            ],

          ),

        ),

      ),

    );

  }
}