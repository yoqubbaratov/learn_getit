import 'package:flutter/material.dart';
import 'package:learn_getit/models/post_model.dart';
import 'package:learn_getit/service/network_service.dart';
import 'package:learn_getit/service/service_locator.dart';
import 'package:mobx/mobx.dart';

import '../home/home_store.dart';

part 'detail_store.g.dart';

class DetailStore = DetailStoreBase with _$DetailStore;
abstract class DetailStoreBase with Store{
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  
  @action 
  void init(){
    var homeStore = locator<HomeStore>();
    if(homeStore.selected!=null){
      titleController.text = homeStore.selected!.title;
      bodyController.text = homeStore.selected!.body;
    }
  } 
  
  @action
  Future<void>savePost(BuildContext context)async{
    var homeStore = locator<HomeStore>();
    String title = titleController.text.trim();
    String body = bodyController.text.trim();
    
    if(homeStore.selected!=null){
      homeStore.selected!.title=title;
      homeStore.selected!.body=body;
      await NetworkService.PUT(NetworkService.API_UPDATE+homeStore.selected!.id, NetworkService.paramsUpdate(homeStore.selected!));
    }else{
      Post post =Post(id: "01", title: title, body: body, userId: 1);
      await NetworkService.POST(NetworkService.API_CREATE, NetworkService.paramsCreate(post));
    }
    Navigator.pop(context);
  }
  
}