<div align="center">
  <img src="logo-7-removebg-preview.png" alt="ScaleX Logo" width="200"/>
  <h1>ScaleX - Multilingual AI Chat Platform</h1>
  <p>A modern, scalable, and multilingual chat application with AI capabilities</p>
  
  <div>
    <img src="https://img.shields.io/badge/React-19-blue?logo=react" alt="React 19" />
    <img src="https://img.shields.io/badge/Next.js-15.2.4-black?logo=next.js" alt="Next.js 15.2.4" />
    <img src="https://img.shields.io/badge/Django-4.2.10-green?logo=django" alt="Django 4.2.10" />
    <img src="https://img.shields.io/badge/JWT-Authentication-orange?logo=jsonwebtokens" alt="JWT Authentication" />
    <img src="https://img.shields.io/badge/Multilingual-EN%20%7C%20AR-blueviolet" alt="Multilingual" />
  </div>
</div>

## 📋 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Architecture](#-architecture)
- [Frontend](#-frontend)
- [Backend](#-backend)
- [Getting Started](#-getting-started)
- [API Documentation](#-api-documentation)
- [Internationalization (i18n)](#-internationalization-i18n)
- [Docker Deployment](#-docker-deployment)
- [Contributing](#-contributing)

## 🔍 Overview

ScaleX is a comprehensive multilingual chat platform that combines modern frontend technologies with a robust Django backend. The application supports both English and Arabic languages, providing a seamless chat experience with AI-powered features.

## ✨ Features

### 🌐 Multilingual Support
- Full support for English and Arabic languages
- User language preference storage and switching
- Language-specific content delivery

### 🔐 Authentication & Security
- Secure JWT-based authentication system
- Token refresh mechanism
- Password protection and user data security
- Rate limiting to prevent abuse

### 💬 Chat Functionality
- Real-time messaging interface
- Conversation management
- Message history and archiving
- AI-powered chat capabilities

### 👤 User Management
- User profiles with customizable settings
- Language preferences
- User activity tracking
- AI-generated user summaries

### 🤖 AI Integration
- AI-powered chat responses
- Automatic language detection
- User behavior analysis
- Content summarization

## 🏗 Architecture

ScaleX follows a modern client-server architecture:

```
┌─────────────┐       ┌─────────────┐
│   Frontend  │◄─────►│   Backend   │
│  (Next.js)  │   API │   (Django)  │
└─────────────┘       └─────────────┘
      │                      │
      ▼                      ▼
┌─────────────┐       ┌─────────────┐
│    UI/UX    │       │  Database   │
│ Components  │       │   (SQLite)  │
└─────────────┘       └─────────────┘
```

## 🖥 Frontend

The frontend is built with Next.js 15 and React 19, providing a modern, responsive, and interactive user interface.

### Technologies Used

- **Next.js**: For server-side rendering and routing
- **React**: For building the user interface
- **TypeScript**: For type-safe code
- **Tailwind CSS**: For styling
- **Radix UI**: For accessible UI components
- **React Hook Form**: For form handling and validation
- **Framer Motion**: For animations
- **date-fns**: For date formatting
- **Recharts**: For data visualization

### Key Components

- Authentication flows (login, register, logout)
- Chat interface with conversation management
- User profile management
- Language switcher
- Responsive design for all devices

## 🔧 Backend

The backend is built with Django and Django REST Framework, providing a robust API for the frontend.

### Technologies Used

- **Django**: Web framework
- **Django REST Framework**: For building the API
- **Simple JWT**: For JWT authentication
- **CORS Headers**: For cross-origin resource sharing
- **SQLite**: For data storage
- **Rate Limiting**: For API protection

### Key Components

- RESTful API endpoints
- JWT authentication system
- Database models for users, conversations, messages
- Middleware for language detection and switching
- Rate limiting for security

## 🚀 Getting Started

### Prerequisites

- Node.js (v18 or higher)
- Python (v3.8 or higher)
- Yarn or npm
- Git

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/jassemDeb/ScaleX_chatbot.git
   cd ScaleX_chatbot
   ```

2. Start both frontend and backend with the provided script:
   ```bash
   # Using the shell script (requires Git Bash or similar on Windows)
   ./script.sh
   
   # Or using the batch file on Windows
   start_project.bat
   ```

### Manual Setup

#### Frontend Setup

1. Navigate to the frontend directory:
   ```bash
   cd front
   ```

2. Install dependencies:
   ```bash
   yarn install
   ```

3. Start the development server:
   ```bash
   yarn dev
   ```

4. Access the frontend at http://localhost:3000

#### Backend Setup

1. Navigate to the backend directory:
   ```bash
   cd back
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Run migrations:
   ```bash
   python manage.py migrate
   ```

4. Start the development server:
   ```bash
   python manage.py runserver
   ```

5. Access the backend API at http://127.0.0.1:8000

## 📚 API Documentation

The API documentation is available at the `/docs/` endpoint when the backend server is running.

### Main API Endpoints

#### Authentication

- `POST /api/auth/register/`: Register a new user
- `POST /api/auth/login/`: Login and get JWT tokens
- `POST /api/auth/refresh/`: Refresh JWT token
- `POST /api/auth/logout/`: Logout and blacklist JWT token

#### User Profile

- `GET /api/profile/`: Get user profile
- `PUT/PATCH /api/profile/`: Update user profile

#### Chat

- `GET /api/messages/`: Get all user messages
- `POST /api/messages/`: Create a new message
- `GET /api/conversations/`: Get all user conversations
- `POST /api/conversations/`: Create a new conversation
- `GET /api/conversations/{id}/`: Get a specific conversation

#### AI Features

- `POST /api/chat/ai/`: Get AI-generated responses
- `GET /api/summaries/`: Get user summaries
- `POST /api/summaries/`: Create a new user summary

## 🌐 Internationalization (i18n)

ScaleX implements a comprehensive internationalization (i18n) system to support multiple languages. Currently, the application fully supports English and Arabic with complete interface translations.

### i18n Implementation

The internationalization system is built with the following components:

- **I18nProvider**: A React context provider that manages the application's language state
- **Locale Files**: JSON files containing translations for each supported language
- **Translation Function**: A utility function (`t`) that retrieves translations based on the current locale
- **RTL Support**: Automatic text direction switching based on the selected language

### JSON Structure

The translation files follow a hierarchical structure organized by features and components:

```json
{
  "section": {
    "key": "Translation value",
    "nestedSection": {
      "nestedKey": "Nested translation value"
    }
  }
}
```

Translation keys are accessed using dot notation (e.g., `section.key` or `section.nestedSection.nestedKey`).

### Key Features

- **Persistent Language Selection**: User language preference is saved in localStorage
- **Automatic Direction Switching**: RTL/LTR layout changes based on language
- **Nested Translation Keys**: Support for organizing translations in a logical hierarchy
- **Fallback Mechanism**: Returns the key itself if a translation is not found

### Adding New Languages

To add a new language:

1. Create a new JSON file in the `front/i18n/locales/` directory (e.g., `fr.json`)
2. Copy the structure from an existing locale file
3. Translate all values to the target language
4. Add the new locale to the `Locale` type and `translations` object in `i18n-provider.tsx`

## 🐳 Docker Deployment

ScaleX can be deployed using Docker for both development and production environments.

### Development

```bash
# Frontend
cd front
docker-compose -f docker-compose.dev.yml up

# Backend
cd back
docker-compose up
```

### Production

```bash
# Frontend
cd front
docker-compose up

# Backend
cd back
docker-compose up
```

## 👥 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

<div align="center">
  <p> 2025 ScaleX. All rights reserved.</p>
</div>
