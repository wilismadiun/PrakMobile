List<members> data = [
  members(
      name: "Abel Firmansyah",
      desc:
          "Nama : Muhammad Abel Firmansyah Pratama \nNIM : 200605110103 \nAsal : Probolinggo \nHobi : Main sama kucing \nmoto : tidurlah ketika mengantuk, istrahat ketika lelah",
      username: "abel123",
      password: "firmansyah",
      profile: "abel123.jpg"),
  members(
    username: "irfan123",
    password: "aufa",
    name: "Irfan Aufa Fadilla",
    profile: "irfan123.png",
    desc:
        "Irfan Aufa Fadilla Lahir di Madiun pada tanggal 7 Maret 2001. Irfan Berasal dari Madiun tepatnya di desa Dolopo RT 48 RW 15. Saat ini dia sedang menempuh pendidikan di Universitas Islam Negeri Maulana Malik Ibrahim Malang di program studi Teknik Informatika",
  ),
  members(
      name: "Muhammad Emillu Fata",
      desc: "Mahasiswa TI UIN Malanag",
      username: "fata123",
      password: 'emil',
      profile: "fata123.jpeg"),
  members(
      name: "Veri Herdian",
      username: "veri123",
      password: "herdian",
      profile: "veri123.jpg",
      desc:
          "Nama : Veri Verdiansyah \nNIM : 200605110174 \nAsal : Banyuwangi \nHobi : Traveling \nmoto : Gunakan waktumu sebaik mungkin agar tidak menyesal di masa depan")
];

class members {
  String name;
  String username;
  String password;
  String profile;
  String desc;

  members({
    required this.name,
    required this.username,
    required this.password,
    required this.profile,
    required this.desc,
  });
}
