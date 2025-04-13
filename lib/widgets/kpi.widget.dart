import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KpiWidget extends StatelessWidget {
  final String kpiValue;
  const KpiWidget({super.key, required this.kpiValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.greenAccent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "${kpiValue}",
            style: GoogleFonts.ibmPlexMono(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
