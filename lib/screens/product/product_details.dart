import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, right: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/burgerdetails.png"),
                    SizedBox(width: 25),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          RichText(text: TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF1A1A1A),
                              height: 1.3
                            ),
                            children: [
                              TextSpan(
                                text: "Customize ",
                                style: TextStyle(fontWeight: FontWeight.w700)
                              ),
                              TextSpan(
                                text: "Your Burger \n to Your Tastes. Ultimate\n Experience"
                              )
                            ]
                          )),
                          SizedBox(height: 20),
                          SizedBox(
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsGeometry.only(left: 20, top: 10),
                                  child: const Text(
                                    "Spicy",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    activeTrackColor: Colors.red,
                                    inactiveTrackColor: Colors.red.withOpacity(0.3),
                                    thumbColor: Colors.red,
                                    trackHeight: 4,
                                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
                                  ),
                                  child: Slider(
                                    value: 0.5,
                                    min: 0,
                                    max: 1,
                                    onChanged: (value) {},
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25, right: 25),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Mild", style: TextStyle(fontSize: 12, color: Colors.green),),
                                      Text("Hot", style: TextStyle(fontSize: 12, color: Colors.red),)
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 22),
                                      child: const Text(
                                        'Portion',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
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
                                        const Text(
                                          '2',
                                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
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
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Toppings", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                             _toppingsCard("Tomato", "assets/images/tomato.png"),
                              SizedBox(width: 20),
                              _toppingsCard("Onions", "assets/images/onions.png"),
                              SizedBox(width: 20),
                              _toppingsCard("Pickles", "assets/images/pickles.png"),
                              SizedBox(width: 20),
                              _toppingsCard("Salad", "assets/images/salad.png"),

                            ],
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),

      ),
    );
  }

  Widget _toppingsCard(String text, String image){
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 48, vertical: 58),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.brown[800],
          ),

        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: Offset(4, 4)
                  )
                ]
            ),
            child: Image.asset(
              width: 70,
                image,
              fit: BoxFit.contain
            )
        ),
        Positioned(
            top: 82,
            left: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)
                  ),
                  child: Icon(Icons.add_circle, color: Colors.red, size: 20,),
                )
              ],
            )
        )
      ],
    );
  }
}


