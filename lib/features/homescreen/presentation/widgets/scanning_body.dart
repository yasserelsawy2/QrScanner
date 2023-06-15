import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';
import 'package:qrscanner/features/homescreen/bloc/cubit/qr_scann_cubit.dart';

class ScanningBody extends StatelessWidget {
  const ScanningBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 1000,
        width: 500,
        child: QRBarScannerCamera(
          onError: (context, error) => Text(
            error.toString(),
            style: const TextStyle(color: Colors.red),
          ),
          qrCodeCallback: (code) {
            BlocProvider.of<QrScannCubit>(context).qrCallback(code);
          },
        ),
      ),
    );
  }
}
