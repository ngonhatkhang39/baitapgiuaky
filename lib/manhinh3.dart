import 'package:flutter/material.dart';
class ManHinh3 extends StatelessWidget{
  bool? isCheck1;
  bool? isCheck3;
  ManHinh3(this.isCheck1,this.isCheck3);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
    appBar: AppBar(title: Text('Man hinh thu 3'),),
     body: Text(' Ket qua chon Checkbox 1 va 3 $isCheck1 $isCheck3')

   );
  }

}