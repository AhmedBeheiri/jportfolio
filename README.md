# Modern Portfolio Website

A full-stack portfolio website built with Jaspr (Dart SSR framework) and Serverpod backend, featuring a dynamic admin panel for easy content management.

## 🚀 Features

### Frontend (Jaspr Web App)
- **Modern, Responsive Design** - Beautiful dark/light theme with smooth animations
- **Server-Side Rendering (SSR)** - Fast initial load times and SEO-friendly
- **Client-Side Hydration** - Dynamic content loading for interactive sections
- **Sections:**
  - Hero section with dynamic introduction
  - About Me with education and fun facts
  - Tech Stack with dynamic skill badges
  - Work Experience timeline
  - Projects showcase with company attribution
  - Contact form with subject selection
  - Social links in footer

### Backend (Serverpod)
- **RESTful API** - Clean endpoints for all content management
- **Database Integration** - PostgreSQL for persistent data storage
- **Authentication** - Email-based admin authentication
- **Admin Dashboard** - Full CRUD operations for all content

### Admin Panel Features
- **Dashboard** - Central hub for all admin operations
- **About Management** - Edit personal info, resume, and profile image
- **Tech Stack** - Add/edit/delete technologies with SVG icons
- **Work Experience** - Manage job history with dates and skills
- **Projects** - Manage projects with company attribution and custom actions
- **Social Links** - Configure GitHub, LinkedIn, and other social profiles
- **Contact Messages** - View submitted contact form messages
- **Dark Theme** - Consistent modern UI across all admin pages

## 🛠 Tech Stack

### Frontend
- **Jaspr** - Dart-based SSR framework for web
- **Tailwind CSS** - Utility-first CSS framework
- **Material Symbols** - Google's icon library
- **Serverpod Client** - Type-safe API client

### Backend
- **Serverpod** - Dart backend framework
- **PostgreSQL** - Relational database
- **Docker** - Containerized development environment

## 📋 Prerequisites

- Dart SDK (3.10.4 or higher)
- Docker and Docker Compose
- PostgreSQL (via Docker)

## 🔧 Setup Instructions

### 1. Clone the Repository

```bash
git clone <repository-url>
cd jportfolio
```

### 2. Start Database

```bash
cd packages/backend
docker-compose up -d
```

### 3. Install Dependencies

```bash
# Backend
cd packages/backend
dart pub get

# Web App
cd ../../apps/web
dart pub get
```

### 4. Generate Serverpod Code

```bash
cd packages/backend
serverpod generate
```

### 5. Run Database Migrations

```bash
cd packages/backend
dart run bin/main.dart --apply-migrations
```

### 6. Create Admin User

```bash
# Access the Serverpod database
psql -h localhost -U postgres -d jportfolio

# Create admin user (replace with your email)
INSERT INTO serverpod_email_auth (email, hash) VALUES ('your-email@example.com', 'your-hashed-password');
```

### 7. Start Development Servers

**Terminal 1 - Backend:**
```bash
cd packages/backend
dart run bin/main.dart
# or use the alias: sr
```

**Terminal 2 - Web App:**
```bash
cd apps/web
jaspr serve
```

The website will be available at:
- **Frontend:** http://localhost:3000
- **Admin Panel:** http://localhost:8082/admin
- **Backend API:** http://localhost:8080

## 📁 Project Structure

```
jportfolio/
├── apps/
│   └── web/                    # Jaspr web application
│       ├── lib/
│       │   ├── components/     # Reusable UI components
│       │   │   └── navigation/ # Navbar, Footer
│       │   ├── pages/          # Page components
│       │   │   ├── home.dart
│       │   ├── projects.dart
│       │   │   └── contact.dart
│       │   └── sections/       # Homepage sections
│       │       ├── hero_section.dart
│       │       ├── about_section.dart
│       │       ├── tech_stack_section.dart
│       │       ├── work_section.dart
│       │       └── contact_section.dart
│       └── pubspec.yaml
├── packages/
│   ├── backend/                # Serverpod backend
│   │   ├── lib/
│   │   │   ├── src/
│   │   │   │   ├── endpoints/  # API endpoints
│   │   │   │   ├── models/     # Data models
│   │   │   │   └── web/        # Admin routes
│   │   │   └── server.dart
│   │   ├── web/
│   │   │   └── templates/      # Admin HTML pages
│   │   ├── migrations/         # Database migrations
│   │   └── docker-compose.yaml
│   └── client/                 # Generated Serverpod client
└── README.md
```

## 🎨 Admin Panel Usage

### Accessing Admin Panel

1. Navigate to http://localhost:8082/admin
2. Login with your admin credentials
3. Access different sections from the dashboard

### Managing Content

#### About Section
- Update personal information, title, description
- Set location, education, fun fact
- Upload profile image URL
- Set resume URL and email

#### Tech Stack
- Add technologies with names and descriptions
- Choose SVG icon types (mobile, web, api, desktop, game, ai)
- Icons display as SVG on the frontend

#### Work Experience
- Add companies with roles and descriptions
- Set start/end dates (end date optional for current positions)
- Add skills as comma-separated tags
- Include company images and optional links

#### Projects
- Create projects with titles, descriptions, and images
- **Company Attribution:** Associate projects with companies from work experience
- Set project badges (Mobile App, Web, etc.)
- Choose badge icons (SVG icons for mobile, web, api, etc.)
- Add custom secondary actions (View Demo, GitHub, etc.)
- Tags for technology stack

#### Social Links
- Add GitHub and LinkedIn profiles
- SVG icons automatically rendered in footer
- Links open in new tabs

#### Contact Messages
- View submitted contact form messages
- See sender info, subject, and message content
- Messages stored with timestamps

## 🔄 Development Workflow

### Making Changes

1. **Frontend Changes:**
   - Edit files in `apps/web/lib/`
   - Jaspr hot-reloads automatically
   
2. **Backend Changes:**
   - Edit files in `packages/backend/lib/`
   - Backend hot-reloads with `--watch` flag
   
3. **Model Changes:**
   - Edit `.spy.yaml` files in `packages/backend/lib/src/models/`
   - Run `serverpod generate`
   - Create and apply migrations

### Creating Database Migrations

```bash
cd packages/backend
serverpod create-migration
# Follow prompts and verify migration file
dart run bin/main.dart --apply-migrations
```

## 🎯 Key Features Explained

### Dynamic Content Loading

The website uses `@client` annotation for client-side hydration:
- About section fetches personal data
- Tech stack loads skills dynamically
- Work experience timeline
- Projects with filtering
- Footer social links

### Company Attribution

Projects can be associated with companies from work experience:
- Green badge shows company name on project cards
- Helps distinguish between personal and professional work
- Properly attributes work done at companies

### Custom Project Actions

Each project can have a custom action button:
- Set custom text (e.g., "View Demo", "View on App Store")
- Choose custom icons
- Link to external resources

### Form Validation

Contact form includes:
- Subject selection (General, Project, Job)
- Name and email validation
- Message requirement
- Success/error feedback

## 📊 Database Schema

### Main Tables
- `about` - Personal information
- `tech_stack` - Technologies and skills
- `work_experience` - Job history
- `projects` - Portfolio projects (with optional `workedAt` relation)
- `social_links` - Social media profiles
- `contact_message` - Contact form submissions

## 🚀 Deployment

### Backend Deployment
1. Set up PostgreSQL database
2. Configure environment variables
3. Run migrations
4. Deploy Serverpod backend
5. Set up admin authentication

### Frontend Deployment
1. Build static export: `jaspr build`
2. Deploy generated files to hosting service
3. Configure API endpoint URLs

## 🔐 Security Notes

- Admin panel uses email authentication
- Passwords should be properly hashed
- CORS configured for production
- Environment variables for sensitive data
- HTTPS recommended for production

## 📝 License

[MIT License](https://choosealicense.com/licenses/mit/)

## 👤 Author

[Ahmed Beheiri][https://github.com/AhmedBeheiri)
- GitHub: [Ahmed Beheiri](https://github.com/AhmedBeheiri)
- LinkedIn: [Ahmed Beheiri](https://linkedin.com/in/ahmed-beheiri)
<!-- - Website: [Ahmed Beheiri](https://ahmed-beheiri.com) -->

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## ⭐ Show your support

Give a ⭐️ if this project helped you!
