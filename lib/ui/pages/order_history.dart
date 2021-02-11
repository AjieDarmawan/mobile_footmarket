part of 'pages.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  int selectedIndex = 0;
  List<Transaction> inProgress = mockTransactions
      .where((element) =>
          element.status == TransactionStatus.on_delivery ||
          element.status == TransactionStatus.pending)
      .toList();
  List<Transaction> past = mockTransactions
      .where((element) =>
          element.status == TransactionStatus.cancelled ||
          element.status == TransactionStatus.delivered)
      .toList();

  @override
  Widget build(BuildContext context) {
    if (inProgress.length == 0 && past.length == 0) {
      return IlustrationPage(
        title: "tes",
        subtitle: "subtitle",
        picturePath: "assets/love_burger.png",
        button1: "Find Fouds 123",
        buttonTap1: () {},
        button2: "",
        buttonTap2: () {},
      );
    } else {
      double listItemWidth =
          MediaQuery.of(context).size.width - 2 * defaultMargin;
      return ListView(
        children: [
          Column(
            children: [
              //header
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: defaultMargin),
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your Order',
                      style: blackFontStyle1,
                    ),
                    Text(
                      'Wait For the best mael',
                      style:
                          greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              //body
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  children: [
                    CustomTabar(
                      titles: ['In Progress', 'Past order'],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(height: 16),
                    Column(
                      children: (selectedIndex == 0 ? inProgress : past)
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(
                                    right: defaultMargin,
                                    left: defaultMargin,
                                    bottom: 16),
                                child: OrderListItem(
                                  transaction: e,
                                  itemWidth: listItemWidth,
                                ),
                              ))
                          .toList(),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      );
    }
  }
}
