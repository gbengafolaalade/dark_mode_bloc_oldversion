import 'package:dark_mode/ui/global/theme/app_themes.dart';
import 'package:dark_mode/ui/global/theme/bloc/theme_bloc.dart';
import 'package:dark_mode/ui/global/theme/bloc/theme_event.dart';
import 'package:dark_mode/ui/global/theme/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreferencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferences'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index];
          return Card(
            color: appThemeData[itemAppTheme].primaryColor,
            child: ListTile(
              title: Text(
                itemAppTheme.toString(),
                
              ),
              onTap: () {
                BlocProvider.of<ThemeBloc>(context).dispatch(
                  ThemeChanged(theme: itemAppTheme),
                );
              },
            ),
          );
        },
      ),
    );
  }
}