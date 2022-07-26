import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: _onWillPop,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(children: [
                  TextSpan(text: 'Sugeng Rawuh'),
                ]),
                textAlign: TextAlign.center,
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: 'Segera Hadir...',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 30)),
                ]),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 50),
        child: RichText(
          text: const TextSpan(children: [
            WidgetSpan(
                alignment: PlaceholderAlignment.top,
                child: Icon(
                  Icons.copyright,
                  size: 15,
                  color: Colors.grey,
                )),
            TextSpan(
                text: 'All Right Reserved | Alugoro Farm 2022',
                style: TextStyle(color: Colors.grey)),
          ]),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    return false;
  }
}
