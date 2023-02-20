class Portfolio {
  late final String uid;
  late final int years;
  late final int experience;
  late final String biography;
  late final String biographyEn;
  late final String github;
  late final String linkedin;
  late final String email;
  late final List<Job> jobs;
  late final List<Project> projects;

  Portfolio({
    required this.uid,
    required this.years,
    required this.experience,
    required this.biography,
    required this.biographyEn,
    required this.github,
    required this.linkedin,
    required this.email,
    required this.jobs,
    required this.projects,
  });

  factory Portfolio.fromJson(dynamic json) {
    return Portfolio(
      uid: json['_id'] as String,
      years: json['years'] as int,
      experience: json['experience'] as int,
      biography: json['biography'] as String,
      biographyEn: json['biography_en'] as String,
      github: json['github'] as String,
      linkedin: json['linkedin'] as String,
      email: json['email'] as String,
      jobs: (json['jobs'] as List).map((e) => Job.fromJson(e)).toList(),
      projects:
          (json['projects'] as List).map((e) => Project.fromJson(e)).toList(),
    );
  }
}

class Job {
  late final String uid;
  late final String company;
  late final String position;
  late final String positionEn;
  late final String time;
  late final String timeEn;
  late final List<String> technologies;

  Job({
    required this.uid,
    required this.company,
    required this.position,
    required this.positionEn,
    required this.time,
    required this.timeEn,
    required this.technologies,
  });

  factory Job.fromJson(dynamic json) {
    return Job(
      uid: json['_id'] as String,
      company: json['company'] as String,
      position: json['position'] as String,
      positionEn: json['position_en'] as String,
      time: json['time'] as String,
      timeEn: json['time_en'] as String,
      technologies:
          (json['technologies'] as List).map((e) => e.toString()).toList(),
    );
  }
}

class Project {
  late final String uid;
  late final String name;
  late final String subtitle;
  late final String subtitleEn;
  late final String description;
  late final String descriptionEn;
  late final List<String> technologies;
  late final List<String> platforms;

  Project({
    required this.uid,
    required this.name,
    required this.subtitle,
    required this.subtitleEn,
    required this.description,
    required this.descriptionEn,
    required this.technologies,
    required this.platforms,
  });

  factory Project.fromJson(dynamic json) {
    return Project(
      uid: json['_id'] as String,
      name: json['name'] as String,
      subtitle: json['subtitle'] as String,
      subtitleEn: json['subtitle_en'] as String,
      description: json['description'] as String,
      descriptionEn: json['description_en'] as String,
      technologies:
          (json['technologies'] as List).map((e) => e.toString()).toList(),
      platforms: (json['platforms'] as List).map((e) => e.toString()).toList(),
    );
  }
}
