// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../View_model/news_view_model.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  NewsViewModel newsViewModel = NewsViewModel();
  final format = DateFormat('MMMM,dd,yyyy');
  String categoryName = 'general';

  List<String> categoryList = [
    'General',
    'Entertainment',
    'Health',
    'Sports',
    'Business',
    'Technology',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryList.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: InkWell(
                  onTap: () {
                    categoryName = categoryList[index];
                    setState(() {});
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: categoryName == categoryList[index]
                              ? Colors.blue
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Center(child: Text(categoryList[index])),
                      )),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
