import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomHeaderWithImage extends StatelessWidget {
  const CustomHeaderWithImage({
    super.key,
    required this.subtitle,
    this.imageUrlLink,
  });

  final String subtitle;
  final String? imageUrlLink;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: ClipRRect(
              //borderRadius: BorderRadius.circular(8.0),
              child: imageUrlLink != null
                  ? Image(
                      height: 240,
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrlLink!))
                  : const SizedBox(),
            ),
          ),
          GestureDetector(
            onTap: () {
              //Navigator.pushNamed(context, sLinkTarget);
            },
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle),
              width: double.infinity,
              height: 250,
              alignment: AlignmentDirectional.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Color.fromRGBO(255, 255, 255, 0.8),
                  padding: EdgeInsets.all(18),
                  child: Text(subtitle,
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.black54,
                              fontFamily: 'abold'))
                      .tr(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
