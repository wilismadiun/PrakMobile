class Provinsi {
  String? key;
  double? docCount;
  int? jumlahKasus;
  int? jumlahSembuh;
  int? jumlahMeninggal;
  int? jumlahDirawat;

  Provinsi(
      {this.key,
      this.docCount,
      this.jumlahKasus,
      this.jumlahSembuh,
      this.jumlahMeninggal,
      this.jumlahDirawat});

  Provinsi.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    docCount = json['doc_count'];
    jumlahKasus = json['jumlah_kasus'];
    jumlahSembuh = json['jumlah_sembuh'];
    jumlahMeninggal = json['jumlah_meninggal'];
    jumlahDirawat = json['jumlah_dirawat'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['doc_count'] = docCount;
    data['jumlah_kasus'] = jumlahKasus;
    data['jumlah_sembuh'] = jumlahSembuh;
    data['jumlah_meninggal'] = jumlahMeninggal;
    data['jumlah_dirawat'] = jumlahDirawat;
    return data;
  }

  static List<Provinsi>? fromListjson(List? data) {
    if (data?.length == 0 || data == null) return null;
    return data.map((e) => Provinsi.fromJson(e)).toList();
  }
}
