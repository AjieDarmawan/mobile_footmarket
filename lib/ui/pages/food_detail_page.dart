part of 'pages.dart';

class FoodDetailPage extends StatefulWidget {
  final Function onBackButtomPressed;
  final Transaction transaction;

  FoodDetailPage({
    this.onBackButtomPressed,
    this.transaction,
  });

  @override
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          SafeArea(
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.transaction.food.picturePath),
                      fit: BoxFit.cover)),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                //back buttom

                Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        if (widget.onBackButtomPressed != null) {
                          widget.onBackButtomPressed();
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black12),
                        child: Image.asset('assets/back_arrow_white.png'),
                      ),
                    ),
                  ),
                ),

                //BODY
                Container(
                  margin: EdgeInsets.only(top: 180),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 150,
                                child: Text(
                                  widget.transaction.food.name,
                                  style: blackFontStyle2,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              RatingStars(rate: widget.transaction.food.rate),
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity = max(1, quantity - 1);
                                  });
                                },
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(width: 1),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/btn_min.png'))),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                child: Text(
                                  quantity.toString(),
                                  textAlign: TextAlign.center,
                                  style: blackFontStyle2,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity = min(999, quantity + 1);
                                  });
                                },
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(width: 1),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/btn_add.png'))),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        margin : EdgeInsets.fromLTRB(0,14,0,16),
                        child: Text(widget.transaction.food.description,style: greyFontStyle,),

                      ),
                      Text(
                        'ingredients',style: blackFontStyle3,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 4, 0, 41),
                        child: Text(
                          widget.transaction.food.ingredients,style: greyFontStyle,
                        ),
                      ),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Price',style: greyFontStyle,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 4, 0, 41),
                                child: Text(
                                  widget.transaction.food.price.toString(),style: blackFontStyle2.copyWith(fontSize: 16),
                                ),
                              ),
                            ],



                          ),
                          SizedBox(
                            width: 163,
                            height: 45,
                            child: RaisedButton(
                              onPressed: (){

                              },
                              color: mainColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),

                              ),
                              child: Text(
                                "Order Now",style: blackFontStyle1.copyWith(fontSize: 16),
                              ),
                            ),
                          ),

                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
