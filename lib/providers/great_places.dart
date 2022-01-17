import 'package:flutter/cupertino.dart';
import 'package:great_places/models/place.dart';

class GretaPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  Place ItemByIndex(int index) {
    return _items[index];
  }
}
