import 'package:answer_me_app/features/authentication/login/presentation/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageView extends GetView<LoginController> {
  final bool startAnimation;
  const LoginPageView({Key? key, required this.startAnimation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mq = MediaQuery.of(context);

    return AnimatedScale(
      curve: Curves.elasticOut,
      scale: controller.showModalPage.value ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 1000),
      child: SizedBox(
        height: mq.size.height + 100,
        width: mq.size.width,
        child: Column(
          children: [
            const SizedBox(height: 360),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60),
              padding: const EdgeInsets.only(
                left: 60,
                right: 60,
                top: 60,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Form(
                key: controller.loginGK,
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: context.theme.primaryColor,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                      textScaleFactor: 1,
                    ),
                    const SizedBox(height: 33),
                    // TechfleetTextformfield(
                    //   contentPadding: EdgeInsets.symmetric(
                    //       vertical: 10,
                    //   textCapitalization: TextCapitalization.none,
                    //   textInputAction: TextInputAction.next,
                    //   fillColor: Colors.grey,
                    //   borderColor: Colors.transparent,
                    //   icon: const Icon(
                    //     MdiIcons.email,
                    //     color: ColorsConstants.COLOR_GREY,
                    //     size: 25,
                    //   ),
                    //   label: const Text(
                    //     'Email',
                    //     style: TextStyle(
                    //       color: ColorsConstants.COLOR_GREY,
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //     textScaleFactor: 1,
                    //   ),
                    //   controller: controller.emailEC,
                    //   validator: Validatorless.multiple([
                    //     Validatorless.required('Campo obrigatório.'),
                    //     Validatorless.email('E-mail inválido.'),
                    //   ]),
                    //   keyboardType: TextInputType.emailAddress,
                    // ),
                    const SizedBox(height: 25),
                    // Obx(() {
                    //   return TechfleetTextformfield(
                    //     contentPadding: EdgeInsets.symmetric(
                    //         vertical: 10),
                    //     textCapitalization: TextCapitalization.none,
                    //     fillColor: ColorsConstants.COLOR_LIGHT_GREY,
                    //     borderColor: Colors.transparent,
                    //     icon: const Icon(
                    //       MdiIcons.lock,
                    //       color: ColorsConstants.COLOR_GREY,
                    //       size: 25,
                    //     ),
                    //     label: const Text(
                    //       'Senha',
                    //       style: TextStyle(
                    //         color: ColorsConstants.COLOR_GREY,
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //       textScaleFactor: 1,
                    //     ),
                    //     controller: controller.passwordEC,
                    //     validator: Validatorless.required('Campo obrigatório.'),
                    //     suffixWidget: IconButton(
                    //       splashColor: Colors.transparent,
                    //       onPressed: () => controller.isPasswordVisible.value =
                    //           !controller.isPasswordVisible.value,
                    //       icon: controller.isPasswordVisible.value
                    //           ? const Icon(
                    //               MdiIcons.eye,
                    //               color: ColorsConstants.COLOR_GREY,
                    //               size: 25,
                    //             )
                    //           : const Icon(
                    //               MdiIcons.eyeOff,
                    //               color: ColorsConstants.COLOR_GREY,
                    //               size: 25,
                    //             ),
                    //     ),
                    //     obscureText: !(controller.isPasswordVisible.value),
                    //   );
                    // }),
                    const SizedBox(height: 35),
                    // TechfleetButton(
                    //   fontSize: 16,
                    //   borderRadius: 32,
                    //   label: 'Entrar',
                    //   onPressed: () {
                    //     FocusScope.of(context).unfocus();
                    //     if (controller.loginGK.currentState?.validate() ?? false) {
                    //       controller.login(
                    //         email: controller.emailEC.text,
                    //         password: controller.passwordEC.text,
                    //       );
                    //     }
                    //   },
                    //   width: SizeUtils.screenWidth,
                    // ),
                    const SizedBox(height: 15),
                    TextButton(
                      onPressed: () => {
                        if (controller.pageController.hasClients)
                          {
                            controller.pageController.animateToPage(
                              1,
                              duration: const Duration(milliseconds: 600),
                              curve: Curves.easeInOut,
                            ),
                          }
                      },
                      child: Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(
                          color: context.theme.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textScaleFactor: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Ainda não é cadastrado?',
                        textAlign: TextAlign.center,
                        textScaleFactor: 1,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.toNamed(''
                      // RoutesConstants.AUTH_REGISTER_ROUTE_PATH,
                      ),
                  style: const ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'Cadastre-se aqui',
                    textScaleFactor: 1,
                    style: TextStyle(
                      color: context.theme.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}