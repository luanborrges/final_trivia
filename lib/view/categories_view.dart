import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_project_mobile2/model/model.dart';
import 'package:final_project_mobile2/service/service.dart';

class CategoriesView extends StatefulWidget{

  CategoriesView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CategoriesViewState createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {


  List<Category> categories = [];
  bool _progress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
              child: Column(
                  children: [
                    Text('Categorias') ,
                    _rowProgress()])
          ),
          Expanded(
            flex: 5,
            child: _rowListCategories()
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await getCategories(context);
        },
      ),
    );
  }

  getCategories(BuildContext context) async {
    final triviaService = TriviaService();
    setState(() {
      _progress = true;
    });
    categories = await triviaService.fetchCategory();
    setState(() {
      _progress = false;
    });

  }

   _rowListCategories() {
    if(categories.isEmpty) {
      return Text(' ');
    }
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {

        return ListTile(
            title: Text('${categories.elementAt(index).name}'),
        );
      },
    );
  }

  _rowProgress() {
    return _progress ? const CircularProgressIndicator() : Container();
  }
}