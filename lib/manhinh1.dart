import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManHinh1 extends StatelessWidget{
  bool ?isCheck1;
   bool ?isCheck2;

  ManHinh1(this.isCheck1,this.isCheck2);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(title: Text('Man hinh  1'),),
      body: Text(' Ket qua chon Checkbox 1 va 2 $isCheck1 $isCheck2')

    );
  }

}