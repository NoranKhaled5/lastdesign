import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../constant/constant.dart';
import '../model/data.dart';
import '../model/new_arrival.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
@override
Widget build(BuildContext context) {
  var numofpage, curpage = 2;
  List<Widget> buildCategories() {
    return Data.generateCategories()
        .map(
          (e) => Container(

        padding: const EdgeInsets.only(left: 15, bottom: 10),
        child: ElevatedButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    e.id == 1 ? Colors.white : Colors.black38),
                backgroundColor: MaterialStateProperty.all<Color>(
                    e.id == 1 ? colorr : Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
            onPressed: () {},
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    color: const Color(0xffF8F8F8),
                    child: Image.asset(
                      e.image,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(e.title, style: const TextStyle(fontSize: 14)),
              ],
            )),
      ),
    )
        .toList();
  }
  return Scaffold(
    appBar: AppBar(
      backgroundColor: const Color(0xff385ecb),
  title: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  //  SvgPicture.asset("assets/icons/Location.svg"),
  const SizedBox(width: defaultPadding / 2),
  Text(
  "AR",
  style: Theme.of(context).textTheme.bodyText1,
  ),
  ],
  ),
  ),
  body:
  ListView(
    children:[ Padding(
      padding: const EdgeInsets.all(defaultPadding),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Explore",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
        ),
        const Text(
          "best Watches for you",
          style: TextStyle(fontSize: 18),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child:Text("Categories",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color:Color(0xff385ecb) ),)
        ),
          SizedBox(

            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: buildCategories(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        const NewArrivalProducts(),

      ],
    ),

    ),
  ]
  ),
      bottomNavigationBar: Container(
      color: const Color(0xff385ecb),
  child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
  child: GNav(
  backgroundColor: const Color(0xff385ecb),
  color: Colors.white,
  tabBackgroundColor: Colors.blueAccent.shade100 ,
  activeColor:Colors.white,
  gap: 8,
  padding: const EdgeInsets.all(16.0),
  tabs: [
  GButton(icon: Icons.home,text: 'Home',onPressed: (){},),
  GButton(icon: Icons.favorite,text: 'Likes',onPressed: (){
  }),
  GButton(icon: Icons.settings,text: 'setting',
  onPressed: (){}),

  ],
  ),
  ),
  ),
  );
}
}
