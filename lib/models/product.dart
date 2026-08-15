class Product {

  final int id;

  final String title;

  final double price;

  final String imageUrl;

  final String description;

  final String seller;

  final bool isFavorite;


  const Product({

    required this.id,

    required this.title,

    required this.price,

    required this.imageUrl,

    required this.description,

    required this.seller,

    this.isFavorite = false,

  });


  Product copyWith({

    int? id,

    String? title,

    double? price,

    String? imageUrl,

    String? description,

    String? seller,

    bool? isFavorite,

  }) {

    return Product(

      id: id ?? this.id,

      title: title ?? this.title,

      price: price ?? this.price,

      imageUrl: imageUrl ?? this.imageUrl,

      description: description ?? this.description,

      seller: seller ?? this.seller,

      isFavorite: isFavorite ?? this.isFavorite,

    );

  }

}