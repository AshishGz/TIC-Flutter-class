import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/providerExample/ProductUI.dart';
import 'package:flutter_class_TIC/providerExample/controller.dart';
import 'package:provider/provider.dart';

class View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Controller()),
      ],
      child: ViewPresenter(),
    );
  }
}

class ViewPresenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contollerState = Provider.of<Controller>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        body: contollerState.loading
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: contollerState.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductUI(
                    product: contollerState.products[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Colors.green,
                ),
              ));
  }
}
