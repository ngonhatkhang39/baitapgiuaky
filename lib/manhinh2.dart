import 'package:flutter/material.dart';
class ManHinh2 extends StatelessWidget{
  bool ?isCheck2;
  bool ?isCheck3;
  ManHinh2(this.isCheck2,this.isCheck3);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text('Man hinh thu 2'),

     ),
     body: Text(' Ket qua chon Checkbox 2 va 3 $isCheck2 $isCheck3')
     ,
   );
  }

}