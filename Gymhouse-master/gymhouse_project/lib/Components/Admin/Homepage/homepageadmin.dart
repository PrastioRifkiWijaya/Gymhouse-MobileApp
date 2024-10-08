import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/HomePages/profile/profile.dart';
import 'package:gymhouse_project/utils/constant.dart';

// import '../Subscription/subscription.dart';

class homepageadmin extends StatelessWidget {
  const homepageadmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF050522),
        elevation: 0,
        toolbarHeight: 100.0,
        title: Text(
          "Homepage",
          style: mTitleStyleNameAppbar,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.person,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => profile()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.all(60.0),
                decoration: BoxDecoration(
                  color: Color(0xFF050522),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'INCOME',
                      textAlign: TextAlign.start,
                      style: mTitleStyleGymhouse,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.all(45.0),
                decoration: BoxDecoration(
                  color: Color(0xFF050522),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'EXPENSE',
                      textAlign: TextAlign.start,
                      style: mTitleStyleGymhouse,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    // showModalBottomSheet(
                    //     //enableDrag: false,
                    //     //isDismissible: false,
                    //     isScrollControlled: true, //supaya bisa di scroll
                    //     backgroundColor: Colors.transparent,
                    //     context: context,
                    //     builder: (context) => buildSheet(context));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.all(60.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF050522),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MEMBERSHIP',
                          style: mTitleStyleGymhouse,
                        ),
                        Text(
                          'Nikmati Keuntungan',
                          style: mTitle2,
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
