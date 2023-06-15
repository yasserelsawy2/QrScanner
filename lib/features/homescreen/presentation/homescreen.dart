import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrscanner/features/homescreen/bloc/cubit/qr_scann_cubit.dart';
import 'package:qrscanner/features/homescreen/presentation/widgets/app_bar.dart';
import 'package:qrscanner/features/homescreen/presentation/widgets/result_body.dart';
import 'package:qrscanner/features/homescreen/presentation/widgets/scanning_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.title});
  final String? title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QrScannCubit, QrScannState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = BlocProvider.of<QrScannCubit>(context);
        return Scaffold(
            appBar: MyAppBar(cubit: cubit),
            body: SingleChildScrollView(
                child: cubit.camState
                    ? const ScanningBody()
                    : const ResultBody()));
      },
    );
  }
}
