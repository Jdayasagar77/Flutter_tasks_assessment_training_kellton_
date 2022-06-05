// ignore: file_names
class TweetItemModel {
  String tweet;
  String username;
  String time;
  String twitterHandle;
  String imageName;

  TweetItemModel(
      this.tweet, this.username, this.time, this.twitterHandle, this.imageName);
}

class TweetHelper {
  static var tweets = [
    TweetItemModel(
        "Inviting computer science students to register for the latest event in computer technology.",
        "J Dayasagar",
        "3m",
        "@_dj_77_",
        "images/download1.jfif"),
    TweetItemModel(
        "Developing a large, complex app that needs a microservice architecture? @crichardson. Read on to learn how to  decompose an application into services ",
        "Jakate Daya",
        "5m",
        "@_deejay_77_",
        "images/download1.jfif"),
    TweetItemModel(
        "The Samsung Galaxy S9 is in the record books now, but it's not likely that Samsung will be celebrating this particular milestone. https://www.androidauthority.com/samsung-galaxy-s9-history-887809/ … #samsung #samsunggalaxys9 by: C. Scott Brown",
        "Dayasagar J",
        "30m",
        "@_jaydee_",
        "images/download1.jfif"),
    TweetItemModel(
        "Inviting computer science students to register for the latest event in computer technology.",
        "DeeeJayyy",
        "3m",
        "@_mr_77_",
        "images/download1.jfif"),
  ];

  static TweetItemModel getTweet(int position) {
    return tweets[position];
  }
}
