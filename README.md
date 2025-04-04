# Internship Project

This is a Full-Stack MERN (MongoDB, Express.js, React, Node.js) project that includes both frontend and backend functionalities. The backend uses Prisma ORM with PostgreSQL.

## Project Structure
```
INTERNSHIP-PROJECT/
│── backend/                # Backend server (Express, Prisma, PostgreSQL)
│   ├── prisma/             # Prisma schema and migrations (migrations ignored)
│   ├── Controller/         # Business logic layer
│   ├── Route/              # API routes
│   ├── dist/               # Compiled backend code
│   ├── .env                # Environment variables (not included in repo)
│   ├── package.json        # Backend dependencies
│   ├── tsconfig.json       # TypeScript configuration
│   ├── index.ts            # Main entry point
│   ├── prisma.ts           # Prisma client initialization
│
│── frontend/               # Frontend (React + TypeScript)
│   ├── my-react-app/       # React project folder
│   ├── src/                # Frontend source code
│   ├── package.json        # Frontend dependencies
│   ├── tsconfig.json       # TypeScript configuration
│
│── .gitignore              # Ignoring unnecessary files (e.g., .env, migrations)
│── README.md               # Project documentation
```

## Features
### Backend:
- **Express.js** server
- **Prisma ORM** with PostgreSQL
- **User authentication**
- **API endpoints** for CRUD operations

### Frontend:
- **React + TypeScript**
- **React Query** for data fetching
- **React Hook Form** for form validation
- **Zod** for schema validation

## Installation & Setup

### 1️⃣ Clone the Repository

git clone https://github.com/Adarshtiwarikrai/INTERSHIP-PROJECT.git
cd INTERNSHIP-PROJECT


### 2️⃣ Backend Setup

cd backend
npm install  # Install dependencies
cp .env.example .env  # Create a .env file and configure it
npx prisma migrate dev  # Run migrations
npm start  # Start the server


### 3️⃣ Frontend Setup

cd frontend/my-react-app
npm install  # Install dependencies
npm start  # Run React app


## API Endpoints
| Method | Endpoint           | Description          |
|--------|-------------------|----------------------|
| GET    | `/GetAllUser`      | Fetch all users     |
| POST   | `/CreateUser`      | Create a new user   |
| POST   | `/login`           | User login          |

## Contributing
Feel free to fork this repository and submit pull requests! 🎯

## License
This project is licensed under the MIT License.

