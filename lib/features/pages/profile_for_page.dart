import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProfileForPage extends StatelessWidget {
  ProfileForPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){},
            icon: Icon(FontAwesomeIcons.commentDots),
            color: Colors.black54,
          ),
          IconButton(
              onPressed:(){},
              icon: Icon(Icons.more_vert,
                color: Colors.black54,
              )
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200
              ),
              child: Text("I am a driven and innovative junior developer with"
                  " a fervent interest in mobile app development using Flutter. "
                  "I am also proficient in Dart programming language, I specialize in crafting cross-platform"
                  " applications that deliver exceptional user experiences. With a keen eye for "
                  "detail and a passion for problem-solving, I am eager to contribute my skills to "
                  "dynamic development teams, leveraging emerging technologies to build intuitive and "
                  "impactful mobile solutions.",
                style: TextStyle(
                  color: Colors.black,
                ),),
            ),
            _buildTitle("Skills"),
            SizedBox(height: 10,),
            _buildSkillRow("Dart",0.7),
            SizedBox(height: 5,),
            _buildSkillRow("Timemanagement",0.8),
            SizedBox(height: 5,),
            _buildSkillRow("Debugging",0.6),
            SizedBox(height: 5,),
            _buildSkillRow("Flutter",0.8),
            _buildTitle("Experience"),
            SizedBox(height: 3,),
            _buildExperienceRow(title:"Internship at AdeptBloc", subtitle: ''),
            _buildExperienceRow(title:"Internship at My Academy", subtitle: ''),
            _buildExperienceRow(title:"Personal Tutor at Grazac Academy", subtitle: ''),
            _buildTitle("Education"),
            _buildExperienceRow(title:"Currently studying at Ajayi Crowther University, B.Eng Mechanical Engineering,", subtitle: "B.Eng Mechanical Engineering"),
            _buildTitle("Contacts"),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 15),
                child: Icon(Icons.email),
              ),
              title: Text('oluwasegundaniel68@gmail.com'),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8,left: 15),
                child: Icon(Icons.phone),
              ),
              title: Text("07013673180"),
            ),
            buildSocialsRow(),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

  Row buildSocialsRow() {
    return Row(
      children: [
        SizedBox(width: 20,),
        IconButton(
          color: Colors.indigo,
          onPressed: (){},
          icon:Icon(FontAwesomeIcons.linkedin),
        ),
        SizedBox(width: 5,),
        IconButton(
          color: Colors.black,
          onPressed: (){},
          icon:Icon(FontAwesomeIcons.github) ,
        ),
        SizedBox(width: 5,),
        IconButton(
          color: Colors.blue,
          onPressed: (){
          },
          icon:Icon(FontAwesomeIcons.twitter),
        ),
      ],
    );
  }


  ListTile _buildExperienceRow({required String title, required String subtitle,}) {
    return ListTile(
      leading: Icon(Icons.arrow_right,
        color: Colors.black,
      ),
      title: Text(title,style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),),
    );
  }


  Row _buildSkillRow(String skill,double level ) {
    return Row(
      children: [
        SizedBox(width: 16,),
        Expanded(
          flex: 2,
          child: Text(skill.toUpperCase(),
          ),
        ),
        SizedBox(width: 10,),
        Expanded(
          flex: 5,
          child:LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 16,),
      ],
    );
  }

  Padding _buildTitle(String title) {
    return Padding(
      padding:EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title.toUpperCase(),style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
          Divider(color: Colors.grey,),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: [
        SizedBox(width: 20,),
        Container(
            width: 90.0,
            height: 90,
            child: CircleAvatar(
              radius: 39,
              backgroundColor: Colors.deepPurple,
              child: CircleAvatar(
                  radius: 43,
                  backgroundImage:AssetImage('images/daniel.jpeg')),
            )
        ),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            Text('Sodimu Daniel',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Mobile App Developer')
          ],
        )
      ],
    );
  }
}
