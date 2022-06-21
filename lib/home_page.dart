import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List localeList = [
    {'name': "ENGLISH", 'locale': Locale('en', 'US')},
    {'name': "मराठी", 'locale': Locale('mi', 'IN')},
    {'name': "हिंदी", 'locale': Locale('hi', 'IN')},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'message'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  // var locale = Locale('mi', 'IN');
                  // Get.updateLocale(locale);
                  _showPopup();
                },

                child: Text('changelang'.tr)),
          ],
        ),
      ),
    ));
  }

   updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
   }

  Future<bool> _showPopup() async {
    return await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          title: const Padding(
            padding:  EdgeInsets.only(bottom: 20),
            child: Text("Choose Language"),
          ),
          content: Container(
            color: Colors.transparent,
            height: 160.0,
            width: 180.0,

            child: ListView.separated(
              itemCount: localeList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    debugPrint("${localeList[index]['name']}");
                    updateLanguage(localeList[index]['locale']);
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding:  EdgeInsets.only(left: 10,bottom: 10,top: 10),
                    child: Text(
                      localeList[index]['name'],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.blue,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
