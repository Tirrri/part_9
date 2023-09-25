import 'package:flutter/material.dart';
import 'package:part_9/models/User.dart';
import 'package:part_9/screens/UserDetailScreen.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

List<User> usersList = [
  User(
    age: 12,
    firstName:'Иванушка',
    lastName:'Иванушков',
    phone: '+6456577',
    email: 'asdgaag@gmail.com',
    avatar: 'https://cs12.pikabu.ru/post_img/big/2022/11/08/10/1667929102152124336.jpg'),
      User(
    age: 15,
    firstName:'Иванушка',
    lastName:'Иванушков',
    phone: '+7787177777',
    email: 'asdgaag@gmail.com',
    avatar: ''),
      User(
    age: 50,
    firstName:'Иванушка',
    lastName:'Иванушков',
    phone: '+77746546',
    email: 'asdgaag@gmail.com',
    avatar: 'https://i.ytimg.com/vi/3ps9qz3PmBo/maxresdefault.jpg'),
];

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: usersList.length, itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => UserDetailScreen(user: usersList[index],),
          ),
        );

        },
        child: Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    
                    height: 100.0,
                    width: 100.0,
                    child: usersList[index].avatar == ''
                        ? Image.network('https://cdn-icons-png.flaticon.com/512/1144/1144760.png')
                        : Image.network(usersList[index].avatar,
                        fit: BoxFit.cover,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Имя: ' + usersList[index].firstName,
                          textAlign: TextAlign.left,
                        ),
                        Text('Фамилия: ' + usersList[index].lastName),
                        Text('Возраст: ' + usersList[index].age.toString()),
                        Text('Телефон: ' + usersList[index].phone),
                        Text('Телефон: ' + usersList[index].email),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ),
      );
    }
  );
  }
}