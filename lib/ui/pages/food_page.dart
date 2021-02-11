part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double listItemwidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;

    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 100,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Food Market",
                    style: blackFontStyle1,
                  ),
                  Text(
                    "Lets go same foods",
                    style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 258,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: mockFoods
                    .map((e) => Padding(
                          padding: EdgeInsets.only(
                              left: (e == mockFoods.first) ? defaultMargin : 0,
                              right: defaultMargin),
                          child: FoodCard(
                            food: e,
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
//            child: FoodCard(
//              food: mockfood,
//            ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              CustomTabar(
                titles: ['New Taste', 'Populer', 'Recommended'],
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              Builder(builder: (_) {
                List<Food> foods = (selectedIndex == 0)
                    ? mockFoods
                    : (selectedIndex == 1)
                        ? []
                        : [];

                return Column(
                  children: foods
                      .map((e) => Padding(
                            padding: EdgeInsets.fromLTRB(
                                defaultMargin, 0, defaultMargin, 16),
                            child: FoodListItem(
                              food: e,
                              itemWidth: listItemwidth,
                            ),
                          ))
                      .toList(),
                );
              }),

            ],
          ),
        ),
        SizedBox(
          height: 80,
        ),
      ],
    );
  }
}