import 'package:kellton_flutter_training/day13/speaker.dart';

class SpeakerService {
  List<Speaker> getSpeakers() {
    List<Speaker> speakers = [
      Speaker(
        'Mahesh Chand',
        'Keynote',
        'https://pbs.twimg.com/profile_images/713370773134532608/IrJ2F6o-_400x400.jpg',
        123,
        23,
        45,
        'Founder C# Corner. Founder & CEO Mindcracker Inc. Investor, Advisor, Board member ofseveral startups and non profit foundations. Try to implement emerging technologies whentrying to solve the next problem.',
        'mahesh@gmail.com',
        '9876543210',
      ),
      Speaker(
        'Pina; Dave',
        'Best Practices in SQL Server',
        'https://pluralsight.imgix.net/author/lg/pinal-dave-v1.jpg',
        123,
        234,
        12,
        'Pinal Dave is a SQL Server Performance Tuning Expert and an independent consultant. Hehas authored 11 SQL Server database books, 25 Pluralsight courses and has written over5000 articles on the database technology on his blog at ahttps://blog.sqlauthority.com.',
        'pinal-dave@gmail.com',
        '8976543210',
      ),
      Speaker(
        'Sekhar Srinivasan',
        'Data Visualization with Python',
        'https://pluralsight.imgix.net/author/lg/sekhar-srinivas-v3.jpg',
        234,
        1234,
        456,
        'Sekhar Srinivas ( Microsoft Certified Trainer ) Well known for his good track record asone of the best I.T faculty in imparting his unique techniques in training from past 26years and trained more than 1Lakh students on various Microsoft Technologies Platformsincl. VB6.0, ASP, VB.NET, C#, ASP.NET , Silverlight , ASP.NET MVC, SharePoint 2013,Azure, Xamarin.Andriod, Xamarin.iOS, Xamarin Forms and JavaScript Frameworks.Sekhar has arich experience in technology consulting, providing solutions for complex and diverseproblems to corporate, he is a person,who always believe in updating himself with theupcoming technologies to deliver the best to the trainees. Sekhar is one of the technicalevangelist for CSharpCorner and Microsoft User Group providing trainings on latesttechnologies. For More details visit my website : www.sekhartheguru.net ',
        'sekharonline4u@gmail.com',
        '9010921619',
      ),
    ];
    return speakers;
  }
}
