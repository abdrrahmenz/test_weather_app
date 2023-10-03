import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/helper/helper.dart';
import 'package:weather_app/models/models.dart';
import 'package:weather_app/providers/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LocationModel? selectedValue;
  List<Map<String, dynamic>> itemList = [
    {
      "date": "00:00",
      "tempC": "25",
      "status": "Cloudy",
    },
    {
      "date": "06:00",
      "tempC": "27",
      "status": "Cloudy",
    },
    {
      "date": "12:00",
      "tempC": "30",
      "status": "Cloudy",
    },
    {
      "date": "18:00",
      "tempC": "24",
      "status": "Cloudy",
    },
    {
      "date": "00:00",
      "tempC": "23",
      "status": "Cloudy",
    },
    {
      "date": "00:00",
      "tempC": "23",
      "status": "Cloudy",
    },
    {
      "date": "00:00",
      "tempC": "23",
      "status": "Cloudy",
    }
  ];

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(
        value: "DKI Jakarta",
        child: Text(
          "DKI Jakarta",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: Dimens.dp18),
        ),
      ),
      DropdownMenuItem(
        value: "Surakarta",
        child: Text(
          "Surakarta",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: Dimens.dp18),
        ),
      ),
      DropdownMenuItem(
        value: "Semarang",
        child: Text(
          "Semarang",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: Dimens.dp18),
        ),
      ),
      DropdownMenuItem(
        value: "Sukoharjo",
        child: Text(
          "Sukoharjo",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: Dimens.dp18),
        ),
      ),
    ];
    return menuItems;
  }

  @override
  void initState() {
    super.initState();
    final apiProvider = context.read<AppProvider>();
    if (apiProvider.locationList.isEmpty) {
      Future.microtask(() async => apiProvider.getCurrentPosition(context));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: Dimens.height(context) / 1.7,
              color: Colors.blue,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Dimens.dp16.height,
                  SizedBox(
                    width: Dimens.width(context),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: Dimens.dp12),
                        child: Consumer<AppProvider>(
                          builder: (context, valueProvider, child) {
                            final state = valueProvider.stateLocation;
                            return state.map(
                              initial: (value) {
                                return const Padding(
                                  padding: EdgeInsets.only(bottom: Dimens.dp8),
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              },
                              loading: (value) {
                                return const Padding(
                                  padding: EdgeInsets.only(bottom: Dimens.dp8),
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              },
                              loaded: (value) {
                                final allLocations = value.data;
                                return Column(
                                  children: [
                                    DropdownButton(
                                      underline: Container(
                                        color: Colors.purple.withOpacity(0.7),
                                      ),
                                      value:
                                          valueProvider.selectedDropdownValue,
                                      onChanged: (LocationModel? newValue) {
                                        if (newValue != null) {
                                          valueProvider
                                              .onChangeDropdownValue(newValue);
                                        }
                                      },
                                      icon: Container(
                                        color: Colors.purple.withOpacity(0.7),
                                      ),
                                      isExpanded: true,
                                      items: allLocations.map(
                                        (curItem) {
                                          if (curItem ==
                                              valueProvider
                                                  .selectedDropdownValue) {
                                            return DropdownMenuItem(
                                              value: curItem,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    curItem.propinsi,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: Dimens.dp18),
                                                  ),
                                                  Dimens.dp8.width,
                                                  const Icon(
                                                    Icons
                                                        .keyboard_arrow_down_outlined,
                                                    size: Dimens.dp24,
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            );
                                          } else {
                                            return DropdownMenuItem(
                                              value: curItem,
                                              child: Text(
                                                "${curItem.propinsi} - ${curItem.kota} - ${curItem.kecamatan}",
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: Dimens.dp18),
                                              ),
                                            );
                                          }
                                        },
                                      ).toList(),
                                    ),
                                    Text(
                                      valueProvider
                                              .selectedDropdownValue?.kota ??
                                          '',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: Dimens.dp14),
                                    ),
                                  ],
                                );
                              },
                              error: (value) {
                                final message = value.message;
                                return Center(
                                  child: Text(message),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Dimens.dp16.height,
                  Consumer<AppProvider>(
                    builder: (context, valueProvider, child) {
                      final state = valueProvider.stateDetailLocation;
                      return state.map(
                        initial: (value) {
                          return const Expanded(
                            child: Center(
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                        loading: (value) {
                          return const Expanded(
                            child: Center(
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                        loaded: (value) {
                          return Column(
                            children: [
                              Text(
                                "${valueProvider.currentDetailLocationModel!.tempC}°",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: Dimens.dp75),
                              ),
                              Dimens.dp16.height,
                              Text(
                                FormatUtils.convertToFullFormat(valueProvider.currentDetailLocationModel!.jamCuaca),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: Dimens.dp16),
                              ),
                              Dimens.dp16.height,
                              Text(
                                valueProvider.currentDetailLocationModel!.cuaca,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: Dimens.dp20),
                              ),
                              Dimens.dp24.height,
                              Image.asset(
                                'assets/cloudy.png',
                                height: 100,
                              )
                            ],
                          );
                        },
                        error: (value) {
                          final message = value.message;
                          return Center(
                            child: Text(message),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Text(
              "Cuaca Minggu ini",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: Dimens.dp20),
            ),
          ),
          Dimens.dp16.height,
          SizedBox(
            height: 250,
            child: Consumer<AppProvider>(
              builder: (context, valueProvider, child) {
                final state = valueProvider.stateDetailLocation;
                return state.map(
                  initial: (value) {
                    return const Center(
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      ),
                    );
                  },
                  loading: (value) {
                    return const Center(
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      ),
                    );
                  },
                  loaded: (value) {
                    final detailLocations = value.data;
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                        child: Column(
                          children: [
                            Text(
                              FormatUtils.convertToHours(
                                  detailLocations[index].jamCuaca),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: Dimens.dp16),
                            ),
                            Dimens.dp16.height,
                            Image.asset(
                              'assets/cloudy.png',
                              height: 32,
                            ),
                            Dimens.dp16.height,
                            Text(
                              "${detailLocations[index].tempC}°",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: Dimens.dp34),
                            ),
                          ],
                        ),
                      ),
                      separatorBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimens.dp8,
                        ),
                      ),
                      itemCount: detailLocations.length,
                    );
                  },
                  error: (value) {
                    final message = value.message;
                    return Center(
                      child: Text(message),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
