import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FoodController extends GetxController {

  var cartCount = 0.obs;
  var selectedFood = {}.obs;

  var foods = [
    {
      "name": "Cheeseburger",
      "restaurant": "Wendy's Burger",
      "rating": 4.9,
      "image": "assets/images/cheeseburger.png",
      "count": 0
    },
    {
      "name": "Hamburger",
      "restaurant": "Veggie Burger",
      "rating": 4.8,
      "image": "assets/images/hamburger1.png",
      "count": 0
    },
    {
      "name": "Hamburger",
      "restaurant": "Chicken Burger",
      "rating": 4.6,
      "image": "assets/images/hamburger2.png",
      "count": 0
    },
    {
      "name": "Hamburger",
      "restaurant": "Fried Chicken Burger",
      "rating": 4.5,
      "image": "assets/images/hamburger3.png",
      "count": 0
    }
  ].obs;

  @override
  void onInit() {
    super.onInit();
    loadCounts();
  }

  void loadCounts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int total = 0;
    for (int i = 0; i < foods.length; i++) {
      int saved = prefs.getInt('count_$i') ?? 0;
      foods[i]["count"] = saved;
      total += saved;
    }
    cartCount.value = total;
    foods.refresh();
  }

  void saveCount(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('count_$index', foods[index]["count"] as int);
  }

  void increment(int index) {
    foods[index]["count"] = (foods[index]["count"] as int) + 1;
    cartCount.value++;
    foods.refresh();
    saveCount(index);
  }

  void decrement(int index) {
    if ((foods[index]["count"] as int) > 0) {
      foods[index]["count"] = (foods[index]["count"] as int) - 1;
      cartCount.value--;
      foods.refresh();
      saveCount(index);
    }
  }

  void selectFood(Map food) {
    selectedFood.value = food;
  }
}