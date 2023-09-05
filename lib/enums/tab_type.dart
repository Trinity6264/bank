typedef CustomTabTypeParam = ({String name});

enum CustomTabType {
  all((name: "All")),
  debit((name: "Debit")),
  credit((name: "Credit"));

  final CustomTabTypeParam param;

  const CustomTabType(this.param);
}

extension CustomTabTypeX on CustomTabType {
  String get title => param.name;
}
