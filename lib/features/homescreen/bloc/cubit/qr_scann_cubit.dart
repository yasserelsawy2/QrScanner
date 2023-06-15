import 'package:flutter_bloc/flutter_bloc.dart';

part 'qr_scann_state.dart';

class QrScannCubit extends Cubit<QrScannState> {
  QrScannCubit() : super(QrScannInitial());

  String? qrInfo = 'Scan a QR/Bar code';
  bool camState = false;

  qrCallback(String? code) {
    camState = false;
    qrInfo = code;
    emit(SuccessScan());
  }

  scanCode() {
    camState = !camState;
    emit(Startscanning());
  }

  reset() {
    qrInfo = 'Scan a QR Again';
    emit(ResetState());
  }
}
