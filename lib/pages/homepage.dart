
import 'package:flutter/material.dart';
import 'package:la3eeb/widgets/hamBurgerMenu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF0E2C44),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: NavBar(),
      backgroundColor: Color(0xFF0E2C44),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF0E2C44), Color(0xFF1F4C73)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset('images/homepageLa3eeb.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'لعيب هي أكبر منصة ألعاب لمحبي كرة القدم والألعاب في الوطن العربي ',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'لعيب تتيح لمحترفي كرة القدم فرصة ربح جوائز رائعة من خلال اللعب في لعبة أين الكرة',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'استمتع بالألعاب المثيرة والتحديات الممتعة على منصة لعيب. سجل الآن وابدأ رحلتك في عالم كرة القدم',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
