import 'package:gojek/utils/colors.dart';
import 'package:gojek/utils/theme.dart';

import '../models/gojek_icon.dart';

List<GojekIcon> gopayIcon = [
  GojekIcon(icon: 'pay', title: 'Bayar'),
  GojekIcon(icon: 'topup', title: 'Top Up'),
  GojekIcon(icon: 'explore', title: 'Eksplor')
];

List<GojekIcon> menuIcon = [
  GojekIcon(icon: 'goride', title: 'GoRide', color: AppColors.green2),
  GojekIcon(icon: 'gocar', title: 'GoCar', color: AppColors.green2),
  GojekIcon(icon: 'gofood', title: 'GoFood', color: AppColors.red),
  GojekIcon(icon: 'gosend', title: 'GoSend', color: AppColors.green2),
  GojekIcon(icon: 'gomart', title: 'GoMart', color: AppColors.red),
  GojekIcon(icon: 'gopulsa', title: 'GoPulsa', color: AppColors.blue2),
  GojekIcon(icon: 'goclub', title: 'GoClub', color: AppColors.purple),
  GojekIcon(icon: 'other', title: 'Lainnya', color: AppColors.dark4),
];
