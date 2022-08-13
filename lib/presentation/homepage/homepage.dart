import 'package:demo/application/category/category_index_bloc.dart';
import 'package:demo/application/product/productlist_bloc.dart';
import 'package:demo/core/constants.dart';
import 'package:demo/core/widget.dart';
import 'package:demo/presentation/viewproducts/viewproducts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int horzintalScrollbleIndex = 1;
  @override
  Widget build(BuildContext context) {
    context.read<ProductlistBloc>().add(ProductlistEvent.getProducts());
    return Scaffold(body: SafeArea(
      child: BlocBuilder<ProductlistBloc, ProductlistState>(
        builder: (context, state) {
          return state.isLoading == true
              ? Center(child: CircularProgressIndicator())
              : Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppbarTitle(title: 'Discover'),
                        Icon(Icons.shopping_bag_outlined),
                      ],
                    ),
                  ),
                  kheight15,
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: BlocBuilder<CategoryIndexBloc, CategoryIndexState>(
                      builder: (context, state1) {
                        return Container(
                          height: size(ctx: context).height * 0.05,

                          // color: Colors.amber,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: category.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(onTap: (){context.read<CategoryIndexBloc>().add(CategoryIndexEvent.index(index: index));},
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Container(
                                      width: size(ctx: context).width * 0.3,
                                      padding: const EdgeInsets.all(8),
                                      color: (state1.index == index)
                                          ? Colors.grey
                                          : Color.fromARGB(255, 220, 220, 220),
                                      child: Center(child: Text(category[index])),
                                    ),
                                  ),
                                );
                              }),
                        );
                      },
                    ),
                  ),
                  kheight30,
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: StaggeredGridView.countBuilder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        crossAxisCount: 2,
                        itemCount: state.productlist.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              context.read<ProductlistBloc>().add(
                                  ProductlistEvent.getCurrentProduct(
                                      id: state.productlist[index].id));
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return ViewProducts();
                              }));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple,
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              state
                                                  .productlist[index].images[0],
                                            ),
                                            fit: BoxFit.fill)),
                                    height: (index % 2 == 0)
                                        ? size(ctx: context).height * 0.22
                                        : size(ctx: context).height * 0.36,
                                    width: size(ctx: context).width * 0.46,
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          bottom: -24,
                                          right: 10,
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.add_circle_rounded,
                                                color: Colors.yellow[700],
                                                size: 30,
                                              )),
                                        ),
                                        Positioned(
                                          bottom: -37,
                                          right: 0,
                                          child: ProductPrice(
                                              amount: state.productlist[index].price.toString()),
                                        )
                                      ],
                                    ),
                                  ),
                                  kheight5,
                                  ProductInfo(
                                      context: context,
                                      info: state.productlist[index].title!),
                                  kheight5,
                                  ProductInfo(
                                      context: context,
                                      info: state
                                          .productlist[index].description!),
                                ],
                              ),
                            ),
                          );
                        },
                        staggeredTileBuilder: (int index) {
                          return StaggeredTile.count(
                              1, (index % 2 == 0) ? 1.2 : 1.8);
                        },
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 8,
                      ),
                    ),
                  ))
                ]);
        },
      ),
    ));
  }

  // ignore: non_constant_identifier_names
  Widget ProductInfo({required BuildContext context, required String info}) {
    return SizedBox(
      width: size(ctx: context).width * 0.35,
      child: Text(
        info,
        style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
