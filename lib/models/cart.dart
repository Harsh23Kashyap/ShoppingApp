import 'package:basic_app/models/catalog.dart';
import 'catalog.dart';

class CartModel {
  //catalog field
  CatalogModel _catalog;

  //collection of ids - store ids of each item
  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  set CatalogModel(CatalogModel newcatalog) {
    _catalog = newcatalog;
  }
}
