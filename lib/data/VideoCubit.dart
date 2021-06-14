import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:outlier_flutter/data/Video.dart';

class VideoCubit extends Cubit<Video?> {
  VideoCubit() : super(null);

  void playVideo(Video video) => emit(video);
}