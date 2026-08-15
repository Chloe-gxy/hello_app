import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/product_controller.dart';
import '../controllers/product_state.dart';


final productControllerProvider =
    NotifierProvider<ProductController, ProductState>(

      ProductController.new,

    );