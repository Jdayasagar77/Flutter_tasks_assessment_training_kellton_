class Tokery1 {
  static String? name;
  static String? desc;
  static num? price;
  static String? imageUrl;
  static int? likes;
  static int? commentCount;
  static int? index;

//  String get getname => name;
//  String get getdesc => desc;
//  num get getprice => price;
//  String get getimageUrl => imageUrl;
//  int get getlikes => likes;
//  int get getcommentCount => commentCount;
//  int get getindex => index;

  Tokery1(
      {required int getcommentCount,
      required String getdesc,
      required String getname,
      required int getindex,
      required String getimageUrl,
      required int getlikes,
      required int getprice}) {
    {
      name = getname;
      desc = getdesc;
      price = getprice;
      imageUrl = getimageUrl;
      likes = getlikes;
      commentCount = getcommentCount;
      index = getindex;
    }
  }
}

class Tokery1Service {
  List<Tokery1> getTokery1s() {
    List<Tokery1> Tokery1s = [
      Tokery1(
        getname: 'Basic Tokery1',
        getdesc: 'tyfgvbhnjlmcvgjb',
        getprice: 23,
        getimageUrl: 'assets/images/IMG-20201219-WA0019.jpg',
        getlikes: 5,
        getcommentCount: 654,
        getindex: 1,
      ),Tokery1(
        getname: 'Basic Tokery1',
        getdesc: 'tyfgvbhnjlmcvgjb',
        getprice: 23,
        getimageUrl: 'assets/images/IMG-20201219-WA0019.jpg',
        getlikes: 5,
        getcommentCount: 654,
        getindex: 2,
      ),Tokery1(
        getname: 'Basic Tokery1',
        getdesc: 'tyfgvbhnjlmcvgjb',
        getprice: 23,
        getimageUrl: 'assets/images/IMG-20201219-WA0019.jpg',
        getlikes: 5,
        getcommentCount: 654,
        getindex: 3,
      ),Tokery1(
        getname: 'Basic Tokery1',
        getdesc: 'tyfgvbhnjlmcvgjb',
        getprice: 23,
        getimageUrl: 'assets/images/IMG-20201219-WA0019.jpg',
        getlikes: 5,
        getcommentCount: 654,
        getindex: 4,
      ),Tokery1(
        getname: 'Basic Tokery1',
        getdesc: 'tyfgvbhnjlmcvgjb',
        getprice: 23,
        getimageUrl: 'assets/images/IMG-20201219-WA0019.jpg',
        getlikes: 5,
        getcommentCount: 654,
        getindex: 5,
      ),Tokery1(
        getname: 'Basic Tokery1',
        getdesc: 'tyfgvbhnjlmcvgjb',
        getprice: 23,
        getimageUrl: 'assets/images/IMG-20201219-WA0019.jpg',
        getlikes: 5,
        getcommentCount: 654,
        getindex: 6,
      ),
    ];

    return Tokery1s;
  }
}
