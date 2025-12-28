import 'package:serverpod/serverpod.dart';

class DashboardPageWidget extends TemplateWidget {
  DashboardPageWidget() : super(name: 'dashboard');
  @override
  String toString() {
    return '''
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body { font-family: sans-serif; display: flex; margin: 0; background-color: #f0f2f5; }
        .sidebar { width: 250px; background: #fff; height: 100vh; padding: 20px; box-shadow: 2px 0 5px rgba(0,0,0,0.1); }
        .content { flex-grow: 1; padding: 40px; }
        .nav-item { display: block; padding: 10px 15px; text-decoration: none; color: #333; margin-bottom: 5px; border-radius: 4px; }
        .nav-item:hover, .nav-item.active { background: #e9ecef; color: #007bff; }
        h1 { margin-top: 0; }
        .card { background: white; padding: 20px; border-radius: 8px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); margin-bottom: 20px; }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Portfolio Admin</h2>
        <nav>
            <a href="/admin" class="nav-item active">Dashboard</a>
            <a href="/admin/about" class="nav-item">About Me</a>
            <a href="/admin/tech" class="nav-item">Tech Stack</a>
            <a href="/admin/work" class="nav-item">Work Experience</a>
            <a href="/admin/projects" class="nav-item">Projects</a>
            <hr>
            <a href="/admin/logout" class="nav-item">Logout</a>
        </nav>
    </div>
    <div class="content">
        <h1>Welcome back!</h1>
        <div class="card">
            <h3>Quick Status</h3>
            <p>Select a section from the sidebar to start editing your portfolio content.</p>
        </div>
    </div>
</body>
</html>
    ''';
  }
}
