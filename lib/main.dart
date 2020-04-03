import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_ui_kit/widgets/minimal_appbar.dart';
import 'package:minimal_ui_kit/widgets/minimal_card.dart';
import 'package:minimal_ui_kit/widgets/minimal_chart.dart';
import 'package:minimal_ui_kit/widgets/minimal_drawer.dart';
import 'package:minimal_ui_kit/widgets/minimal_onboarding_bottom.dart';
import 'package:minimal_ui_kit/widgets/minimal_tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget _onboardingPage(context) {
    return OnboardingPage(
      title: "UNIX",
      description:
          "Unix is a Visa debit card and mobile app that connects your money to friends, family, brands, and experiences",
      imgUrl:
          "https://i.pinimg.com/474x/70/fa/11/70fa11b8c3dc11290357dd74d1c5fb33.jpg",
      buttonTitle: "Get Started",
      onPressed: () => Navigator.of(context).pushReplacementNamed("/dashboard"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => _onboardingPage(context),
        '/dashboard': (context) => DashboardPage(),
        '/details': (context) => DetailsPage(),
      },
    );
  }
}

//Dashboard
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MinimalAppBar(),
      drawer: MinimalDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MinimalCard(
                      amount: "\$15,129.00",
                      amountType: "Current Balance",
                      cardNumber: "2222",
                    ),
                    MinimalTabs(items: ["Income", "Spent"]),
                    LineChartSample1(),
                    MinimalTabs(
                      items: ["M", "T", "W", "T", "F", "S"],
                      width: double.infinity,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: ListTile(
                    onTap: () => Navigator.of(context).pushNamed("/details"),
                    title: Text(
                      "Mixcloud Premium $index",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    subtitle: Text(
                      "19 Nov 2019",
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    trailing: Text(
                      "-5.99 \$",
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }
}

// Onboarding
class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final Function onPressed;
  final String buttonTitle;
  final String imgUrl;

  const OnboardingPage({
    Key key,
    this.title,
    this.description,
    this.buttonTitle,
    this.onPressed,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
            imgUrl,
            height: MediaQuery.of(context).size.height * 0.6,
          ),
          Expanded(
            child: OnboardingBottom(
              title: title,
              description: description,
              onPressed: onPressed,
              buttonTitle: buttonTitle,
            ),
          )
        ],
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MinimalAppBar(
        showDrawerIcon: false,
        title: "FOOD",
      ),
      backgroundColor: Colors.white,
      // body: ,
    );
  }
}
