import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int item1 = 1;
  int item2 = 1;
  int item3 = 1;
  int item1Price = 51;
  int item2Price = 30;
  int item3Price = 43;
  int totalPrice = 124;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 25, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Bag',
                    style: TextStyle(
                      fontSize: screenWidth < 600 ? 24 : 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 130,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0.5,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Ink.image(
                                    image: const NetworkImage(
                                        'https://www.ariat.com/dw/image/v2/AAML_PRD/on/demandware.static/-/Sites-ARIAT/default/dwdc1095d9/images/warm/10046142_front_warm.jpg?sw=400&sh=400'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 7, right: 4),
                                          child: Column(
                                            children: [
                                              const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Pullover',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Icon(
                                                    Icons.more_vert,
                                                    color: Colors.black26,
                                                  )
                                                ],
                                              ),
                                              const SizedBox(height: 6),
                                              Row(
                                                children: [
                                                  RichText(
                                                    text: const TextSpan(
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: 'Color: ',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey)),
                                                        TextSpan(
                                                            text: 'Black',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  RichText(
                                                    text: const TextSpan(
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: 'Size: ',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey)),
                                                        TextSpan(
                                                            text: 'L',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      if (item1 > 1) {
                                                        item1--;
                                                        totalPrice -=
                                                            item1Price;
                                                        setState(() {});
                                                      }
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        shape:
                                                            const CircleBorder(),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(3),
                                                        backgroundColor:
                                                            Colors.white),
                                                    child: const Icon(
                                                      Icons.remove,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text('$item1'),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      item1++;
                                                      totalPrice += item1Price;
                                                      setState(() {});
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        shape:
                                                            const CircleBorder(),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(3),
                                                        backgroundColor:
                                                            Colors.white),
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text('${item1Price * item1}\$')
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 130,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0.5,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Ink.image(
                                    image: const NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2iI9GBvR4f1gdcS1zAPIX3anl-BEQEyyUCXIvow8CecFQcMSe06EmMYVZs_GZI3X6LMo&usqp=CAU'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 7, right: 4),
                                          child: Column(
                                            children: [
                                              const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'T-Shirt',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Icon(
                                                    Icons.more_vert,
                                                    color: Colors.black26,
                                                  )
                                                ],
                                              ),
                                              const SizedBox(height: 6),
                                              Row(
                                                children: [
                                                  RichText(
                                                    text: const TextSpan(
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: 'Color: ',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey)),
                                                        TextSpan(
                                                            text: 'Gray',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  RichText(
                                                    text: const TextSpan(
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: 'Size: ',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey)),
                                                        TextSpan(
                                                            text: 'L',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      if (item2 > 1) {
                                                        item2--;
                                                        totalPrice -=
                                                            item2Price;
                                                        setState(() {});
                                                      }
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        shape:
                                                            const CircleBorder(),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(3),
                                                        backgroundColor:
                                                            Colors.white),
                                                    child: const Icon(
                                                      Icons.remove,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text('$item2'),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      item2++;
                                                      totalPrice += item2Price;
                                                      setState(() {});
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        shape:
                                                            const CircleBorder(),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(3),
                                                        backgroundColor:
                                                            Colors.white),
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text('${item2Price * item2}\$')
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 130,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0.5,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Ink.image(
                                    image: const NetworkImage(
                                        'https://i.pinimg.com/736x/c1/6a/30/c16a306eef75bea017861ec9a63af6ff.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 7, right: 4),
                                          child: Column(
                                            children: [
                                              const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Sport Dress',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Icon(
                                                    Icons.more_vert,
                                                    color: Colors.black26,
                                                  )
                                                ],
                                              ),
                                              const SizedBox(height: 6),
                                              Row(
                                                children: [
                                                  RichText(
                                                    text: const TextSpan(
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: 'Color: ',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey)),
                                                        TextSpan(
                                                            text: 'Black',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  RichText(
                                                    text: const TextSpan(
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: 'Size: ',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey)),
                                                        TextSpan(
                                                            text: 'M',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      if (item3 > 1) {
                                                        item3--;
                                                        totalPrice -=
                                                            item3Price;
                                                        setState(() {});
                                                      }
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        shape:
                                                            const CircleBorder(),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(3),
                                                        backgroundColor:
                                                            Colors.white),
                                                    child: const Icon(
                                                      Icons.remove,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text('$item3'),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      item3++;
                                                      totalPrice += item3Price;
                                                      setState(() {});
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        shape:
                                                            const CircleBorder(),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(3),
                                                        backgroundColor:
                                                            Colors.white),
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text('${item3Price * item3}\$')
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total amount:',
                        style: TextStyle(color: Colors.black45),
                      ),
                      Text(
                        '$totalPrice\$',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth < 600 ? 16 : 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      const snackBar = SnackBar(
                        content: Text('Congratulations!'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: const StadiumBorder(),
                      elevation: 5,
                      shadowColor: Colors.red,
                    ),
                    child: Text(
                      'CLICK OUT',
                      style: TextStyle(
                        fontSize: screenWidth < 600 ? 16 : 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
