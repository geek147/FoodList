import 'package:assigment/app/config/app_text_styles.dart';
import 'package:assigment/data/models/food_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final FoodModel foodModel;

  const DetailPage({super.key, required this.foodModel});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Detail'),
      ),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              Text(
                foodModel.name ?? "",
                style: AppTextStyles.title,
                maxLines: null,
              ),
              const SizedBox(
                height: 10,
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: CachedNetworkImage(
                  memCacheHeight: 150,
                  memCacheWidth: 150,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => CupertinoActivityIndicator(),
                  errorWidget: (context, url, error) => Container(
                    color: Colors.grey,
                  ),
                  imageUrl: foodModel.image ?? "",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "How to: ",
                style: AppTextStyles.title,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                foodModel.desc ?? "",
                style: AppTextStyles.body,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
