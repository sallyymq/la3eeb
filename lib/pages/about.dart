import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:arabic_font/arabic_font.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: '5JIwILtf6fg',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E2C44),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF0E2C44),
        title: Text(
          'About La3eeb',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "عن لعيب",
                style: TextStyle(
                  fontFamily: ArabicFont.aalooBhaijaan,
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
              onReady: () {
                print('Player is ready.');
              },
              onEnded: (YoutubeMetaData metaData) {
                _controller.seekTo(Duration(seconds: 0));
              },
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "لعيب هي أكبر منصة ألعاب لمحبي كرة القدم والألعاب في الوطن العربي. لعيب تتيح لمحترفي كرة القدم فرصة ربح جوائز رائعة من خلال اللعب في لعبة أين الكرة",
              style: TextStyle(
                fontFamily: ArabicFont.aalooBhaijaan,
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "اللعبة لا تعتمد على الحظ بل على خبرة المشترك و مهارته في تحديد موقع الكرة\n كل ما يحتاجه المشترك هو فقط التدقيق في صورة لاعبي الكرة التي تم إخفاء الكرة منها ثم يقوم بتحديد المكان الذي يعتقد بوجود الكرة فيه بناءً على حركات اللاعبين في الصورة وحركة أجسامهم و نظراتهم وغيرها\n في لعبة أين الكرة يمكن للمشاركين تحديد أي عدد من مواقع الكرة في الصورة, 4 مواقع معا في كل مرة, مع كل موقع يحدده اللاعب تزداد فرص الفوز ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "كل أسبوع مجموعة من الفائزين يتم تحديدهم بناء على بعد المواقع التي حددوها في الصورة عن قرار حكام لعيب, كلما إقترب الموقع الذي اخترته من الموقع الذي اختاره الحكام كلما كنت أقرب إلى الفوز",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "للمشاركة في لعيب تحتاج للنقاط أو التوكنز, يمكن الحصول على النقاط مجانا عند تسجيل حساب في لعيب, ومن خلال ملعب النقاط أو من لعبة الملعب. تأكد دائما من استخدام النقاط التي لديك بسرعة لأنه يتم تصفير عداد النقاط بشكل دوري ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "في ملعب النقاط مجموعة من الألعاب البسيطة والممتعة التي يمكن لكل مشترك اللعب فيها مرة واحدة كل يوم و سيحصل من خلالها اللاعب على عدد مختلف من النقاط لكل لعبة ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " في لعبة الملعب, تحدي بين مجموعة لاعبين بحيث يحصل الفائز في اللعبة على كل نقاط اللعبة ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "الكينج هي اللعبة التي تعرف من خلالها من سيقف معك من أصدقائك, فقط سجل ثم انسخ الرابط الخاص بك وشاركه مع أصدقائك ليقومو بالتصويت لك, إذا كنت صاحب أعلى نسبة من الأصوات ستقوز بتيشرت فريقك المفضل",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "إذا استخدمت كل النقاط الخاصة بك ولكن تريد اللعب أكثر, يمكنك دائما شراء التوكنز من صفحة التوكنز والدفع بالطريقة التي تناسبك",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " نتمنى لكم تجربة لعب ممتعة و أن تكونو من الفائزين في لعيب ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}
