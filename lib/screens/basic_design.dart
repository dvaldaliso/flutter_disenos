import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          //Titulo Widget
          Title(),
          //Button Section
          ButtonSection(),
          //Descripcion
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
                'Lorea non voluptate proident ex et reprehenderit et id ad. Qui veniam aliquip elit esse sunt fugiat sint. Cillum do proident esse fugiat nostrud quis deserunt do ex deserunt proident velit. Reprehenderit et excepteur minim nostrud quis anim est enim ea sint consequat. Consequat sunt exercitation magna consequat dolor deserunt deserunt et ad.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschine Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            icon: Icons.call,
            text: 'Call',
          ),
          CustomButton(
            icon: Icons.map_sharp,
            text: 'Route',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'Share',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
