import 'package:flutter/cupertino.dart';

const tabletWidth = 900;
const desktopWidth = 1180;

class MaxWidthContainer extends StatelessWidget {
  const MaxWidthContainer({
    Key? key,
    required this.child
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1180,
      ),
      child: child,
    );
  }
}
