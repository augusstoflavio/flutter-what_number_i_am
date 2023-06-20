import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_number_am_i/pages/home/home_page_provider.dart';

import '../../widgets/message.dart';
import '../../widgets/remaining_changes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var homePageProvider = context.watch<HomePageProvider>();
    var state = homePageProvider.homePageState;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 50.0),
        child: Column(
          children: [
            Text(
              "What number i am?",
              style: theme.textTheme.headlineSmall,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (text) {
                homePageProvider.changeCurrentText(text);
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: state.buttonIsEnabled
                    ? () {
                        homePageProvider.verify();
                      }
                    : null,
                child: const Text("it's that?")),
            RemainingChanges(
              remainingChances: state.remainingChances,
            ),
            const SizedBox(height: 10),
            homePageProvider.homePageState.showMessage
                ? Message(
                    message: state.message,
                    color: state.messageColor,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
