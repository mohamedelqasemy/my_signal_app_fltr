import 'package:flutter/material.dart';
import 'package:my_signal_app_fltr/store/store.dart';
import 'package:signals/signals_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
              child: Text("Dashboard"),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Card(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Watch(
                            (context) =>
                                Text("Count:${store.products.value.length}"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Watch(
                            (context) => Text("Selected:${store.selectedProducts}"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Watch(
                            (context) => Text("Total:${store.totalPrices}"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Watch(
                            (context) =>
                                Text("Count:${store.products.value.length}"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Watch(
                            (context) =>
                                Text("Count:${store.products.value.length}"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Watch(
                            (context) =>
                                Text("Count:${store.products.value.length}"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
