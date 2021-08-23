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

  final triviaService = TriviaService();

  List<Category> categories = [];
  late List<Category> categories2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () async {
                categories = await getCategories();
                setState(() {
                  categories2 = categories;
                });
              },
              child: Text('Categorias')
          ),
          // Row(
          //   children: _rowListCategories()
          // )
        ],
      ),
    );}

  getCategories() async {
    categories = await triviaService.fetchCategory();
    return categories;
  }

  _rowListCategories() {
    if (categories == []){
      return Text('carregando...');
    }
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        print('${categories.elementAt(index).toString()}');

        return ListTile(
            title: Text('${categories.elementAt(index).name}'),
        );
      },
    );
  }
}