import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widget/error_indecator.dart';
import 'package:news_app/widget/loading_indecator.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewwItem extends StatelessWidget {
  const NewwItem({super.key});

  @override
  Widget build(BuildContext context) {
    final fifteenAgo = DateTime.now().subtract(Duration(minutes: 15));
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: "http://via.placeholder.com/200x150",
              height: MediaQuery.sizeOf(context).height * 0.25,
              width: double.infinity,
              fit: BoxFit.fill,

               placeholder: (context, url) => LoadingIndecator(),
  errorWidget: (context, url, error) =>ErrorIndecator(),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text("BBc news",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 14, color: Colors.grey)),
          SizedBox(
            height: 4,
          ),
          Text("why are football biggest clubs starting anew tournament? ",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w500)),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              timeago.format(fifteenAgo),
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
