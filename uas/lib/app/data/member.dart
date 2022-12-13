List<members> data = [
  members(
      name: "Abel Firmansyah",
      desc:
          "Nama : Muhammad Abel Firmansyah Pratama \nNIM  : 200605110103 \nAsal  : Probolinggo \nHobi : Main sama kucing \nMoto : tidurlah ketika mengantuk, istrahat ketika lelah",
      username: "abel123",
      password: "firmansyah",
      profile: "abel123.jpg",
      email: "abelfirmansyah10@gmail.com"),
  members(
      name: "Irfan Aufa Fadilla",
      desc:
          "Irfan Aufa Fadilla Lahir di Madiun pada tanggal 7 Maret 2001. Irfan Berasal dari Madiun tepatnya di desa Dolopo RT 48 RW 15. Saat ini dia sedang menempuh pendidikan di Universitas Islam Negeri Maulana Malik Ibrahim Malang di program studi Teknik Informatika",
      username: "irfan123",
      password: "aufa",
      profile: "irfan123.png",
      email: "fadillairfanaufa@gmail.com"),
  members(
      name: "Muhammad Emillul Fata",
      desc:
          "NIM: 200605110093\nAsal: Bogor\nHobi: Tidur\nMoto: Tidurlah selagi sempet:) ",
      username: "fata123",
      password: '11',
      profile: "fata123.jpeg",
      email: "muhammademillulfata.16@gmail.com"),
  members(
      name: "Veri Verdiansyah",
      desc:
          "Nama : Veri Verdiansyah \nNIM  : 200605110174 \nAsal  : Banyuwangi \nHobi  : Traveling \nMoto  : Gunakan waktumu sebaik mungkin agar tidak menyesal di masa depan",
      username: "veri123",
      password: "herdian",
      profile: "veri123.jpg",
      email: "vherdian22@gmail.com"),
];

class members {
  String name;
  String username;
  String password;
  String profile;
  String desc;
  String email;

  members({
    required this.name,
    required this.username,
    required this.password,
    required this.profile,
    required this.desc,
    required this.email,
  });
}
