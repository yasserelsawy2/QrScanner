import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrscanner/features/homescreen/bloc/cubit/qr_scann_cubit.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QrScannCubit, QrScannState>(
      builder: (context, state) {
        return Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Column(
                children: [
                  Text(
                    BlocProvider.of<QrScannCubit>(context).qrInfo!,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.purple)),
                        onPressed: () {
                          BlocProvider.of<QrScannCubit>(context).reset();
                        },
                        child: const Text('Reset')),
                  )
                ],
              )),
        );
      },
    );
  }
}
