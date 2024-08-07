import 'package:flutter/material.dart';

class elmal3abPage extends StatefulWidget {
  @override
  _elmal3abPageState createState() => _elmal3abPageState();
}

class _elmal3abPageState extends State<elmal3abPage> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF0E2C44),
        title: const Text(
          'Elmal3ab',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                backgroundColor: Colors.white,
                canTapOnHeader: true,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text(
                      'شروط المشاركة',
                      textAlign: TextAlign.right,
                    ),
                  );
                },
                body: const ListTile(
                  tileColor: Colors.white,
                  title: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('لديك حساب فيه معلوماتك'),
                      SizedBox(height: 8.0),
                      Text(
                        'لديك 100 نقطة على الأقل يتم خصمها للمشاركة. يحصل الفائز على كل النقاط',
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'عند التعادل، الفائز هو من حدد موقع الكرة أولا. أي محاولات للتحايل تؤدي للمنع من اللعب في لعيب',
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'تأكد من مطابقة حسابك للشروط والأحكام',
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                isExpanded: _isExpanded,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
