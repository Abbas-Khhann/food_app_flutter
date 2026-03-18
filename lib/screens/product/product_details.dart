import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/food_controller.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {

    final FoodController controller = Get.find<FoodController>();

    final Map item = controller.selectedFood.value;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: const Icon(Icons.arrow_back, color: Colors.black, size: 24),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    item["image"],
                    width: 160,
                    height: 160,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 25),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFF1A1A1A),
                              height: 1.3,
                            ),
                            children: [
                              const TextSpan(
                                text: "Customize ",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              TextSpan(
                                text: "Your ${item["name"]} \nto Your Tastes.\nUltimate Experience",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          item["restaurant"],
                          style: const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 14),
                            const SizedBox(width: 4),
                            Text(item["rating"].toString(), style: const TextStyle(fontSize: 13)),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 170,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Text("Spicy", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                              ),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Colors.red,
                                  inactiveTrackColor: Colors.red.withOpacity(0.3),
                                  thumbColor: Colors.red,
                                  trackHeight: 4,
                                  thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
                                ),
                                child: Slider(value: 0.5, min: 0, max: 1, onChanged: (value) {}),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 25, right: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Mild", style: TextStyle(fontSize: 12, color: Colors.green)),
                                    Text("Hot", style: TextStyle(fontSize: 12, color: Colors.red)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 22),
                                    child: Text('Portion', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 36,
                                        height: 36,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFE8394B),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Icon(Icons.remove, color: Colors.white, size: 20),
                                      ),
                                      const SizedBox(width: 20),
                                      const Text('2', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 20),
                                      Container(
                                        width: 36,
                                        height: 36,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFE8394B),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Icon(Icons.add, color: Colors.white, size: 20),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Toppings", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _toppingsCard("Tomato", "assets/images/tomato.png"),
                        const SizedBox(width: 20),
                        _toppingsCard("Onions", "assets/images/onions.png"),
                        const SizedBox(width: 20),
                        _toppingsCard("Pickles", "assets/images/pickles.png"),
                        const SizedBox(width: 20),
                        _toppingsCard("Salad", "assets/images/salad.png"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text("Side Options", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _sideOptions("Fries", "assets/images/fries.png"),
                        const SizedBox(width: 20),
                        _sideOptions("Coleslaw", "assets/images/coleslaw.png"),
                        const SizedBox(width: 20),
                        _sideOptions("Salad", "assets/images/salad.png"),
                        const SizedBox(width: 20),
                        _sideOptions("Onion", "assets/images/onionr.png"),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text("Total", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                      Row(
                        children: [
                          Icon(Icons.attach_money, size: 30, color: Colors.red),
                          Text("16.49", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28)),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    onPressed: () {},
                    child: const Text("Order Now", style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _toppingsCard(String text, String image) {
    return Container(
      width: 110,
      height: 115,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Colors.brown[800]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 110,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(2, 4))],
            ),
            child: Padding(padding: const EdgeInsets.all(10), child: Image.asset(image, fit: BoxFit.contain)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(text,
                      style: const TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500),
                      overflow: TextOverflow.ellipsis),
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(4),
                  child: const Icon(Icons.add, color: Colors.white, size: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sideOptions(String text, String image) {
    return Container(
      height: 125,
      width: 110,
      decoration: BoxDecoration(color: Colors.brown[800], borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4))],
            ),
            child: Padding(padding: const EdgeInsets.all(8.0), child: Image.asset(image, fit: BoxFit.contain)),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),
                    overflow: TextOverflow.ellipsis),
                Container(
                  decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(2),
                  child: const Icon(Icons.add, color: Colors.white, size: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}