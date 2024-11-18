import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SizedBox(
      width: screenSize.width*0.7,
      child: Column(
            children: [
              Container(
                height: screenSize.height*0.2,
                
                width: double.infinity,
                color: AppTheme.primary,
                child: Center(child: Text("App news",
                 style: Theme.of(context).textTheme.titleLarge,)),
              ),
             
             Expanded(
               child: Container(
                padding: EdgeInsetsDirectional.only(start:15,top: 15 ),
                color: AppTheme.white,
                child: Column(
                  children: [
                     GestureDetector(
                  onTap: (){},
                  child: Row(
                    children: [
                      Icon(Icons.menu),
                      SizedBox(width: 10,),
                      Text("Categories" ,style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppTheme.black))
                  
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                  GestureDetector(
                  onTap: (){},
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 10,),
                      Text("Settings" ,style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppTheme.black))
                  
                    ],
                  ),
                ),
                  ],
                ),
               ),
             )
            ],
          ),
    );
  }
}