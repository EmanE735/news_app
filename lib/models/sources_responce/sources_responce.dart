import 'package:collection/collection.dart';

import 'source.dart';


class SourcesResponce {
  final String? status;
  final List<Source>? sources;

  const SourcesResponce({this.status, this.sources});

  factory SourcesResponce.fromJson(Map<String, dynamic> json) {
    return SourcesResponce(
      status: json['status']?.toString(),
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(Map<String, dynamic>.from(e)))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        if (status != null) 'status': status,
        if (sources != null)
          'sources': sources?.map((e) => e.toJson()).toList(),
      };
}
