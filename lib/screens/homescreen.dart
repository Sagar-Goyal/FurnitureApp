import 'package:flutter/material.dart';
import 'package:karostartup_project/components/filter_button.dart';
import 'package:karostartup_project/components/product_card.dart';
import 'package:karostartup_project/model/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final db = FirebaseFirestore.instance;

  int currentFilter = 0;

  List<Widget> createFilterButton() {
    List<Widget> listOfButton = [];
    for (int i = 0; i < filters.length; i++) {
      listOfButton.add(
        FilterButton(
          name: filters[i],
          isSelected: i == currentFilter,
          onTap: () => setState(() {
            currentFilter = i;
          }),
        ),
      );
    }
    return listOfButton;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff015ba9),
      appBar: AppBar(
        backgroundColor: const Color(0xff015ba9),
        elevation: 0,
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notifications_none_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xff6499C2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onChanged: (value) {},
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: createFilterButton(),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                    color: Color(0xffEAE8EB),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40)),
                  ),
                ),
                StreamBuilder<QuerySnapshot>(
                  stream: db.collection('products').snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Center(
                        child: Text(
                          'Error',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      );
                    }
                    if (!snapshot.hasData) {
                      return const Center(
                          child: Center(
                              child: CircularProgressIndicator(
                                  color: Colors.blue)));
                    }
                    final products = snapshot.data!.docs;

                    return ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        String name =
                            (products[index].data() as dynamic)['name'];
                        String description =
                            (products[index].data() as dynamic)['description'];
                        int price =
                            (products[index].data() as dynamic)['price'];
                        String image =
                            (products[index].data() as dynamic)['image'];
                        Product newProduct = Product(
                          description: description,
                          name: name,
                          price: price,
                          imagePath: image,
                        );
                        return ProductCard(product: newProduct);
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<String> filters = [
  "All",
  "Sofa",
  "Parkbench",
  "Armchair",
  "Cupboards",
  "Dressers"
];
