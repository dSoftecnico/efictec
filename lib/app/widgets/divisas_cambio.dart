import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';

class DivisasCambio extends StatelessWidget {
  const DivisasCambio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ResponsiveGridCol(
        lg: 12,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Text(
                '\$\$\$ Cambio \$\$\$'.toUpperCase(),
                style: GoogleFonts.roboto(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 400.0,
                  height: 270.0,
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/divisas/d.jpg',
                        fit: BoxFit.cover,
                        height: 200.0,
                      ),
                      const SizedBox(height: 15.0),
                      Text('Dolar US'.toUpperCase()),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Compra 52.70 <'.toUpperCase()),
                          Text('Venta 54.70'.toUpperCase()),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 400.0,
                  height: 270.0,
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/divisas/e.jpg',
                        fit: BoxFit.cover,
                        height: 200.0,
                      ),
                      const SizedBox(height: 15.0),
                      Text('Euro'.toUpperCase()),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Compra 52.70 <'.toUpperCase()),
                          Text('Venta 54.70'.toUpperCase()),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 400.0,
                  height: 270.0,
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/divisas/fc.jpg',
                        fit: BoxFit.cover,
                        height: 200.0,
                      ),
                      const SizedBox(height: 15.0),
                      Text('Franco Suizo'.toUpperCase()),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Compra 52.70 <'.toUpperCase()),
                          Text('Venta 54.70'.toUpperCase()),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 400.0,
                  height: 270.0,
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/divisas/d.jpg',
                        fit: BoxFit.cover,
                        height: 200.0,
                      ),
                      const SizedBox(height: 15.0),
                      Text('Dolar US'.toUpperCase()),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Compra 52.70 <'.toUpperCase()),
                          Text('Venta 54.70'.toUpperCase()),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 400.0,
                  height: 270.0,
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/divisas/e.jpg',
                        fit: BoxFit.cover,
                        height: 200.0,
                      ),
                      const SizedBox(height: 15.0),
                      Text('Euro'.toUpperCase()),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Compra 52.70 <'.toUpperCase()),
                          Text('Venta 54.70'.toUpperCase()),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 400.0,
                  height: 270.0,
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/divisas/fc.jpg',
                        fit: BoxFit.cover,
                        height: 200.0,
                      ),
                      const SizedBox(height: 15.0),
                      Text('Franco Suizo'.toUpperCase()),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Compra 52.70 <'.toUpperCase()),
                          Text('Venta 54.70'.toUpperCase()),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
