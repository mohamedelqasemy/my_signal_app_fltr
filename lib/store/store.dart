import 'package:my_signal_app_fltr/model/Product.model.dart';
import 'package:signals/signals.dart';

class Store {
  final products = signal<List<Product>>([
    Product(id: 1, name: "Computer", price: 3200.0, selected: false, url: "https://m.media-amazon.com/images/I/8141dmCDmiL._AC_UL480_FMwebp_QL65_.jpg"),
    Product(id: 2, name: "Printer", price: 1200.0, selected: true, url: "https://m.media-amazon.com/images/I/51BBLePpyHL._AC_UL480_FMwebp_QL65_.jpg"),
    Product(id: 3, name: "SmartPhone", price: 3200.0, selected: false, url: "https://m.media-amazon.com/images/I/61aSeGGdwfL._AC_UL480_FMwebp_QL65_.jpg"),
  ]);

  void select(Product product) {
    final prod = product.copyWith(selected: !product.selected);
    final prods = products.value.map((p) => p == product ? prod : p);
    products.value = [...prods];
  }

  addRandomProducts() {
    final prod = Product(
      id: products.value.length,
      name: "OUD Parfum",
      price: 500,
      selected: false,
      url: "https://m.media-amazon.com/images/I/61aSeGGdwfL._AC_UL480_FMwebp_QL65_.jpg",
    );

    products.value = [...products.value, prod];
  }

  final totalPrices = computed(
    () => store.products.value
        .where((p) => p.selected)
        .map((p) => p.price)
        .reduce((sum, p) => sum + p),
  );

  final selectedProducts = computed(
    () => store.products.value.where((p) => p.selected).length,
  );
}

final Store store = Store();
