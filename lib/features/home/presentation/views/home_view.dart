import 'package:fintech_flutter_app_prototype/common/widgets/transactions_widget.dart';
import 'package:fintech_flutter_app_prototype/features/home/presentation/views/widgets/earnings_widget.dart';
import 'package:fintech_flutter_app_prototype/features/home/presentation/views/widgets/income_outcome_container.dart';
import 'package:fintech_flutter_app_prototype/features/home/presentation/views/widgets/title_widget.dart';
import 'package:fintech_flutter_app_prototype/features/home/presentation/views/widgets/total_balance_container.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/navigation_bar.dart';
import '../../../profile/presentation/views/user_profile_view.dart';
import '../../../wallet/presentation/views/wallet_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        leading:  Padding(
          padding: const EdgeInsets.only(left: 10),
          child:Image.asset("assets/images/user.png"),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning!',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            Text(
              'Client Name',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TotalBalanceContainer(),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const IncomeOutcomeContainer(iconButton: Icons.arrow_downward_sharp, text: 'Income', amount: '\$20,000', color: Colors.green),
                  Container(
                    width: 1,
                    height: 50,
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                  const IncomeOutcomeContainer(iconButton: Icons.arrow_upward_sharp, text: 'Outcome', amount: '\$17,000', color: Colors.red),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const TitleWidget(title: 'Earnings'),
            const SizedBox(height: 10),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:  [
                  EarningsWidget(
                      initial: 'U',
                      title: 'Upwork',
                      amount: '\$3,000',
                      color: Colors.red[400]!),
                  EarningsWidget(
                      initial: 'F',
                      title: 'Freepik',
                      amount: '\$3,000',
                      color: Colors.pink[200]!),
                  const EarningsWidget(
                      initial: 'E',
                      title: 'Envato',
                      amount: '\$2,000',
                      color: Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const TitleWidget(title: 'Transactions'),
            const SizedBox(height: 10),
            const Text('Today'),
            const SizedBox(height: 6),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  TransactionsWidget(
                      title: 'Adobe Illustrator',
                      description: 'Subscription fee',
                      amount: '-\$32.00',
                      color: Colors.orange, image: 'assets/images/laptop.png',),
                  TransactionsWidget(
                      title: 'Dribble',
                      description: 'Subscription fee',
                      amount: '-\$15.00',
                      image: 'assets/images/laptop.png',
                      color: Colors.yellow),
                  TransactionsWidget(
                      title: 'Sony Camera',
                      description: 'Shopping fee',
                      amount: '-\$200.00',
                      image: 'assets/images/bag.png',
                      color: Colors.pinkAccent),
                  TransactionsWidget(
                      title: 'Paypal',
                      description: 'Salary',
                      amount: '+\$32.00',
                      image: 'assets/images/salary.png',
                      color: Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTabTapped: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WalletView(),
              ),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserProfileView(),
              ),
            );
          }
        },
      ),
    );
  }
}
