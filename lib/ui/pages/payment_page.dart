part of 'pages.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final format = DateFormat("yyyy-MM-dd");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Card",
        ),
        backgroundColor: mainColor1,
      ),
      body: Stack(
        children: [
          Container(
            color: mainColor1,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: defaultmargin, vertical: defaultmargin),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InputPayment(
                      labelText: "Card Name",
                      iconData: MdiIcons.account,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputPayment(
                      labelText: "Number",
                      iconData: MdiIcons.creditCard,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputPayment(
                      labelText: "CVV",
                      iconData: MdiIcons.cardSearchOutline,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DatePicker(format: format),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        child: Text(
                          "Pay",
                          style: whiteTextFont.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        color: mainColor1,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
