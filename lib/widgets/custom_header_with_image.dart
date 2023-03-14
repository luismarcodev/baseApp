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
                      height: 300,
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrlLink!))
                  : const SizedBox(),
            ),
          ),
          Container(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            width: double.infinity,
            height: 250,
            alignment: AlignmentDirectional.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(18),
                child: Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 35,
                    color: Colors.black54,
                  ),
                ).tr(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
