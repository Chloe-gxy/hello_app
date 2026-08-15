import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/product_provider.dart';
import '../widgets/product_card.dart';



class HomePage extends ConsumerStatefulWidget {

  const HomePage({
    super.key,
  });


  @override
  ConsumerState<HomePage> createState() =>
      _HomePageState();

}



class _HomePageState extends ConsumerState<HomePage> {


  @override
  void initState() {

    super.initState();


    Future.microtask(() {

      ref
          .read(productControllerProvider.notifier)
          .loadProducts();

    });

  }


  @override
  Widget build(BuildContext context) {

    final state =
        ref.watch(productControllerProvider);


    if (state.isLoading) {

      return const Scaffold(

        body: Center(
          child: CircularProgressIndicator(),
        ),

      );

    }


    if (state.error != null) {

      return Scaffold(

        body: Center(
          child: Text(state.error!),
        ),

      );

    }


    return Scaffold(

      body: ListView.builder(

        itemCount: state.products.length,

        itemBuilder: (context, index) {

          return ProductCard(

            product: state.products[index],

          );

        },

      ),

    );

  }

}