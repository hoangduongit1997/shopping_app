import '../model/product.dart';

class ProductsRepository {
  static List<Product> _allProducts = <Product>[
    Product(
      category: Category.accessories,
      id: 0,
      name: 'Vagabond sack',
      price: 120,
    ),
    Product(
      category: Category.home,
      id: 1,
      name: 'Gilt desk trio',
      price: 58,
    ),
    Product(
      category: Category.clothing,
      id: 2,
      name: 'Cerise scallop tee',
      price: 42,
    ),
    Product(
      category: Category.accessories,
      id: 3,
      name: 'Vagabond sack',
      price: 120,
    ),
    Product(
      category: Category.home,
      id: 4,
      name: 'Gilt desk trio',
      price: 58,
    ),
    Product(
      category: Category.clothing,
      id: 5,
      name: 'Cerise scallop tee',
      price: 42,
    ),
    Product(
      category: Category.accessories,
      id: 6,
      name: 'Vagabond sack',
      price: 120,
    ),
    Product(
      category: Category.home,
      id: 7,
      name: 'Gilt desk trio',
      price: 58,
    ),
    Product(
      category: Category.clothing,
      id: 8,
      name: 'Cerise scallop tee',
      price: 42,
    ),
    Product(
      category: Category.accessories,
      id: 9,
      name: 'Vagabond sack',
      price: 120,
    ),
    Product(
      category: Category.home,
      id: 10,
      name: 'Gilt desk trio',
      price: 58,
    ),
    Product(
      category: Category.clothing,
      id: 11,
      name: 'Cerise scallop tee',
      price: 42,
    ),
    Product(
      category: Category.accessories,
      id: 12,
      name: 'Vagabond sack',
      price: 120,
    ),
    Product(
      category: Category.home,
      id: 13,
      name: 'Gilt desk trio',
      price: 58,
    ),
    Product(
      category: Category.clothing,
      id: 14,
      name: 'Cerise scallop tee',
      price: 42,
    ),
    // THIS IS A SAMPLE FILE. Get the full content at the link above.
  ];

  static List<Product> loadProducts(Category category) {
    if (category == Category.all) {
      return _allProducts;
    } else {
      return _allProducts.where((p) => p.category == category).toList();
    }
  }
}
