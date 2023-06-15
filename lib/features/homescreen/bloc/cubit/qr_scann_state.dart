part of 'qr_scann_cubit.dart';

abstract class QrScannState {}

class QrScannInitial extends QrScannState {}

class SuccessScan extends QrScannState {}

class Startscanning extends QrScannState {}

class ResetState extends QrScannState {}
