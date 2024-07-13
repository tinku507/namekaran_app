class Api {
  int? status;
  String? message;
  int? total;
  List<NameApi>? data;

  Api({this.status, this.message, this.total, this.data});

  Api.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    total = json['total'];
    if (json['data'] != null) {
      data = <NameApi>[];
      json['data'].forEach((v) {
        data!.add(new NameApi.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['total'] = this.total;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NameApi {
  int? id;
  int? categoryId;
  String? name;
  String? meaning;
  int? gender;

  NameApi({this.id, this.categoryId, this.name, this.meaning, this.gender});

  NameApi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    name = json['name'];
    meaning = json['meaning'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['name'] = this.name;
    data['meaning'] = this.meaning;
    data['gender'] = this.gender;
    return data;
  }
}
