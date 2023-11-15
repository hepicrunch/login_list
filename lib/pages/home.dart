import 'package:flutter/material.dart';
import 'package:login_list/pages/login_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> productList = [
    {'name': 'Centaurus M200', 'price': 37},
    {'name': 'Centaurus Q200', 'price': 32},
    {'name': 'Centaurus M100', 'price': 40},
    {'name': 'Drag 4', 'price': 36},
    {'name': 'Thelema Q200', 'price': 33},
    {'name': 'Thelema Solo', 'price': 38},
    {'name': 'Thelema DNA 250', 'price': 120},
    {'name': 'Hexohm VST', 'price': 581},
    {'name': 'Hexohm V3', 'price': 115},
    {'name': 'Hotcig R234', 'price': 37},
    {'name': 'Hotcig R150', 'price': 35},
    {'name': 'Hotcig R233', 'price': 30},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
        title: Text('Daftar Barang'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter Produk',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.done_outlined))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.grey[100],
                  elevation: 0,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 8),
                        child: Center(
                          child: Text(
                            index.toString(),
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            productList[index]['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                              '\$${productList[index]['price'].toString()}'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
