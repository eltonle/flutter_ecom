// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_1/customer_screens/customer_orders.dart';
import 'package:flutter_1/customer_screens/wishlist_screen.dart';
import 'package:flutter_1/pages/cart_screen.dart';
import 'package:flutter_1/widgets/appBar_widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Container(
            height: 230,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.brown],
              ),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 0,
                pinned: true,
                centerTitle: true,
                backgroundColor: Colors.white,
                expandedHeight: 140,
                flexibleSpace: LayoutBuilder(
                  builder: (context, constraints) {
                    return FlexibleSpaceBar(
                      // centerTitle: true,
                      title: AnimatedOpacity(
                        opacity: constraints.biggest.height <= 120 ? 1 : 0,
                        duration: const Duration(milliseconds: 200),
                        child: const Text(
                          "Account",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      background: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.yellow, Colors.brown],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25, left: 30),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('images/inapp/guest.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  'guest'.toUpperCase(),
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child: SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const CartScreen(
                                          back: AppBarBackButton()),
                                    ),
                                  );
                                },
                                child: const Center(
                                  child: Text(
                                    'Cart',
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.yellow,
                            ),
                            child: SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CustomerOrders(),
                                    ),
                                  );
                                },
                                child: const Center(
                                  child: Text(
                                    'Orders',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const WishlistScreen(),
                                    ),
                                  );
                                },
                                child: const Center(
                                  child: Text(
                                    'Wishlist',
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade300,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 150,
                            child: Image(
                              image: AssetImage('images/inapp/logo.jpg'),
                            ),
                          ),
                          const ProfilHeaderLabel(
                              headerLabel: ' Account info. '),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 260,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Column(
                                children: [
                                  RepeatListTitle(
                                    title: 'Email Address',
                                    subTitle: 'exemple@gmail.com',
                                    icon: Icons.email,
                                  ),
                                  YellowDivider(),
                                  RepeatListTitle(
                                    title: 'Phone',
                                    subTitle: '+237 808989899',
                                    icon: Icons.phone,
                                  ),
                                  YellowDivider(),
                                  RepeatListTitle(
                                    title: 'Address',
                                    subTitle: 'Rues dev props fleb',
                                    icon: Icons.location_pin,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const ProfilHeaderLabel(
                              headerLabel: ' Account info. '),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 260,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  RepeatListTitle(
                                    title: 'Edit Profile',
                                    icon: Icons.edit,
                                    onPressed: () {},
                                  ),
                                  const YellowDivider(),
                                  RepeatListTitle(
                                    title: 'Change password',
                                    icon: Icons.lock,
                                    onPressed: () {},
                                  ),
                                  const YellowDivider(),
                                  RepeatListTitle(
                                    title: 'Logout',
                                    icon: Icons.logout,
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, '/welcome_screen');
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class YellowDivider extends StatelessWidget {
  const YellowDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(
        color: Colors.yellow,
        thickness: 1,
      ),
    );
  }
}

class RepeatListTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Function()? onPressed;
  const RepeatListTitle({
    Key? key,
    required this.title,
    this.subTitle = '',
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        leading: Icon(icon),
      ),
    );
  }
}

class ProfilHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const ProfilHeaderLabel({
    Key? key,
    required this.headerLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Text(
            headerLabel,
            style: const TextStyle(
                color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
