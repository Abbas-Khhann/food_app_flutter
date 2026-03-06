import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_rounded),
                    Icon(Icons.search_rounded)
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order Summary",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87
                      ),
                      textAlign: TextAlign.left,)
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Order"),
                    Text("\$16.48")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Taxes"),
                    Text("\$0.3")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery fees"),
                    Text("\$1.5")
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 35,
                endIndent: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                    Text("\$18.19",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Estimated delivery time", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
                    Text("15 - 30mins",  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text("Payment methods", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 4),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.brown[800],
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Image.asset("assets/images/mastercard.png"),
                     ),
                     SizedBox(width: 10,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Credit Card", style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.w600,
                           fontSize: 16
                         ),),
                         Text("5581 **** **** 0505", style: TextStyle(
                             color: Colors.brown[300],
                             fontWeight: FontWeight.w600,
                             fontSize: 16
                         ),)
                       ],
                     ),
                     SizedBox(width: 40,),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              color: Colors.brown[800],
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ],
                    )

                   ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 4),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/visa.png"),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Debit Card", style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                          ),),
                          Text("3566 **** **** 2314", style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                          ),)
                        ],
                      ),
                      SizedBox(width: 35,),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                          Container(
                            height: 17,
                            width: 17,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(50)
                            ),
                          ),

                        ],
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Row(
                  children: [
                    Icon(Icons.check_box, color: Colors.red),
                    SizedBox(width: 10,),
                    Text("Save card details for future payments",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF808080)
                    ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 120,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Total Price",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            color: Color(0xFF808080)
                          ),
                        ),

                        Row(
                          children: [
                            Icon(Icons.attach_money, size: 30, color: Colors.red,),
                            Text("18.19",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 28
                                )
                            )
                          ],
                        )
                      ],
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown[800],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(15)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15)
                        ),
                        onPressed: () {},
                        child: Text("Pay Now", style: TextStyle(
                            color: Colors.white,
                            fontSize: 17
                        ),)

                    )
                  ],
                ),
              )



            ],
          )),
    );
  }
}
