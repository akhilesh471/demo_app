

import 'dart:convert';

List<ProductList> productListFromJson(String str) => List<ProductList>.from(json.decode(str).map((x) => ProductList.fromJson(x)));

String productListToJson(List<ProductList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductList {
    ProductList({
       required this.id,
       required this.title,
       required this.price,
       required this.description,
       required this.category,
       required this.images,
    });

    int id;
    String? title;
    int price;
    String? description;
    Category category;
    List<String> images;

    factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
        id: json["id"],
        title: json["title"]!,
        price: json["price"] ,
        description: json["description"]!,
        category: Category.fromJson(json["category"]),
        images: List<String>.from(json["images"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category.toJson(),
        "images": List<dynamic>.from(images.map((x) => x)),
    };
}

class Category {
    Category({
       required this.id,
      //  required this.name,
       required this.image,
       required this.keyLoremSpace,
    });

    int id;
    // Name name;
    String? image;
    String? keyLoremSpace;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        // name: nameValues.map[json["name"]]!,
        image: json["image"],
        keyLoremSpace: json["keyLoremSpace"] == null ? null : json["keyLoremSpace"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        // "name": nameValues.reverse[name],
        "image": image,
        "keyLoremSpace": keyLoremSpace == null ? null : keyLoremSpace,
    };
}

enum Name { OTHERS, FURNITURE, SHOES, ELECTRONICS, CLOTHES }

// final nameValues = EnumValues({
//     "Clothes": Name.CLOTHES,
//     "Electronics": Name.ELECTRONICS,
//     "Furniture": Name.FURNITURE,
//     "Others": Name.OTHERS,
//     "Shoes": Name.SHOES
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//     EnumValues( this.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }
