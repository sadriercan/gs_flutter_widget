library gs_flutter_widget;

import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/widgets/circle_image_with_text_widget.dart';
import 'package:gs_flutter_widget/widgets/rounded_square_image_widget.dart';
import 'package:gs_flutter_widget/widgets/rounded_square_image_with_author_widget.dart';
import 'package:gs_flutter_widget/widgets/rounded_square_image_with_button_widget.dart';
import 'package:gs_flutter_widget/widgets/_section_header_widget.dart';
import 'package:gs_flutter_widget/widgets/square_circle_with_button_widget.dart';
import 'package:gs_flutter_widget/widgets/square_with_rating_widget.dart';
import 'package:gs_flutter_widget/widgets/standard_large_vertical_widget.dart';
import 'package:gs_flutter_widget/widgets/standard_medium_horizontal_widget.dart';
import 'package:gs_flutter_widget/widgets/standard_small_horizontal_widget.dart';
import 'package:gs_flutter_widget/widgets/standard_small_vertical_widget.dart';

class GSFlutterWidget {
  static Widget circleImageWithText(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemTitle,
    @required String Function(int index) itemImage,
    @required Function(int index) onItemClicked,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        Container(
          height: MediaQuery.of(context).size.width * 0.25 + 5 + 30,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return CircleImageWithTextWidget.build(
                  context, itemTitle(index), itemImage(index), () {
                onItemClicked(index);
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  static Widget roundedSquareImage(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemImage,
    @required Function(int index) onItemClicked,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        Container(
          height: 170,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return RoundedSquareImageWidget.build(context, itemImage(index),
                  () {
                onItemClicked(index);
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  static Widget roundedSquareImageWithAuthor(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemImage,
    @required Function(int index) onItemClicked,
    @required Function(int index) authorName,
    @required Function(int index) authorImage,
    @required Function(int index) created,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        Container(
          height: 250,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return RoundedSquareImageWithAuthorWidget.build(
                  context,
                  itemImage(index),
                  authorImage(index),
                  created(index),
                  authorName(index), () {
                onItemClicked(index);
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  static Widget roundedSquareImageWithButton(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemImage,
    @required String Function(int index) itemTitle,
    @required Function(int index) onItemClicked,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        Container(
          height: 250,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return RoundedSquareImageWithButtonWidget.build(
                  context, itemTitle(index), itemImage(index), () {
                onItemClicked(index);
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  static Widget squareCircleWithButton(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemImage,
    @required String Function(int index) itemTitle,
    @required String Function(int index) itemSubTitle,
    @required Function(int index) onItemClicked,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        Container(
          height: 260,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return SquareCircleWithButtonWidget.build(context,
                  itemTitle(index), itemSubTitle(index), itemImage(index), () {
                onItemClicked(index);
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  static Widget squareWithRating(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemImage,
    @required String Function(int index) itemTitle,
    @required String Function(int index) itemRate,
    @required String Function(int index) itemReviewer,
    @required String Function(int index) itemType,
    @required Function(int index) onItemClicked,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        Container(
          height: 190,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return SquareWithRatingWidget.build(
                context,
                itemTitle(index),
                itemImage(index),
                itemRate(index),
                itemReviewer(index),
                itemType(index),
                () {
                  onItemClicked(index);
                },
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  static Widget standardLargeVertical(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemImage,
    @required String Function(int index) itemTitle,
    @required String Function(int index) authorName,
    @required Function(int index) onItemClicked,
  }) {
    return Column(
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: 10, right: 10),
          shrinkWrap: true,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return StandardLargeVerticalWidget.build(
              context,
              itemTitle(index),
              itemImage(index),
              authorName(index),
              () {
                onItemClicked(index);
              },
            );
          },
          scrollDirection: Axis.vertical,
        ),
      ],
    );
  }

  static Widget standardMediumHorizontal(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemImage,
    @required String Function(int index) itemTitle,
    @required String Function(int index) authorName,
    @required Function(int index) onItemClicked,
  }) {
    return Column(
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        Container(
          height: 220,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return StandardMediumHorizontalWidget.build(
                context,
                itemTitle(index),
                itemImage(index),
                authorName(index),
                () {
                  onItemClicked(index);
                },
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  static Widget standardSmallHorizontal(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemImage,
    @required String Function(int index) itemTitle,
    @required String Function(int index) authorName,
    @required Function(int index) onItemClicked,
  }) {
    return Column(
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        Container(
          height: 220,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return StandardSmallHorizontalWidget.build(
                context,
                itemTitle(index),
                itemImage(index),
                authorName(index),
                () {
                  onItemClicked(index);
                },
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  static Widget standardSmallVertical(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemImage,
    @required String Function(int index) itemTitle,
    @required String Function(int index) authorName,
    @required Function(int index) onItemClicked,
  }) {
    return Column(
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        Card(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                indent: 15,
                endIndent: 15,
                height: 0,
                thickness: 1,
              );
            },
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return StandardSmallVertical.build(
                context,
                itemTitle(index),
                itemImage(index),
                authorName(index),
                () {
                  onItemClicked(index);
                },
              );
            },
            scrollDirection: Axis.vertical,
          ),
        ),
      ],
    );
  }
}
