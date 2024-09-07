class Product {
  late final String title;
  late double price;
  bool isSelected = false;
  Product({
    required this.title,
    required this.price,
  });

  get shortLabel => title[0].toUpperCase();

  void check() {
    isSelected = !isSelected;
  }

  Product copyWith({
    String? title,
    double? price,
    bool? isSelected,
  }) {
    return Product(
      title: title ?? this.title,
      price: price ?? this.price,
    );
  }
}
