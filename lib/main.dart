import 'package:flutter/material.dart';
import 'manhinh1.dart';
import 'manhinh2.dart';
import 'manhinh3.dart';
void main(){
  runApp(MyApp());

}

class MyApp  extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return MaterialApp( debugShowCheckedModeBanner: false,
        home:MyAppHome(


    ));
  }

}

class MyAppHome extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

        return MyAppHomeState();
  }


}

class MyAppHomeState extends State<MyAppHome>{

  bool isCheck1=true;
  bool isCheck2=false;
  bool isCheck3=true;






  @override
  Widget build(BuildContext context) {

        return Scaffold(

          appBar: AppBar(title: Text('Drawer menu test'),
            backgroundColor: Colors.green,),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: Text("Menu"),
                ),
                ListTile(
                  title: const Text('Man hinh thu 1'),
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ManHinh1(isCheck1,isCheck2)));
                }
                ),
                ListTile(
                    title: const Text('Man hinh thu 2'),
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ManHinh2(isCheck2,isCheck3)));

                    }
                ),
                ListTile(
                    title: const Text('Man hinh thu 3'),
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ManHinh3(isCheck1,isCheck3)));

                    }
                )
              ],
            ),
          ),
            body: Center(
              child: Column(

                children: [
                  SizedBox(height: 30,),
                  Text('Checkbox Header with title and subtitle',style: TextStyle(fontSize: 20),),
                  ListTile(
                    leading: Icon(Icons.alarm),
                    title: Text('Báo thức lúc 4h30 AM mỗi ngày'),
                    subtitle: Text('Báo thức sau 12h'),
                    trailing: Checkbox(
                      value: isCheck1,
                      onChanged: (value) {
                        setState(() {
                          isCheck1 = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.alarm),
                    title: Text('Báo thức lúc 5h30 AM mỗi ngày'),
                    subtitle: Text('Báo thức sau 12h'),
                    trailing: Checkbox(
                      value: isCheck2,
                      onChanged: (value) {
                        setState(() {
                          isCheck2=value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.alarm),
                    title: Text('Báo thức lúc 6h30 AM mỗi ngày'),
                    subtitle: Text('Báo thức sau 12h'),
                    trailing: Checkbox(
                      value: isCheck3,
                      onChanged: (value) {
                        setState(() {
                          isCheck3 = value!;
                        });
                      },
                    ),
                  ),Text('Ket qua chon: $isCheck1 $isCheck2 $isCheck3')
                ],
                
              ),
            ),


        );
  }
}
