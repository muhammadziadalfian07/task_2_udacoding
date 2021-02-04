part of 'widgets.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({
    Key key,
    @required this.format,
  }) : super(key: key);

  final DateFormat format;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          MdiIcons.calendar,
          size: 40,
          color: mainColor1,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: DateTimeField(
            decoration: InputDecoration(
              fillColor: Colors.grey[200],
              filled: true,
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
            format: format,
            onShowPicker: (context, currentValue) {
              return showDatePicker(
                  context: context,
                  initialDate: currentValue ?? DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100));
            },
          ),
        ),
      ],
    );
  }
}
