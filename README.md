# Netflix Clone

[![React](https://img.shields.io/badge/React-Frontend-61DAFB?logo=react&logoColor=black)](https://react.dev/)
[![Node.js](https://img.shields.io/badge/Node.js-18%2B-339933?logo=node.js&logoColor=white)](https://nodejs.org/en)
[![Express](https://img.shields.io/badge/Express-4.x-000000?logo=express&logoColor=white)](https://expressjs.com/)
[![MongoDB](https://img.shields.io/badge/MongoDB-Mongoose-47A248?logo=mongodb&logoColor=white)](https://www.npmjs.com/package/mongoose)
[![Firebase](https://img.shields.io/badge/Firebase-Auth-FFCA28?logo=firebase&logoColor=black)](https://firebase.google.com/)

A full-stack Netflix clone that replicates the streaming platform's interface and functionality, built with React on the front end and Node.js with Express on the backend.

## ✨ Features

- Responsive movie browsing layout with thumbnails, trailers, and categories
- User authentication and secure session handling via Firebase
- Global state management with React-Redux for efficient loading and interactions
- Dynamic content updates through Axios-powered API requests
- User data and watchlists stored with MongoDB via Mongoose
- Secure cross-origin data communication with CORS
- Real-time server updates during development with Nodemon

## 🛠️ Tech Stack

- React
- Node.js
- Express
- HTML / CSS
- React Icons
- React-Redux
- Axios
- Firebase
- Mongoose (MongoDB)
- CORS
- Nodemon

## 📸 Preview

![Netflix Clone Screenshot 1](<Screenshot from 1.png>)
![Netflix Clone Screenshot 2](<Screenshot from 2.png>)
![Netflix Clone Screenshot 3](<Screenshot from 3.png>)

## 📁 Project Structure

```text
netflix-clone/
├── client/
│   ├── public/
│   └── src/
│       ├── components/
│       ├── redux/
│       ├── firebase.js
│       ├── App.js
│       └── index.js
├── server/
│   ├── controllers/
│   ├── models/
│   ├── routes/
│   ├── config/
│   └── app.js
└── package.json
```

## ✅ Prerequisites

Before running the project, make sure you have:

- Node.js installed
- npm installed
- A Firebase project set up for authentication
- A MongoDB database (local or hosted, e.g. MongoDB Atlas)

## 🚀 Installation

1. Clone the repository or navigate to the project folder.
2. Initialize the project:

```bash
npm init
```

3.Install the required dependencies:

```bash
npm install express
npm install react-icons
npm install react-redux
npm install firebase
npm install mongoose
npm install cors
npm install nodemon
```

## ▶️ Run the Application

Start the development server:

```bash
npm run dev
```

or

```bash
npm start
```

Then open your web browser and go to:

```text
http://localhost:3000/
```

or

```text
http://localhost:8000/
```

## 📝 Notes

- Make sure your Firebase configuration and MongoDB connection details are set correctly before starting the app.
- To stop the server, press `Ctrl + C` in the terminal.

## 📜 License

This project is licensed under the ISC License.
