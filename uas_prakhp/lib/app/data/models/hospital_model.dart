class Hospital {
  String? name;
  String? address;
  String? region;
  String? phone;
  String? province;

  Hospital({this.name, this.address, this.region, this.phone, this.province});

  Hospital.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    region = json['region'];
    phone = json['phone'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['address'] = address;
    data['region'] = region;
    data['phone'] = phone;
    data['province'] = province;
    return data;
  }

  static List<Hospital>? fromListjson(List? data) {
    if (data?.length == 0 || data == null) return null;
    return data.map((e) => Hospital.fromJson(e)).toList();
  }
}
