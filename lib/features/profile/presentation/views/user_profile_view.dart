import 'package:fintech_flutter_app_prototype/features/profile/presentation/views/widgets/action_button_widget.dart';
import 'package:fintech_flutter_app_prototype/features/profile/presentation/views/widgets/statistic_widget.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/navigation_bar.dart';
import '../../../home/presentation/views/home_view.dart';
import '../../../wallet/presentation/views/wallet_view.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Profile Section
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Client Name',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'clientname@example.com',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 20),
            // Statistics Section
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatisticWidget(title: 'Balance',value:  '\$25,000.40'),
                      StatisticWidget(title: 'Transactions',value:  '32'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatisticWidget(title: 'Income',value:  '\$20,000'),
                      StatisticWidget(title: 'Expenses',value:  '\$17,000'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const ActionButtonWidget(title: 'Account Settings',icon:  Icons.settings),
            const ActionButtonWidget(title: 'Payment Methods',icon:  Icons.credit_card),
            const ActionButtonWidget(title: 'Transaction History',icon:  Icons.history),
            const ActionButtonWidget(title: 'Support',icon:  Icons.support_agent),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              trailing: Switch(
                value: true,
                onChanged: (val) {},
              ),
            ),
            ListTile(
              leading: const Icon(Icons.security),
              title: const Text('Security'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:CustomBottomNavigationBar(
        currentIndex: 3,
        onTabTapped: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WalletView(),
              ),
            );
          } else if (index == 2) {}
          else if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeView(),
              ),
            );
          }
        },
      ),
    );
  }
}

