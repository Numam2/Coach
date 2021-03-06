import 'package:flutter/material.dart';
import 'package:personal_trainer/Screens/Home/Inicio_Navigate.dart';
import 'package:personal_trainer/Shared/SharePrompt.dart';

class ReconitionHabitChallenge extends StatelessWidget {

  final String headline;
  final String time;
  ReconitionHabitChallenge({this.headline, this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ///Imgae
            Container(
              height: 200,
              child: Image(
                  image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/ludus-health-coach.appspot.com/o/App%20Images%2FReconition%20Habit%20Challenge%20Complete.jpg?alt=media&token=d3c23e22-0cdf-484a-9184-ce43b52dce72')),
            ),
            SizedBox(height: 20),

            ///Message
            Text('¡Excelente Trabajo!', style: Theme.of(context).textTheme.title),
            SizedBox(height: 10),

            ///Body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                'Te propusiste adoptar un nuevo hábito y lograste mantenerlo en el tiempo establecido. Pero esto no termina aca, ahora demuestra que puedes sostenerlo a largo plazo. Sigue así',
                style: Theme.of(context).textTheme.display1,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),

            ///Go home Button
            Container(
              height: 35.0,
              child: RaisedButton(
                onPressed: () {
                  return showDialog(
                    context: context,
                      builder: (context) {
                        return SharePrompt(
                          type: 'Level Up',
                          headline: headline,
                          time: time,
                          activityIcon: Icons.fitness_center,
                        );
                      });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).accentColor,
                        Theme.of(context).primaryColor
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text("COMPARTIR",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.button),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),

            ///Share button
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InicioNew()));
              },
              child: Text("Ir a mi página principal",
                style: Theme.of(context).textTheme.body1,
              )
            ),

          ],
        ),
      ),
    );
  }
}
