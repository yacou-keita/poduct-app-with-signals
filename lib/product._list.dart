import 'package:poduct_app_with_signals/product.dart';
import 'package:signals/signals.dart';

class ProductList {
  final _list = signal<List<Product>>([
    Product(title: "Iphone", price: 18000),
    Product(title: "Itel", price: 13000),
    Product(title: "Samsunge", price: 22000),
    Product(title: "Nokia", price: 23000),
  ]);

  get countItem => _list.value.length;
  get value => _list.value;
  set add(Product product) {
    _list.value = [Product(title: "ordinateur", price: 18000)];
  }
}

ProductList productList = ProductList();
