import 'package:bank_app/core/extensions/app_extensions.dart';
import 'package:bank_app/core/routes.dart';
import 'package:bank_app/presentation/widgets/app_bar.dart';
import 'package:bank_app/utils/app_colors.dart';
import 'package:bank_app/utils/strings.dart';
import 'package:bank_app/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../widgets/budget_tap_item.dart';

class BudgetScreen extends StatelessWidget {
  final ScrollController listController = ScrollController();
  BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppStrings.backgroundImage,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: appBar(title: 'Budget', context: context),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: context.height * 0.01,
                  ),
                  Text(
                    '\$ 2000',
                    style: context.textList.bodyLarge,
                  ),
                  SizedBox(
                    height: context.height * 0.07,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(
                        3,
                        (index) => budgetTapItem(
                          context: context,
                          text: 'Monthly',
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: context.height * 0.05,
                  ),
                  //! change text item
                  GestureDetector(
                    onTap: () => ShowToast.show(message: 'Tapped'),
                    onDoubleTap: () => ShowToast.show(
                        message: 'Double Tapped', backColor: Colors.green),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: context.width * 0.02,
                        ),
                        Text(
                          'Change Budget',
                          style: context.textList.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),

                  //! this is the chart section
                  SizedBox(
                    height: context.height * 0.3,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: SfCircularChart(
                        title: ChartTitle(text: 'Mahmoud Osman'),
                        legend: Legend(isVisible: true),
                        series: <PieSeries<_PieData, String>>[
                          PieSeries<_PieData, String>(
                            explode: true,
                            explodeIndex: 0,
                            dataSource: [
                              ...List.generate(
                                  10,
                                  (index) =>
                                      _PieData('${index + 1}', index + 1))
                            ],
                            xValueMapper: (_PieData data, _) => data.xData,
                            yValueMapper: (_PieData data, _) => data.yData,
                            dataLabelMapper: (_PieData data, _) => data.text,
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: context.height * 0.03,
                  ),

                  Text(
                    'Expenses By Category',
                    style: context.textList.displayMedium!.copyWith(
                      color: Colors.black87.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                    height: context.height * 0.04,
                  ),

                  SizedBox(
                    height: context.height / 7,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: ListView.separated(
                            controller: listController,
                            physics: const BouncingScrollPhysics(),
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                CardSectionItem(itmeName: 'Item ${index + 1}'),
                            separatorBuilder: (context, index) => SizedBox(
                              width: context.width * 0.03,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            listController.jumpTo(context.width / 2);
                          },
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                              bottom: context.height * 0.05,
                              start: 5,
                            ),
                            child: const Icon(
                              Icons.chevron_right_sharp,
                              size: 40,
                              color: AppColors.orangeColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //! Add button section
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: context.height * 0.02,
                    ),
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, AppRoutes.errorRoute),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.orangeColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(
                            Icons.add_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardSectionItem extends StatelessWidget {
  final String itmeName;
  const CardSectionItem({
    required this.itmeName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: const SizedBox(
            height: 60,
            width: 60,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Image(
                image: AssetImage(
                  'assets/images/debit-card.png',
                ),
                fit: BoxFit.cover,
                // width: 50,
                // height: 50,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          itmeName,
          style: context.textList.bodySmall!
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text]);
  final String xData;
  final num yData;
  final String? text;
}
