import 'package:core/constants/config/core_colors.dart';
import 'package:core/constants/enums/route_enums.dart';
import 'package:core/core_widgets/core_button.dart';
import 'package:core/core_widgets/core_text_field.dart';
import 'package:core/helpers/core_helpers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final respo = ResponsiveHelper.isDesktop(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(
        children: [
          if (respo) const SideBarImage(),
          Expanded(
            flex: 2,
            child: Container(
              decoration: respo ? null : BoxDecoration(color: blackColor.withOpacity(.9), image: const DecorationImage(image: AssetImage("assets/images/testimg3.jpg"), fit: BoxFit.cover, opacity: .3)),
              child: Padding(
                padding: EdgeInsets.all(respo ? 20 : 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: respo ? 0 : 80,
                      color: respo ? transparentColor : whiteColor.withOpacity(.2),
                      child: SizedBox(
                        height: respo ? 400 : 400,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextField(
                                  width: respo ? 370 : double.infinity,
                                  hintText: "Email",
                                  height: respo ? 50 : 65,
                                  onEditingComplete: () {
                                    FocusScope.of(context).nextFocus();
                                  },
                                ),
                                40.height,
                                CustomTextField(
                                  width: respo ? 370 : double.infinity,
                                  hintText: "Password",
                                  height: respo ? 50 : 65,
                                  onEditingComplete: () async {
                                    context.goNamed(RoutePathCore.todo.name);
                                  },
                                  suffix: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.visibility_off),
                                    iconSize: 20,
                                  ),
                                ),
                                40.height,
                                SizedBox(
                                  width: respo ? 370 : double.infinity,
                                  height: respo ? 50 : 65,
                                  child: CustomButton(
                                    onPressed: () async {},
                                    child: Text('Login', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: respo ? whiteColor : whiteColor.withOpacity(.7).withOpacity(.7), fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                15.height,
                                Center(
                                  child: RichText(
                                    text: TextSpan(
                                      style: Theme.of(context).textTheme.labelMedium?.copyWith(color: respo ? darkGrey : whiteColor.withOpacity(.7).withOpacity(.7), fontSize: 14, fontWeight: FontWeight.bold),
                                      children: [
                                        const TextSpan(text: "Don't have an account? "),
                                        TextSpan(
                                          text: 'Contact Us',
                                          style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).primaryColor, fontSize: 14, fontWeight: FontWeight.bold),
                                          recognizer: TapGestureRecognizer()..onTap = () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    10.height,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SideBarImage extends StatelessWidget {
  const SideBarImage({super.key});

  @override
  Widget build(BuildContext context) {
    final respo = ResponsiveHelper.isDesktop(context);
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: blackColor.withOpacity(.1),
                image: const DecorationImage(
                  image: AssetImage('assets/images/testimg2.jpg'),
                  fit: BoxFit.cover,
                  opacity: .4,
                )),
          ),

          // Terms and conditions
          Positioned(
            bottom: 10,
            left: 10,
            child: Text("", style: Theme.of(context).textTheme.labelMedium!.copyWith(color: respo ? UiColor.extraDarkGreyColor : whiteColor.withOpacity(.7).withOpacity(.7), fontSize: 12, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
