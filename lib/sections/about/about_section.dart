import 'package:flutter/material.dart';
import 'package:myfirstapp/components/default_button.dart';
import 'package:myfirstapp/components/my_outline_button.dart';
import 'package:myfirstapp/components/section_title.dart';
import 'package:myfirstapp/constant.dart';
import 'package:myfirstapp/sections/about/widgets/about_sec_tex.dart';
import 'package:myfirstapp/sections/about/widgets/about_text.dart';
import 'package:myfirstapp/sections/about/widgets/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const Row(
            children: [
              SectionTitle(
                color: Color(0xFFFF0000),
                title: "About me",
                subTitle: "",
              ),
            ],
          ),
          const Row(
            children: [
              AboutText(),
              Expanded(
                child: AboutSecText(
                  text:
                      "about meadkjfklsdjfowerkn difuiweurnsd  dfjdskfjdf  dskfjsdkf kaj fksdjf  sdkf sdfweueriruwe sdfuiweur d fideroiuer fjdfu idsfjksdfj 9uer sadlkfjlksjdf laskdjfkljsd nfk  aoidfisdf lksdjfljsdf  sdfdefsdfk sdkfsdjfk ",
                ),
              ),
              ExpericenceCard(numOfExp: "01"),
              Expanded(
                child: AboutSecText(
                  text:
                      "about meadkjfklsdjfowerkn difuiweurnsd  dfjdskfjdf  dskfjsdkf kaj fksdjf  sdkf sdfweueriruwe sdfuiweur d fideroiuer fjdfu idsfjksdfj 9uer sadlkfjlksjdf laskdjfkljsd nfk  aoidfisdf lksdjfljsdf  sdfdefsdfk sdkfsdjfk ",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {},
              ),
              const SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
