import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product.dart';
import '../pages/product_detail_page.dart';
import '../providers/product_provider.dart';


class ProductCard extends ConsumerWidget {


  final Product product;

  
  const ProductCard({

    super.key,

    required this.product,

    
    

  });



  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  )  {


   return Card(
  child: InkWell(

    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductDetailPage(
            productId: product.id,
            
            
          ),
        ),
      );
    },

    child: Padding(
      padding: const EdgeInsets.all(16),

      child: Row(
        children: [

          Image.network(
            product.imageUrl,

            width: 80,

            height: 80,

            fit: BoxFit.cover,
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Text(product.title),
          ),


          IconButton(
            icon: Icon(
              product.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border,
            ),

            onPressed: () {

              ref
              .read(productControllerProvider.notifier)
              .toggleFavorite(product.id);

            },
          ),

        ],
      ),
    ),
  ),
);

  }


}