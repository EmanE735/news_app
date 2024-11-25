import 'package:flutter/material.dart';

import 'package:news_app/models/sources_responce/source.dart';
import 'package:news_app/news/news_list.dart';
import 'package:news_app/settings/tabs/tab_item.dart';

class TabsSources extends StatefulWidget {
  TabsSources({required this.sources});
  List<Source> sources;

  @override
  State<TabsSources> createState() => _TabsSourcesState();
}

class _TabsSourcesState extends State<TabsSources> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: widget.sources.length,
          child: TabBar(
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              isScrollable: true,
              dividerColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              tabAlignment: TabAlignment.start,
              tabs: widget.sources
                  .map((Source) => TabItem(
                      sourceName: Source.name ?? '',
                      isSelected:
                          widget.sources.indexOf(Source) == currentIndex))
                  .toList()),
        ),
        Expanded(child: NewsList()),
      ],
    );
  }
}
