import 'package:flutter/material.dart';
void main()=>runApp(NexusApp());
class NexusApp extends StatelessWidget{
  @override Widget build(BuildContext c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData.dark().copyWith(scaffoldBackgroundColor:Color(0xFF0A0A0B)),home:NexusHome());
}
class NexusHome extends StatefulWidget{@override State<NexusHome> createState()=>_NState();}
class _NState extends State<NexusHome>{
  double v=500; double t=15;
  @override Widget build(BuildContext c){
    double total=v*12*t*1.62;
    return Scaffold(body:ListView(padding:EdgeInsets.all(20),children:[
      SizedBox(height:50),Text('NEXUS OS',style:TextStyle(letterSpacing:4,fontSize:10,color:Colors.white38)),SizedBox(height:15),
      Text('R\$ 47.320,50',style:TextStyle(fontSize:38,fontWeight:FontWeight.w800)),Text('Patrimônio total',style:TextStyle(color:Colors.white38)),
      SizedBox(height:25),Container(padding:EdgeInsets.all(24),decoration:BoxDecoration(color:Color(0xFF1C1C1E),borderRadius:BorderRadius.circular(32)),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
        Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:[Text('Projeção'),Container(padding:EdgeInsets.symmetric(horizontal:12,vertical:6),decoration:BoxDecoration(color:Color(0xFFD4FF32),borderRadius:BorderRadius.circular(20)),child:Text('${t.toInt()} ANOS',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:12)))]),
        SizedBox(height:20),Text('R\$ ${total.toStringAsFixed(0)}',style:TextStyle(fontSize:36,color:Color(0xFFD4FF32),fontWeight:FontWeight.bold)),
        SizedBox(height:20),Text('Aporte mensal R\$ ${v.toInt()}'),Slider(value:v,min:100,max:5000,divisions:49,activeColor:Color(0xFFD4FF32),onChanged:(x)=>setState(()=>v=x)),
        Text('Tempo ${t.toInt()} anos'),Slider(value:t,min:1,max:30,activeColor:Color(0xFFD4FF32),onChanged:(x)=>setState(()=>t=x)),
        SizedBox(height:20),Container(width:double.infinity,padding:EdgeInsets.all(18),decoration:BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(20)),child:Text('GERAR ESTRATÉGIA NEXUS',textAlign:TextAlign.center,style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold))),
      ]))
    ]));
  }
}
