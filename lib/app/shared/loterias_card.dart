import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoteriasCard extends StatelessWidget {
  final String? title;
  final String? fecha;
  final Image? portada;
  final Widget child;
  final Color? color;
  final Color? colorText;
  final double? width;
  final double? height;

  const LoteriasCard({
    Key? key,
    required this.child,
    this.title,
    this.color = Colors.blueGrey,
    this.colorText = Colors.white,
    this.fecha,
    this.portada,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        // ignore: prefer_if_null_operators
        width: width != null ? width : null,
        // ignore: prefer_if_null_operators
        height: height != null ? height : null,
        decoration: buildBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 335.0,
              height: 50.0,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (title != null)
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Center(
                        child: Text(
                          title!,
                          style: GoogleFonts.roboto(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: colorText,
                          ),
                        ),
                      ),
                    ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: portada,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                if (fecha != null)
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Center(
                      child: Text(
                        fecha!,
                        style: GoogleFonts.roboto(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: colorText,
                        ),
                      ),
                    ),
                  ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(10.0),
                  child: child,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5.0,
          ),
        ],
      );
}
