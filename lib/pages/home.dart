import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              //  bottom:
              title: const Text('common.title').tr(),
            ),
            body: Stack(children: [
              TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Expanded(
                  child: TabBar(
                    tabs: [
                      Tab(
                          icon: Icon(
                        Icons.directions_car,
                        color: Colors.red,
                      )),
                      Tab(
                          icon: Icon(
                        Icons.directions_transit,
                        color: Colors.red,
                      )),
                      Tab(
                          icon: Icon(
                        Icons.directions_bike,
                        color: Colors.red,
                      )),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
