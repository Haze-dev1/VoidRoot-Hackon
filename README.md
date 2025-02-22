# 🌿 EUNOIA - AI-Powered Therapy App

EUNOIA is a **personalized AI-driven mental health therapy application** that adapts to users' emotional states, providing **CBT-based therapy suggestions, mindfulness exercises, and emotional well-being tracking**. Built with **Flutter (Mobile App), React (Web Panel), and Node.js/Express (Backend)** with MongoDB/Firebase for secure data storage.

---

## 🚀 Features

### 🧠 **User Features (Flutter Mobile App)**
- **Mood Tracking** – Users log their emotions via text or emoji-based inputs.
- **AI-Powered Therapy Suggestions** – Personalized cognitive behavioral therapy (CBT) exercises.
- **Guided Mindfulness Exercises** – Meditation, breathing exercises, and stress relief activities.
- **Personal Journaling** – Secure space for users to write and reflect.
- **Gamification** – Daily challenges, streaks, rewards, and achievement badges to keep users engaged.

### 🎛 **Admin Features (React Web Panel)**
- **Dashboard** – View user engagement analytics and insights.
- **Therapy Content Management** – Create, edit, and manage therapy modules.
- **User Management** – Monitor user activity and engagement (optional).

### 🏗 **Backend (Node.js + Express)**
- **RESTful API** – Handles user authentication, mood tracking, and therapy content.
- **MongoDB / Firebase** – Stores user data securely.
- **AI & NLP Integration** – Sentiment analysis for mood tracking and personalized responses.

---

## 🛠 Tech Stack

### **Frontend**
- **Flutter (Dart)** – Mobile Application
- **React.js** – Web Dashboard for Admins

### **Backend**
- **Node.js + Express.js** – API Server
- **MongoDB / Firebase** – Database for secure storage
- **OpenAI / Google NLP API** – Sentiment analysis and AI-based responses

---

## 🔧 Installation & Setup

### **1️⃣ Backend (Node.js + Express)**
```sh
# Clone the repository
git clone https://github.com/your-repo/eunoia.git
cd VoidRoot/webApp/backend

# Install dependencies
npm install

# Create a .env file and configure necessary keys
# Example:
# MONGO_URI=your_mongodb_url
# OPENAI_API_KEY=your_openai_key

# Start the backend server
npm start
```

### **2️⃣ Flutter App (Mobile Frontend)**
```sh
cd VoidRoot/mobileApp/eunoia_new

# Install dependencies
flutter pub get

# Run the app
flutter run
```

### **3️⃣ React Admin Panel (Web Dashboard)**
```sh
cd VoidRoot/webApp/eunoia

# Install dependencies
yarn install  # or npm install

# Start the admin panel
yarn start  # or npm start
```

---

## 📌 API Endpoints
| Method | Endpoint | Description |
|--------|-------------|--------------------------------|
| `POST` | `/api/mood` | User submits mood input |
| `GET` | `/api/therapy` | Get AI-generated therapy suggestions |
| `POST` | `/api/journal` | Save user journal entry |
| `GET` | `/api/streaks` | Fetch user streaks & achievements |

---

## 🔮 Future Enhancements
- ✅ AI-powered chatbot for real-time emotional support
- ✅ Voice-based mood tracking
- ✅ Advanced gamification with leaderboards & community features

---

## 👥 Team Members
- **Swayam Takkamore** (Team Lead)
- **Yash Dharme**
- **Rashmin Chaudhari**
- **Devansh Palsapure**

---

## 🎯 Inspiration
EUNOIA was built during the **GDG On Campus Hackathon 2025**, focusing on AI-driven mental health solutions to support emotional well-being.

---

**Made with ❤️ by Team VoidRoot** 🚀
