import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String msg;
  const HomePage({Key? key,required this.msg}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  final _nameController = TextEditingController();


  @override
  void dispose() {
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.msg),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0,vertical: 20),
                child: TextField(
                  
                  controller: _nameController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      labelText: 'Enter Your Name'
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    final name = _nameController.text;
                    print(name);
                  },
                  child: const Text('Show name')
              ),
              const Text('You have pushed the button this many times'),
              Text('$_count',style: Theme.of(context).textTheme.headline1,),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Icon(Icons.add),
      ),
    );
  }
  _increment(){
    setState(() {
      _count++;
    });

    //print(_count);
  }

}
