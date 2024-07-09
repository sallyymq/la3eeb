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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/homepageLa3eeb.jpg'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'لعيب هي أكبر منصة ألعاب لمحبي كرة القدم والألعاب في الوطن العربي. لعيب تتيح لمحترفي كرة القدم فرصة ربح جوائز رائعة من خلال اللعب في لعبة أين الكرة',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
