import 'package:exemplo1/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text('Flutter'),
          const SizedBox(width: 32),
          const WebAppBarResponsiveContent(),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 2, // Set the border width to 2
                  color: Colors.blue, // Set the border color to blue
                  style: BorderStyle.solid, // Set the border style to solid
                ),
              ),
              child: const Text(
                'Fazer login',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Cadastre-se',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
