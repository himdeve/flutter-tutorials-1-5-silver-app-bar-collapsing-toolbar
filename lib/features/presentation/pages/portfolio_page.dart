import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            backgroundColor: Colors.red,
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Portfolio',
                style: TextStyle(color: Colors.black),
              ),
              background: Image.network(
                'https://himdeve.eu/wp-content/uploads/2015/05/himdeve_labrador_with_cute_woman_model.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  Center _buildContent() {
    return Center(
      child: Text(
        'Portfolio',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
