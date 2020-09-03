import 'dart:convert';

import 'package:http/http.dart' as http; //package ini kita kasih nama http

class PostResult {
  //ini data" yang akan kita kirim
  String id;
  String name;
  String job;
  String created;

  //construct nya
  PostResult({this.id, this.name, this.job, this.created});
  //membuat factory method yang berfungsi : membuat objec dari PostResult, ttpi hasilnya dari maping JSON object
  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        created: object['createdAt']);
  }

  //Buat method untuk menghubungkan app ke API
  static Future<PostResult> connectToAPI(String name, String job) async {
    //untuk menghubungkan, maka kita butuh URLnya
    String apiURL = "https://reqres.in/api/users";
    //memanggil http Requestnya
    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});
    //ambil bentuk JSON nya
    var jsonObject = json.decode(apiResult.body);
    //jika sudah di ubah ke JSON object baru di return
    return PostResult.createPostResult(jsonObject);
  }
}
