part of 'pages.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);

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
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;

    return ListView(
      children: [
        Column(
          children: [
            //header
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 110,
                      height: 110,
                      margin: EdgeInsets.only(top: 26),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/photo_border.png")),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg",
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  Center(
                      child: Text(
                    'nama',
                    style: blackFontStyle2,
                  )),
                  Center(
                      child: Text(
                    'nama',
                    style: greyFontStyle.copyWith(fontSize: 12),
                  )),
                ],
              ),
            ),
            //body
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                   // margin: EdgeInsets.only(top: 100),
                    //padding: const EdgeInsets.only(top: 100),
                    child: CustomTabar(
                      titles: ["Account", "FoodMarket"],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  (selectedIndex == 0)
                      ? Account()
                      : AccountFood(),

//                  Column(
//                    children: ((selectedIndex == 0)
//                            ? [
//                                'Edit Profile',
//                                'Home Address',
//                                'Security',
//                                'Payment'
//                              ]
//                            : [
//                                'Rate App',
//                                'Help Center',
//                                'Privacy & Policy',
//                                'Term & Condition'
//                              ]
//                    )
//                        .map((e) => Padding(
//                              padding: EdgeInsets.only(
//                                  bottom: 16,
//                                  left: defaultMargin,
//                                  right: defaultMargin),
//                              child: Row(
//                                mainAxisAlignment:
//                                    MainAxisAlignment.spaceBetween,
//                                children: [
//                                  Text(
//                                    e,
//                                    style: blackFontStyle3,
//                                  ),
//                                  SizedBox(
//                                    height: 24,
//                                    width: 24,
//                                    child: Image.asset(
//                                      'assets/right_arrow.png',
//                                      fit: BoxFit.contain,
//                                    ),
//                                  )
//                                ],
//                              ),
//                            ))
//                        .toList(),
//                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
