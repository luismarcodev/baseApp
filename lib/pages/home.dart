
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Text('Español'),onPressed: (){
        context.setLocale(Locale('en', ''));
      },),
      appBar: AppBar(),
      body: Container(child: const Text('common.hello').tr(),));
  }
}