part of 'widgets.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;

  InputWidget({
    this.hintText = "hintText",
    this.labelText = "labelText",
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      style: whiteTextFont.copyWith(fontSize: 20),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: whiteTextFont.copyWith(fontSize: 20),
        labelText: labelText,
        labelStyle: whiteTextFont.copyWith(fontSize: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        prefixIcon: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
