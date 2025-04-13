import 'package:flutter/material.dart';
import 'package:my_signal_app_fltr/store/store.dart';
import 'package:my_signal_app_fltr/widgets/kpi.widget.dart';
import 'package:signals/signals_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(5),
          child: Text(
            "Dashboard",
            style: GoogleFonts.nerkoOne(fontSize: 33, color: Colors.teal),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Card(
            color: Colors.white,
            child: Watch(
              (context) => Row(
                children: [
                  KpiWidget(kpiValue: "Count:${store.products.value.length}"),
                  KpiWidget(kpiValue: "Total:${store.totalPrices}"),
                  KpiWidget(kpiValue: "Selected:${store.selectedProducts}"),
                  KpiWidget(kpiValue: "Count:${store.products.value.length}"),
                  KpiWidget(kpiValue: "Count:${store.products.value.length}"),
                  KpiWidget(kpiValue: "Count:${store.products.value.length}"),
                  KpiWidget(kpiValue: "Count:${store.products.value.length}"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
