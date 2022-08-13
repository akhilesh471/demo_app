import 'package:demo/application/product/productlist_bloc.dart';
import 'package:demo/core/constants.dart';
import 'package:demo/core/local_notification.dart';
import 'package:demo/core/widget.dart';
import 'package:demo/domain/productlist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewProducts extends StatefulWidget {
  const ViewProducts({Key? key,}) : super(key: key);
 

  @override
  State<ViewProducts> createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {

  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: AppbarTitle(
          title: 'LivingRoom',
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(child: BlocBuilder<ProductlistBloc, ProductlistState>(
        builder: (context, state) {
          return state.isLoading==true? Center(child: CircularProgressIndicator()):Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size(ctx: context).height * 0.5,
                 decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(state.currentProduct.images[0]),fit: BoxFit.fill),),
                  width: size(ctx: context).width * 0.92,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: -19,
                        right: 70,
                        child: roundedButton(
                          context: context,
                          icn: Icons.favorite,
                        ),
                      ),
                      Positioned(
                          bottom: -19,
                          right: 20,
                          child:
                              roundedButton(context: context, icn: Icons.close))
                    ],
                  ),
                ),
                kheight15,
                Row(
                  children: [
                    productInfo(
                        info: 'Rating', size: 13, weight: FontWeight.w400),
                    SizedBox(
                      width: size(ctx: context).width * 0.04,
                    ),
                    rating()
                  ],
                ),
                kheight15,
                productTitle(title: state.currentProduct.title!),
                // kheight3,

                productTitle(title: 'Yellow'),
                // kheight5,
                productInfo(
                    info:
                        state.currentProduct.description!,
                    size: 13.5,
                    weight: FontWeight.bold),
                kheight20,
                Row(
                  children: [
                    CurrentProductPrice(amount: state.currentProduct.price.toString()),
                    SizedBox(
                      width: size(ctx: context).width * 0.1,
                    ),
                    Buttons(
                        borderColor: kBlack,
                        buttonColor: kWhite,
                        textColor: kBlack,
                        text: 'Add to Cart',onTaped: (){}),
                    SizedBox(
                      width: size(ctx: context).width * 0.04,
                    ),
                    Buttons(
                        borderColor: kyellow,
                        buttonColor: kyellow,
                        textColor: kWhite,
                        text: 'Buy Now',onTaped: (){notification(state.currentProduct.title, '\$${state.currentProduct.price.toString()}',state.currentProduct.images[0]);},),
                  ],
                )
              ],
            ),
          );
        },
      )),
    );
  }

  RatingBar rating() {
    return RatingBar.builder(
      itemSize: 16,
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
//  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }

  Text productInfo(
      {required String info, required double size, required var weight}) {
    return Text(
      info,
      style: TextStyle(fontSize: size, fontWeight: weight),
    );
  }

  Text productTitle({required String title}) {
    return Text(title,
        style: GoogleFonts.poppins(
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ));
  }

  CircleAvatar roundedButton(
      {required BuildContext context, required IconData icn}) {
    return CircleAvatar(
      backgroundColor: kyellow,
      radius: size(ctx: context).width * 0.045,
      child: Icon(
        icn,
        color: Colors.white,
        size: 15,
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons({
    Key? key,
    required this.buttonColor,
    required this.textColor,
    required this.borderColor,
    required this.text,
    required this.onTaped,
  }) : super(key: key);
  dynamic buttonColor;
  void Function()? onTaped;
  final Color textColor;
  dynamic borderColor;
  final String text;
   
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTaped,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      style: ElevatedButton.styleFrom(
          side: BorderSide(width: 1.0, color: borderColor),
          primary: buttonColor,
          fixedSize: Size(size(ctx: context).width * 0.28,
              size(ctx: context).height * 0.06)),
    );
  }
}
