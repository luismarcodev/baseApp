import 'package:flutter/material.dart';

import '../../models/item_model.dart';
import '../../widgets/custom_subtitle.dart';
import '../../widgets/custom_header_with_image.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        CustomHeaderWithImage(
          subtitle: '${item.translationKey}.title',
          imageUrlLink: item.urlImage,
        ),
        CustomSubTitle(
          subtitle: '${item.translationKey}.subtitle',
          isTranslationKey: true,
        ),
      ]),
    );
  }
}
