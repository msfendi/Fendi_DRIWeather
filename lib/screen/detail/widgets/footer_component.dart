import 'package:flutter/material.dart';

class FooterComponent extends StatelessWidget {
  final double iconSize;
  final String text;

  const FooterComponent({
    Key? key,
    this.iconSize = 24.0,
    this.text = 'DRI Weather',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      constraints: const BoxConstraints(
        minWidth: 140.0,
        minHeight: 24.0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            'https://dashboard.codeparrot.ai/api/image/Z6s40hhIf_jdPR3i/sun.png',
            width: iconSize,
            height: iconSize,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 14.0),
          Text(
            text,
            style: const TextStyle(
              fontFamily: 'Overpass',
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
