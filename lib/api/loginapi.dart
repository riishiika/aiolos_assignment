// class LoginApi {
//   String statusCode;
//   String status;
//   String message;
//   List<void> data;

//   LoginApi({this.statusCode, this.status, this.message, this.data});

//   LoginApi.fromJson(Map<String, dynamic> json) {
//     statusCode = json['status_code'];
//     status = json['status'];
//     message = json['message'];
//     if (json['data'] != null) {
//       data = new List<Null>();
//       json['data'].forEach((v) {
//         data.add(new Null.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status_code'] = this.statusCode;
//     data['status'] = this.status;
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
