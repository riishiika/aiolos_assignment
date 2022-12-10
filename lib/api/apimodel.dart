// class Api {
//   int statusCode;
//   String status;
//   String message;
//   Null serverMessage;
//   Data data;

//   Api(
//       {this.statusCode,
//       this.status,
//       this.message,
//       this.serverMessage,
//       this.data});

//   Api.fromJson(Map<String, dynamic> json) {
//     statusCode = json['status_code'];
//     status = json['status'];
//     message = json['message'];
//     serverMessage = json['server_message'];
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status_code'] = this.statusCode;
//     data['status'] = this.status;
//     data['message'] = this.message;
//     data['server_message'] = this.serverMessage;
//     if (this.data != null) {
//       data['data'] = this.data.toJson();
//     }
//     return data;
//   }
// }

// class Data {
//   List<Products> products;
//   int totalRecords;
//   int pageSize;
//   int pageNo;
//   List<HeroImage> heroImage;

//   Data(
//       {this.products,
//       this.totalRecords,
//       this.pageSize,
//       this.pageNo,
//       this.heroImage});

//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['products'] != null) {
//       products = new List<Products>();
//       json['products'].forEach((v) {
//         products.add(new Products.fromJson(v));
//       });
//     }
//     totalRecords = json['total_records'];
//     pageSize = json['page_size'];
//     pageNo = json['page_no'];
//     if (json['hero_image'] != null) {
//       heroImage = new List<HeroImage>();
//       json['hero_image'].forEach((v) {
//         heroImage.add(new HeroImage.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.products != null) {
//       data['products'] = this.products.map((v) => v.toJson()).toList();
//     }
//     data['total_records'] = this.totalRecords;
//     data['page_size'] = this.pageSize;
//     data['page_no'] = this.pageNo;
//     if (this.heroImage != null) {
//       data['hero_image'] = this.heroImage.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Products {
//   String id;
//   String name;
//   String urlKey;
//   String variantAttributeGroupId;
//   String tag;
//   int rating;
//   int discountPercentage;
//   String image;
//   int mrp;
//   int salePrice;
//   List<Variants> variants;

//   Products(
//       {this.id,
//       this.name,
//       this.urlKey,
//       this.variantAttributeGroupId,
//       this.tag,
//       this.rating,
//       this.discountPercentage,
//       this.image,
//       this.mrp,
//       this.salePrice,
//       this.variants});

//   Products.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     urlKey = json['url_key'];
//     variantAttributeGroupId = json['variant_attribute_group_id'];
//     tag = json['tag'];
//     rating = json['rating'];
//     discountPercentage = json['discount_percentage'];
//     image = json['image'];
//     mrp = json['mrp'];
//     salePrice = json['sale_price'];
//     if (json['variants'] != null) {
//       variants = new List<Variants>();
//       json['variants'].forEach((v) {
//         variants.add(new Variants.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['url_key'] = this.urlKey;
//     data['variant_attribute_group_id'] = this.variantAttributeGroupId;
//     data['tag'] = this.tag;
//     data['rating'] = this.rating;
//     data['discount_percentage'] = this.discountPercentage;
//     data['image'] = this.image;
//     data['mrp'] = this.mrp;
//     data['sale_price'] = this.salePrice;
//     if (this.variants != null) {
//       data['variants'] = this.variants.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Variants {
//   String attributeId;
//   String attributeName;
//   String attributeType;
//   String attributeOptionId;
//   String attributeOptionName;
//   String colorCode;
//   String variantAttributeGroupId;
//   String id;
//   String urlKey;
//   int mrp;
//   int salePrice;

//   Variants(
//       {this.attributeId,
//       this.attributeName,
//       this.attributeType,
//       this.attributeOptionId,
//       this.attributeOptionName,
//       this.colorCode,
//       this.variantAttributeGroupId,
//       this.id,
//       this.urlKey,
//       this.mrp,
//       this.salePrice});

//   Variants.fromJson(Map<String, dynamic> json) {
//     attributeId = json['attribute_id'];
//     attributeName = json['attribute_name'];
//     attributeType = json['attribute_type'];
//     attributeOptionId = json['attribute_option_id'];
//     attributeOptionName = json['attribute_option_name'];
//     colorCode = json['color_code'];
//     variantAttributeGroupId = json['variant_attribute_group_id'];
//     id = json['id'];
//     urlKey = json['url_key'];
//     mrp = json['mrp'];
//     salePrice = json['sale_price'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['attribute_id'] = this.attributeId;
//     data['attribute_name'] = this.attributeName;
//     data['attribute_type'] = this.attributeType;
//     data['attribute_option_id'] = this.attributeOptionId;
//     data['attribute_option_name'] = this.attributeOptionName;
//     data['color_code'] = this.colorCode;
//     data['variant_attribute_group_id'] = this.variantAttributeGroupId;
//     data['id'] = this.id;
//     data['url_key'] = this.urlKey;
//     data['mrp'] = this.mrp;
//     data['sale_price'] = this.salePrice;
//     return data;
//   }
// }

// class HeroImage {
//   String desktopImage;
//   String mobileImage;

//   HeroImage({this.desktopImage, this.mobileImage});

//   HeroImage.fromJson(Map<String, dynamic> json) {
//     desktopImage = json['desktop_image'];
//     mobileImage = json['mobile_image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['desktop_image'] = this.desktopImage;
//     data['mobile_image'] = this.mobileImage;
//     return data;
//   }
// }
