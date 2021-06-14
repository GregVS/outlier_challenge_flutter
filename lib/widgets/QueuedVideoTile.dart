import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:outlier_flutter/data/VideoCubit.dart';
import 'package:outlier_flutter/data/Video.dart';
import 'package:outlier_flutter/widgets/VideoInformation.dart';

class QueuedVideoTile extends StatelessWidget {
  final Video video;
  final int index;

  const QueuedVideoTile({
    Key? key,
    required this.video,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<VideoCubit>().playVideo(video),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: VideoInformation(video)),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ReorderableDragStartListener(
              child: Icon(Icons.drag_handle),
              index: index,
            ),
          ),
        ],
      ),
    );
  }
}
