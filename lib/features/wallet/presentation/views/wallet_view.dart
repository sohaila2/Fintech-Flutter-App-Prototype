import 'package:fintech_flutter_app_prototype/features/wallet/presentation/views/widgets/client_balance_with_visa_container.dart';
import 'package:fintech_flutter_app_prototype/features/wallet/presentation/views/widgets/client_name_with_exp_date_container.dart';
import 'package:fintech_flutter_app_prototype/features/wallet/presentation/views/widgets/dashed_widget.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/navigation_bar.dart';
import '../../../../common/widgets/transactions_widget.dart';
import '../../../home/presentation/views/home_view.dart';
import '../../../profile/presentation/views/user_profile_view.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 80,
        leading:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/user.png'),

        ),
        title: const Text(
          'Wallet',
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const DashedWidget(),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 180,
                    child: const Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: ClientBalanceWithVisaContainer(),
                        ),
                        Expanded(
                          flex: 2,
                          child: ClientNameWithExpDateContainer(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Transactions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            const TransactionsWidget(title: 'Dribble', description: 'Subscription fee',amount:  '-\$15.00',color:  Colors.orange,image: 'assets/images/laptop.png',),
            const TransactionsWidget(title: 'House',description:  'Saving',amount:  '-\$50.00',color:  Colors.blue,image: 'assets/images/download2.png'),
            const TransactionsWidget(title: 'Sony Camera', description: 'Shopping fee',amount: '-\$200.00',color: Colors.pinkAccent,image: 'assets/images/bag.png'),
            const TransactionsWidget(title: 'Paypal', description: 'Salary', amount: '+\$32.00',color:  Colors.green,image: 'assets/images/salary.png'),

          ],
        ),
      ),
      bottomNavigationBar:   CustomBottomNavigationBar(
      currentIndex: 1,
      onTabTapped: (index) {
        if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeView(),
            ),
          );
        } else if (index == 2) {}
        else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const UserProfileView(),
            ),
          );
        }
      },
    ),
    );
  }
}



