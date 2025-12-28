import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ContentEndpoint extends Endpoint {
  // ============ ABOUT ============
  Future<About?> getAbout(Session session) async {
    final aboutList = await About.db.find(
      session,
      limit: 1,
      orderBy: (t) => t.id,
      orderDescending: true,
    );
    return aboutList.isNotEmpty ? aboutList.first : null;
  }

  Future<About> updateAbout(Session session, About about) async {
    // Check if there's an existing About entry
    final existing = await About.db.find(
      session,
      limit: 1,
      orderBy: (t) => t.id,
      orderDescending: true,
    );

    if (existing.isNotEmpty) {
      // Update existing record
      about.id = existing.first.id;
      return await About.db.updateRow(session, about);
    } else {
      // Insert new record
      return await About.db.insertRow(session, about);
    }
  }

  // ============ WORK EXPERIENCE ============
  Future<List<WorkExperience>> getWorkExperience(Session session) async {
    return await WorkExperience.db.find(
      session,
      orderBy: (t) => t.start,
      orderDescending: true,
    );
  }

  Future<WorkExperience> addWorkExperience(Session session, WorkExperience work) async {
    return await WorkExperience.db.insertRow(session, work);
  }

  Future<WorkExperience> updateWorkExperience(Session session, WorkExperience work) async {
    return await WorkExperience.db.updateRow(session, work);
  }

  Future<void> deleteWorkExperience(Session session, int id) async {
    await WorkExperience.db.deleteWhere(session, where: (t) => t.id.equals(id));
  }

  // ============ TECH STACK ============
  Future<List<TechStack>> getTechStack(Session session) async {
    return await TechStack.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }

  Future<TechStack> addTechStack(Session session, TechStack tech) async {
    return await TechStack.db.insertRow(session, tech);
  }

  Future<TechStack> updateTechStack(Session session, TechStack tech) async {
    return await TechStack.db.updateRow(session, tech);
  }

  Future<void> deleteTechStack(Session session, int id) async {
    await TechStack.db.deleteWhere(session, where: (t) => t.id.equals(id));
  }

  // ============ SOCIAL LINKS ============
  Future<List<SocialLink>> getSocialLinks(Session session) async {
    return await SocialLink.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }

  Future<SocialLink> addSocialLink(Session session, SocialLink link) async {
    return await SocialLink.db.insertRow(session, link);
  }

  Future<SocialLink> updateSocialLink(Session session, SocialLink link) async {
    return await SocialLink.db.updateRow(session, link);
  }

  Future<void> deleteSocialLink(Session session, int id) async {
    await SocialLink.db.deleteWhere(session, where: (t) => t.id.equals(id));
  }

  // ============ PROJECTS ============
  Future<List<Project>> getProjects(Session session, {String? filter}) async {
    var allProjects = await Project.db.find(
      session,
      orderBy: (t) => t.id,
      orderDescending: true,
    );

    if (filter != null && filter.isNotEmpty && filter != 'All Projects') {
      return allProjects.where((p) => p.badge == filter || p.tags.contains(filter)).toList();
    }
    return allProjects;
  }

  Future<Project> addProject(Session session, Project project) async {
    // If workedAtId is provided via JSON, fetch and attach the WorkExperience
    // Note: The workedAtId would come through the Project object if properly mapped
    return await Project.db.insertRow(session, project);
  }

  Future<Project> updateProject(Session session, Project project) async {
    return await Project.db.updateRow(session, project);
  }

  Future<void> deleteProject(Session session, int id) async {
    await Project.db.deleteWhere(session, where: (t) => t.id.equals(id));
  }
}
