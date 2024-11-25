import 'package:flutter/material.dart';
import 'package:news_app/api/api_service.dart';
import 'package:news_app/models/sources_responce/source.dart';

import 'package:news_app/settings/tabs/tabs_sources.dart';
import 'package:news_app/widget/data_error.dart';
import 'package:news_app/widget/error_indecator.dart';
import 'package:news_app/widget/loading_indecator.dart';

class CategoriesDetails extends StatelessWidget {
  CategoriesDetails({required this.categoryId});
  String categoryId;

  
      

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiService.getSource(categoryId),
     builder: (context,Snapshot){
      if(Snapshot.connectionState==ConnectionState.waiting){
        return const LoadingIndecator();
      }else if(Snapshot.hasError ){
        return const ErrorIndecator();

      }else if( Snapshot.data?.status != "ok"){
        return const DataError();

      }

      else{
        final sources =Snapshot.data!.sources??[];
        return TabsSources(sources:sources);
      }
     }
     
    );
  }
}
