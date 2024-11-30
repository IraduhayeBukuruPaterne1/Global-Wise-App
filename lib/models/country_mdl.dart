class Country {
  final String name;
  final String capital;
  final int population;
  final List<String> languages;
  final String currency;
  final String flagUrl;
  final String
      region; // Add region if needed (based on your usage in the filter)

  Country({
    required this.name,
    required this.capital,
    required this.population,
    required this.languages,
    required this.currency,
    required this.flagUrl,
    required this.region,
  });

  // fromJson constructor for parsing API data
  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name']['common'],
      capital: (json['capital'] as List<dynamic>?)?.first ?? 'N/A',
      population: json['population'] ?? 0,
      languages: (json['languages'] != null)
          ? (json['languages'] as Map<String, dynamic>)
              .values
              .cast<String>()
              .toList()
          : ['N/A'],
      currency:
          (json['currencies'] != null) ? json['currencies'].keys.first : 'N/A',
      flagUrl: json['flags']['png'] ?? '',
      region: json['region'] ?? 'Unknown', // Set region field (if applicable)
    );
  }

  // toJson method for converting Country object to a map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'capital': capital,
      'population': population,
      'languages': languages,
      'currency': currency,
      'flagUrl': flagUrl,
      'region': region, // Include region if needed
    };
  }
}
