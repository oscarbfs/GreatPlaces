import 'package:flutter/material.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:great_places/utils/app_routes.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menus Lugares'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.PLACE_FORM);
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<GreatPlaces>(context, listen: false).loadPlaces(),
        builder: (ctx, snapshot) => snapshot.connectionState ==
                ConnectionState.waiting
            ? const Center(child: CircularProgressIndicator())
            : Consumer<GreatPlaces>(
                child: const Center(
                  child: Text('Nenhum local cadastrado'),
                ),
                builder: (ctx, greatPlaces, child) =>
                    greatPlaces.itemsCount == 0
                        ? child
                        : ListView.builder(
                            itemCount: greatPlaces.itemsCount,
                            itemBuilder: (ctx, i) => ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    FileImage(greatPlaces.ItemByIndex(i).image),
                              ),
                              title: Text(greatPlaces.ItemByIndex(i).title),
                              subtitle: Text(
                                  greatPlaces.ItemByIndex(i).location!.address),
                              onTap: () {},
                            ),
                          ),
              ),
      ),
    );
  }
}
