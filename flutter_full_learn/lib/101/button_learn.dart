import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text(
              'Save',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.blueGrey;
            })),
            onPressed: () {},
          ),
          const ElevatedButton(onPressed: null, child: Text('data')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(
            onPressed: () {
              //servise istek at
              //sayfanın rengini düzenle
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(10),
              ),
              onPressed: () {},
              child: const SizedBox(width: 200, child: Text('data'))),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.book),
              label: const Text('data')),
          InkWell(onTap: () {}, child: const Text('custom')),
          Container(
            height: 100,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ))
        ],
      ),
    );
  }
}


//borders:
//CircleBorder(), RoundedRectangleBorder()