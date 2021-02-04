part of 'widgets.dart';

class InputPayment extends StatelessWidget {
  final String labelText;
  final IconData iconData;
  InputPayment({
    this.labelText,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          iconData,
          size: 40,
          color: mainColor1,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextField(
            cursorColor: mainColor1,
            decoration: InputDecoration(
              fillColor: Colors.grey[200],
              filled: true,
              labelText: labelText,
              labelStyle:
                  whiteTextFont.copyWith(fontSize: 15, color: mainColor1),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: mainColor2,
                  width: 2,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: mainColor1,
                  width: 3,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
