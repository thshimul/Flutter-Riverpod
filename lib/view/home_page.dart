

import 'package:ecommerce_riverpod/model/dataModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../provider/data_provider.dart';
import '../utils/themes.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _data= ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: _data.when(
          data: (_data){
            List<DataModel> userList = _data.map((e) => e).toList();
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    width: double.infinity,
                    height: 300,
                    child: ListView.builder(
                    itemCount: userList.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                    itemBuilder: (_,index){
                      return Container(
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 6),
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                spreadRadius: 2),
                          ],
                        ),
                        margin: const EdgeInsets.all(12),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child:
                        Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                margin: const EdgeInsets.all(12),
                                color: Colors.white,
                                child: Image.network(userList[index].image.toString(),),
                              ),
                            ),
                            const Gap(4),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child:
                              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Text(
                                  userList[index].title.toString(),
                                  style: AppTheme.cardTitle,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  userList[index].category.toString(),
                                  style: AppTheme.bodyText,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      userList[index].price.toString(),
                                      style: AppTheme.cardTitle,
                                    ),

                                  ],
                                )
                              ]),
                            ),
                          ],
                        ),



                      );
                    }),
                  ),
                  const SizedBox(height: 50,),
                  const Text("Please call for order :01762000000",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                  ),)
                ],
              ),
            );
          },
          error: (err, s) => Text(err.toString()),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          )),
    );
  }
}