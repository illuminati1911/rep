import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rep/assets/strings.dart';
import 'package:rep/general/rep_colors.dart';
import 'package:rep/general/rep_styles.dart';
import 'package:rep/models/home_state.dart';
import 'package:rep/views/dashboard/start_workout_widget.dart';
import 'package:rep/views/global/rep_appbar.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<HomeState>(context, listen: false);

    return Scaffold(
      appBar: RepAppBar(title: Strings.appName),
      body: Container(color: RepColors.main,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          children: <Widget>[
            Text(Strings.todaySectionTitle, style: RepStyles.titleLarge()),
            StartWorkoutWidget(
              onTap: () {
                print("TODO: Start new workout");
              },
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: state.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

/**
 * Container(
        color: RepColors.main,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Today', style: RepStyles.titleLarge(),)
              /*Text(
                'You have pushed the button this many times:',
                style: RepStyles.warningRed(),
              ),
              Consumer<HomeState>(
                builder: (_, state, __) => Text(
                  '${state.value}',
                  style: RepStyles.warningRed(),
                ),
              ),*/
            ],
          ),
      ),
 * 
 */
