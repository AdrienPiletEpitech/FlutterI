import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';

class SocialWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback press;

  const SocialWidget({
    Key? key,
    required this.imagePath,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
        height: getProportionateScreenHeight(50.0),
        width: getProportionateScreenWidth(50.0),
        decoration: const BoxDecoration(
          color: Color(0xFDF6F7F8),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(imagePath),
      ),
    );
  }
}
