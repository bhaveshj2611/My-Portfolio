class Project {
  final String projectImage;
  final String projectText;
  final String projectDescription;
  final String githubUrl;
  final String liveUrl;
  final List<String> techStack;
  final bool isLive;

  Project({
    required this.projectImage,
    required this.projectText,
    required this.projectDescription,
    required this.githubUrl,
    required this.liveUrl,
    required this.techStack,
    required this.isLive,
  });
}
