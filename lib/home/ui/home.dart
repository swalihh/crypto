import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Crypto',style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.yellow,
      ),
      body:  Column(
      children: [
        const TabBar(tabs: [
     Tab(
    text: 'Coin',
     ),
     Tab(
    text: 'Wishlist',
     ),
    
        ],
        indicatorColor: Colors.yellow,

        ),
  Expanded(
    child: TabBarView(
      children: [
      ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(child:Text('${index+1}') ,),
           title: const Text('test'),
           subtitle: const Text('1253'),
           trailing:Container(
            height: 50,
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('+ 9888'),
                IconButton(onPressed: (){}, icon: const Icon(Icons.add))
              ],
            ),
           )
          ),
        );
      },),
         ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
        return const ListTile(
         title: Text('test'),
        );
      },)
    ]),
  )

        
      ],
      ),
    
      ),
    );
  }
}