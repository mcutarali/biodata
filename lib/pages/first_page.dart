import 'package:flutter/material.dart';
import "package:flutter_application_1/theme.dart";
import 'package:url_launcher/url_launcher.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildImage() {
      return Expanded(
        child: Center(
          child: Container(
            width: 280,
            height: 154,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/ganteng.jpg',
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget buildBottomSheet() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              'About Me\n',
              style: blackTextStyle.copyWith(
                fontSize: 22,
                wordSpacing: 5,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Nama\t\t\t\t\t\t\t\t: Muchtar Ali Yahya\nNIM\t\t\t\t\t\t\t\t\t\t: A11.2020.12582\nHobby\t\t\t\t\t\t: Berenang\nDeskripsi\t: Saya sebagai mahasiswa ingin menyampaikan kepada teman teman agar tetap semangat dan pantang menyerah.',
              // textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 45,
              width: 200,
              child: ElevatedButton(
                onPressed: () async {
                  launch(
                      "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31654.993971177268!2d111.02711031519956!3d-7.367989659725473!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a03cca21e43c5%3A0x5027a76e355b200!2sGabus%2C%20Kec.%20Ngrampal%2C%20Kabupaten%20Sragen%2C%20Jawa%20Tengah!5e0!3m2!1sid!2sid!4v1610345174003!5m2!1sid!2sid");
                },
                style: ElevatedButton.styleFrom(
                  primary: kYellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(4),
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                ),
                child: Text(
                  'Alamat',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 45,
              width: 200,
              child: ElevatedButton(
                onPressed: () async {
                  launch("tel:08984834411");
                },
                style: ElevatedButton.styleFrom(
                  primary: kYellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(4),
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                ),
                child: Text(
                  'No HP',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 45,
              width: 200,
              child: ElevatedButton(
                onPressed: () async {
                  launch("mailto:111202012582@mhs.dinus.ac.id");
                },
                style: ElevatedButton.styleFrom(
                  primary: kYellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(4),
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                ),
                child: Text(
                  'Email',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          buildImage(),
          buildBottomSheet(),
        ],
      ),
    );
  }
}
