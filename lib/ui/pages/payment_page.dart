part of 'pages.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();

  final Transaction transaction;

  PaymentPage({this.transaction});
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "PAYMENT",
      subtitle: "you deserve better meal",
      onBackButtonPressed: () {},
      backColor: "FAFAFC".toColor(),
      child: Column(
        children: [
          //bagian atas

          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Item Ordered",
                  style: blackFontStyle2,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(
                                  widget.transaction.food.picturePath))),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.transaction.food.name,
                          style: blackFontStyle2,
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                        ),
                        Text(
                          NumberFormat.currency(
                            locale: 'id-ID',
                            symbol: 'IDR ',
                            decimalDigits: 0,
                          ).format(widget.transaction.food.price),
                          style: greyFontStyle,
                        )
                      ],
                    ),
                    Text(
                      '${widget.transaction.quantity} item(s)',
                      style: greyFontStyle,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Text(
                    'Details Transaction',
                    style: blackFontStyle3,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          widget.transaction.food.name,
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  symbol: 'IDR ',
                                  decimalDigits: 0)
                              .format(widget.transaction.food.price *
                                  widget.transaction.quantity),
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Driver",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  symbol: 'IDR ',
                                  decimalDigits: 0)
                              .format(50000),
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Tax 10%",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  symbol: 'IDR ',
                                  decimalDigits: 0)
                              .format(widget.transaction.total * 0.1),
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Total ",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  symbol: 'IDR ',
                                  decimalDigits: 0)
                              .format(widget.transaction.total),
                          style: blackFontStyle3.copyWith(
                              fontWeight: FontWeight.w500,
                              color: '1ABC9C'.toColor()),
                          textAlign: TextAlign.right,
                        ))
                  ],
                ),
              ],
            ),
          ),
          //bagian bawah

          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            color: Colors.white,
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deliver to",
                  style: blackFontStyle2,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Name",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          widget.transaction.user.name,
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Phone No",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          widget.transaction.user.phoneNumber,
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Address",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          widget.transaction.user.address,
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "City",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          widget.transaction.user.city,
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ))
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: defaultMargin),
                  height: 45,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {},
                    color: mainColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "Checkout Now",
                      style: blackFontStyle1.copyWith(fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
