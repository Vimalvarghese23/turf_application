class UserHomeResModel {
  String? error;
  List<Turf>? turf;

  UserHomeResModel({this.error, this.turf});

  UserHomeResModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    if (json['turf'] != null) {
      turf = <Turf>[];
      json['turf'].forEach((v) {
        turf!.add(new Turf.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    if (this.turf != null) {
      data['turf'] = this.turf!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Turf {
  String? sId;
  List<String>? images;
  String? name;
  String? address;
  int? rate;
  List<String>? event;
  List<String>? facilities;
  List<String>? availableDates;
  String? workingHours;
  String? description;
  String? createdDate;
  String? month;
  String? day;
  String? userId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Turf(
      {this.sId,
      this.images,
      this.name,
      this.address,
      this.rate,
      this.event,
      this.facilities,
      this.availableDates,
      this.workingHours,
      this.description,
      this.createdDate,
      this.month,
      this.day,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Turf.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    images = json['images'].cast<String>();
    name = json['name'];
    address = json['address'];
    rate = json['rate'];
    event = json['event'].cast<String>();
    facilities = json['facilities'].cast<String>();
    availableDates = json['availableDates'].cast<String>();
    workingHours = json['workingHours'];
    description = json['description'];
    createdDate = json['createdDate'];
    month = json['month'];
    day = json['day'];
    userId = json['user_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['images'] = this.images;
    data['name'] = this.name;
    data['address'] = this.address;
    data['rate'] = this.rate;
    data['event'] = this.event;
    data['facilities'] = this.facilities;
    data['availableDates'] = this.availableDates;
    data['workingHours'] = this.workingHours;
    data['description'] = this.description;
    data['createdDate'] = this.createdDate;
    data['month'] = this.month;
    data['day'] = this.day;
    data['user_id'] = this.userId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
