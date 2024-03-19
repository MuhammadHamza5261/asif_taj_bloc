import 'package:asiftajbloc/bloc/image_picker/image_picker_event.dart';
import 'package:asiftajbloc/bloc/image_picker/image_picker_state.dart';
import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/image_picker_utils.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState>{


  final ImagePickerUtils imagePickerUtils;


   ImagePickerBloc(this.imagePickerUtils): super(const ImagePickerState()){
     on<CameraCapture>(cameraCapture);

}

//     camera capture ka method
    void cameraCapture(CameraCapture event, Emitter<ImagePickerState> states) async{
     XFile? file = await imagePickerUtils.cameraCapture();
     emit(state.copyWith(file: file));

    }

    // gallery ka method

  void getImageFromGallery(CameraCapture event, Emitter<ImagePickerState> states) async{
    XFile? file = await imagePickerUtils.pickImageFromGallery();
    emit(state.copyWith(file: file));

  }

}