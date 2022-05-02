import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                _buildHeader(),
                Stack(
                  children: [
                    Image.network("https://pixabay.com/get/g471f0e41427a37c5c955c47dbc60d51c6c6482a52e98c5ca0d5b7f0c80ad6a1012d6019699100762e01fd907fcb847972a260136e4087f3ebb663f65a1fd3edf_640.jpg",fit: BoxFit.cover, width: double.infinity, height: 300,),
                    _buildChoice(),
                  ],
                ),
                _buildOptions(),
              ],
            ),

          ),
        ),
    );
  }

  Widget _buildOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.add, color: Colors.white,)),
        ElevatedButton(
          onPressed: (){print('Play button');},
          child:  Text('Play', style: TextStyle(color: Colors.black)),
          style: ElevatedButton.styleFrom(primary: Colors.white,),
        ),
        IconButton(onPressed: (){print('Info button');}, icon: Icon(Icons.info,color: Colors.white,))
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 2,),
        Image.asset('assets/images/logo.png', height: 48, width: 30,),
        IconButton(onPressed: (){print('Search');}, icon: Icon(Icons.search, color: Colors.white,)),
        IconButton(onPressed: (){print('profile');}, icon: Icon(Icons.supervised_user_circle, color: Colors.white,)),
        ElevatedButton(
          onPressed: (){print('upgrade');},
          child: Text('Upgrade'),
          style: ElevatedButton.styleFrom(primary: Colors.red),
        ),
        SizedBox(width: 5,)
      ],
    );
  }

  Widget _buildChoice() {
    return                 Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: (){print('Tvshows button');},
          child: Text('TV Shows', style: TextStyle(color: Colors.white),),
        ),
        TextButton(
          onPressed: (){print('Movies button');},
          child: Text('Movies',style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: (){print('Categories button');},
          child: Text('Categories',style: TextStyle(color: Colors.white),),
        ),

      ],
    );

  }

}
