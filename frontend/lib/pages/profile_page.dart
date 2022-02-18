import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seoatu/widgets/profile/header_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        HeaderWidget(),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200],
                      ),
                      child: Text('J',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('John Doe',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                          Text('johndoe@example.com'),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/icon_edit.svg'),
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary),
                      foregroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.secondary),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                    ),
                    child: Text('Sign Out',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
