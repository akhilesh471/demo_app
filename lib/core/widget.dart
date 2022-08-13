import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Size size({required BuildContext ctx}) {
  return MediaQuery.of(ctx).size;
}



class AppbarTitle  extends StatelessWidget {
  const AppbarTitle ({
    required this.title ,
    Key? key,
  }) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class CurrentProductPrice extends StatelessWidget {
  const CurrentProductPrice({

    Key? key, required this.amount,
  }) : super(key: key);
final String amount;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(width: size(ctx: context).width*0.18,
      child: Text(
       '\$${amount.toString()}',
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
class ProductPrice extends StatelessWidget {
  const ProductPrice({

    Key? key, required this.amount,
  }) : super(key: key);
final String amount;
  @override
  Widget build(BuildContext context) {
    return  Text(
     '\$${amount.toString()}',
      style: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
