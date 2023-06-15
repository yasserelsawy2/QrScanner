import 'package:flutter/material.dart';
import 'package:qrscanner/features/homescreen/bloc/cubit/qr_scann_cubit.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    required this.cubit,
  });

  final QrScannCubit cubit;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purple,
      actions: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  cubit.scanCode();
                },
                icon: const Icon(Icons.qr_code_scanner))
          ],
        )
      ],
      title: const Text('QR Scanner'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
