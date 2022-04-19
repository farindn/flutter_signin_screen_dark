import 'package:flutter/material.dart';
import 'package:flutter_7days_masetring_ui/theme/day6_theme.dart';

class Option1 extends StatefulWidget {
  final String varImageUrl;
  final String varSubHeader;
  final String varText;
  final String varHighlightedText;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Option1({
    required this.varImageUrl,
    required this.varSubHeader,
    required this.varText,
    required this.varHighlightedText,
  });

  @override
  State<Option1> createState() => _Option1State();
}

class _Option1State extends State<Option1> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: GestureDetector(
        onTap: () => setState(() {
          selected = !selected;
        }),
        child: Container(
          width: 315,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: selected ? blueColor : greyColor,
            ),
            borderRadius: BorderRadius.circular(
              39,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  widget.varImageUrl,
                  width: 55,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.varSubHeader,
                      style: subHeader,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.varText,
                          style: text,
                        ),
                        Text(
                          widget.varHighlightedText,
                          style: highlightedText,
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.check_circle_rounded,
                  size: 24,
                  color: selected ? blueColor : Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
