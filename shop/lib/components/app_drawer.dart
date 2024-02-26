import 'package:flutter/material.dart';
import 'package:shop/utils/app_routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text('Welcome, User!'),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Store'),
            onTap: () => Navigator.of(context).pushReplacementNamed(AppRoutes.home),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Payment'),
            onTap: () => Navigator.of(context).pushReplacementNamed(AppRoutes.orders),
          ),
        ],
      ),
    );
  }
}