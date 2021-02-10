part of 'pages.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController houseController = TextEditingController();
  bool isLoding = false;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Address",
      subtitle: "Make Sure is valid",
      child: Column(
        children: [
          Container(
            width: double.infinity,
            // margin: EdgeInsets.fromLTRB(defaultMargin, 24, defaultMargin, 24),
            margin: EdgeInsets.only(left: defaultMargin),
            child: Text(
              "Phone No",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: "Type Your Phone"),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: defaultMargin, top: defaultMargin),
            child: Text(
              "Address",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: "Type Your  Address"),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: defaultMargin, top: defaultMargin),
            child: Text(
              "House No",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  // border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: "Type Your Password"),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: defaultMargin, top: defaultMargin),
            child: Text(
              "City",
              style: blackFontStyle2,
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: SizedBox(),
                items: [
                  DropdownMenuItem(
                      child: Text(
                    "Bandung",
                    style: blackFontStyle3,
                  )),
                  DropdownMenuItem(
                      child: Text(
                    "Jakarta",
                    style: blackFontStyle3,
                  )),
                  DropdownMenuItem(
                      child: Text(
                    "Bali",
                    style: blackFontStyle3,
                  ))
                ],
                onChanged: (item) {},
              )),
          Container(
            width: double.infinity,
            height: 45,
            margin: EdgeInsets.only(top: 24),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: mainColor,
              child: Text(
                "Sign Up Now",
                style: GoogleFonts.poppins(
                    color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
