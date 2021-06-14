import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:outlier_flutter/data/VideoCubit.dart';
import 'package:outlier_flutter/data/Video.dart';
import 'package:outlier_flutter/widgets/QueueList.dart';
import 'package:outlier_flutter/widgets/RemoteHeader.dart';
import 'package:outlier_flutter/widgets/SearchButton.dart';
import 'package:outlier_flutter/widgets/VideoInformation.dart';

class RemotePanel extends StatelessWidget {
  Widget createSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  Widget renderNowPlaying(BuildContext context, Video? video) {
    if (video == null) return Container();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [createSectionTitle("Now Playing"), VideoInformation(video)],
    );
  }

  Widget renderHandle() {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(8),
        child: Container(
          width: 32,
          height: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        renderHandle(),
        RemoteHeader(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SearchButton(),
        ),
        BlocBuilder<VideoCubit, Video?>(builder: renderNowPlaying),
        createSectionTitle("Up Next"),
        Expanded(
          child: QueueList([
            Video("This or That | Those Are Rookie Numbers!", "LoL Esports", "-51YtVM5lrY", "1:23"),
            Video('KKAP Workshop | "Hot Sauce" NCT Dream', "KKAP UCI", "s8xWniY9obk", "12:21"),
            Video('DWG vs SN - Game 1 | Grand Finals S10 LoL Worlds 2020 PlayOffs | DAMWON Gaming vs Suning G1 full',
                "League of Legends VODs", "MPlGWKm-jdg", "53:21"),
            Video('Clone Wars: Battle of the Heroes | MAY 4th TRAILER! (Anakin vs. Obi-wan fan animation)',
                "Star Wars Animations", "Rio2B5_-bSo", "0:25"),
            Video("K/DA - POP/STARS (ft. Madison Beer, (G)I-DLE, Jaira Burns) | Music Video - League of Legends",
                "League of Legends", "UOxkGD8qRB4", "9:45"),
            Video("Usain Bolt | ALL Olympic finals + Bonus round | Top Moments", "Olympics", "FuiJHJz4f5Q", "9:16")
          ]),
        ),
      ],
    );
  }
}
