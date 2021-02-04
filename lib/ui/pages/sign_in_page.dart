part of 'pages.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor1,
          ),
          SafeArea(
            child: Container(
              color: mainColor1,
            ),
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 20),
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Your Payment",
                      style: whiteTextFont.copyWith(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InputWidget(
                      hintText: "Email",
                      labelText: "Email",
                      iconData: MdiIcons.email,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InputWidget(
                      hintText: "Password",
                      labelText: "Password",
                      iconData: MdiIcons.lock,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => PaymentPage()));
                  },
                  elevation: 0,
                  color: mainColor3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Sign In",
                    style: whiteTextFont.copyWith(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
