import 'package:mileage_run/models/aviation.dart';

final List<Aviation> airports = [
  const Aviation(value: 0, text: '東京羽田 / HND', position: Position(latitude: 35.55097982422877, longitude: 139.78860243866964)),
  const Aviation(value: 1, text: '東京成田 / NRT', position: Position(latitude: 35.76417269831989, longitude: 140.38479543645371)),
  const Aviation(value: 2, text: '大阪伊丹 / ITM', position: Position(latitude: 34.791019916502236, longitude: 135.441415345005)),
  const Aviation(value: 3, text: '大阪関西 / KIX', position: Position(latitude: 34.435251872576345, longitude: 135.2440419164994)),
  const Aviation(value: 4, text: '福岡 / FUK', position: Position(latitude: 33.59734413688368, longitude: 130.44775705699254)),
  const Aviation(value: 5, text: '千歳 / CTS', position: Position(latitude: 42.787621780896544, longitude: 141.68075932352338)),
  const Aviation(value: 6, text: '中部 / NGO', position: Position(latitude: 34.85910410495911, longitude: 136.81502420695838)),
  const Aviation(value: 7, text: '那覇 / OKA', position: Position(latitude: 26.206561337007972, longitude: 127.65080596680644)),
  const Aviation(value: 8, text: '鹿児島 / KOJ', position: Position(latitude: 31.80121304331373, longitude: 130.7159733785464)),
  const Aviation(value: 9, text: '天草 / AXJ', position: Position(latitude: 32.482756951815794, longitude: 130.1553221931377)),
  const Aviation(value: 10, text: '神戸 / UKB', position: Position(latitude: 34.636945201542964, longitude: 135.22865605152413)),
  const Aviation(value: 11, text: '熊本 / KMJ', position: Position(latitude: 32.83471531700803, longitude: 130.8586106791084)),
  const Aviation(value: 12, text: '米子 / YGJ', position: Position(latitude: 35.50070993188831, longitude: 133.24513687253182)),
  const Aviation(value: 13, text: '秋田 / AXT', position: Position(latitude: 39.611781189740775, longitude: 140.22009596353996)),
  const Aviation(value: 14, text: 'バンコク / BKK', position: Position(latitude: 13.692260601748256, longitude: 100.7506243143188)),
  const Aviation(value: 15, text: '台北 / TPE', position: Position(latitude: 25.077155409801204, longitude: 121.23204876288817)),
  const Aviation(value: 16, text: '石垣 / ISG', position: Position(latitude: 24.39080292865187, longitude: 124.2458719243635)),
  const Aviation(value: 17, text: '宮古 / MMY', position: Position(latitude: 24.77945134257582, longitude: 125.29753894169983)),
  const Aviation(value: 18, text: '岩国 / IWK', position: Position(latitude: 34.158841113498205, longitude: 132.2349379318966)),
  const Aviation(value: 19, text: '函館 / HKD', position: Position(latitude: 41.7759281, longitude: 140.8156117)),
  const Aviation(value: 20, text: '広島 / HIJ', position: Position(latitude: 34.4405168, longitude: 132.9186703)),
  const Aviation(value: 21, text: '仙台 / SDJ', position: Position(latitude: 38.1378327, longitude: 140.9284311)),
  const Aviation(value: 22, text: '長崎 / NGS', position: Position(latitude: 32.9149339, longitude: 129.917042)),
];

final List<Aviation> airlines = [
  const Aviation(value: 0, text: 'JAL'),
  const Aviation(value: 1, text: 'ANA'),
  const Aviation(value: 2, text: 'SKY'),
  const Aviation(value: 3, text: 'SFJ'),
  const Aviation(value: 4, text: 'SNA'),
  const Aviation(value: 5, text: 'ADO'),
  const Aviation(value: 6, text: 'APJ'),
  const Aviation(value: 7, text: 'JJP'),
  const Aviation(value: 8, text: 'VNL'),
  const Aviation(value: 9, text: 'SJO'),
  const Aviation(value: 10, text: 'AK'),
  const Aviation(value: 11, text: 'AKX'),
  const Aviation(value: 12, text: 'TG'),
  const Aviation(value: 13, text: 'CI'),
  const Aviation(value: 14, text: 'EVA'),
  const Aviation(value: 15, text: 'VAX'),
  const Aviation(value: 16, text: 'IT'),
  const Aviation(value: 17, text: 'FW'),
];

final List<Aviation> boardingTypes = [
  const Aviation(value: 0, text: 'Boeing787-9'),
  const Aviation(value: 1, text: 'Boeing787-8'),
  const Aviation(value: 2, text: 'Boeing777-3'),
  const Aviation(value: 3, text: 'Boeing777-2'),
  const Aviation(value: 4, text: 'Boeing767-3'),
  const Aviation(value: 5, text: 'Boeing737-8'),
  const Aviation(value: 6, text: 'Boeing737-7'),
  const Aviation(value: 7, text: 'Boeing737-5'),
  const Aviation(value: 8, text: 'Embraer190'),
  const Aviation(value: 9, text: 'ATR42-6'),
  const Aviation(value: 10, text: 'Airbus A350-9'),
  const Aviation(value: 11, text: 'Airbus A321'),
  const Aviation(value: 12, text: 'Airbus A320'),
  const Aviation(value: 13, text: 'Boeing747-4'),
  const Aviation(value: 14, text: 'Bombardier DHC8-Q400'),
  const Aviation(value: 15, text: 'Canadian Bombardier CRJ-700'),
  const Aviation(value: 16, text: 'Boeing787-10 (B78X)'),
  const Aviation(value: 17, text: 'Airbus A350-10 (A35K)'),
];
