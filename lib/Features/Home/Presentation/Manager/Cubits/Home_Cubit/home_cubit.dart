import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_project/Features/Home/Data/Models/qr_code_details_model.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState>
{
  HomeCubit() : super(HomeInitial());
  Color? colorOfQrCode;
  String? nameOfImage;
  String? linkOfQr;

  generateQrCode()
  {
    colorOfQrCode = QrCodeDetailsModel.getQrCodeColor();
    linkOfQr = QrCodeDetailsModel().getLink();
    nameOfImage = QrCodeDetailsModel().getTheNameOfImage();

    emit(HomeSuccess());
  }
}