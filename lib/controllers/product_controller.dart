import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';
import '../repositories/product_repository.dart';
import 'product_state.dart';


class ProductController extends Notifier<ProductState> {


  final ProductRepository repository =
      ProductRepository();



  @override
  ProductState build() {

    return const ProductState(
      products: [],
    );

  }



  Future<void> loadProducts() async {


    state = state.copyWith(
      isLoading: true,
      error: null,
    );


    try {


      final products =
          await repository.getProducts();



      state = state.copyWith(
        products: products,
        isLoading: false,
      );


    } catch (e) {


      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );


    }


  }



  void toggleFavorite(int productId) {
  final updatedProducts = state.products.map((product) {

    if (product.id == productId) {
      return product.copyWith(
        isFavorite: !product.isFavorite,
      );
    }

    return product;

  }).toList();


  state = state.copyWith(
    products: updatedProducts,
  );
}


}