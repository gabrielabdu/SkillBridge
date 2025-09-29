# SkillBridge API

SkillBridge is a mentorship matching platform that connects learners
with mentors.\
This is the **backend API** for the project, built with **Node.js**,
**Express**, and **PostgreSQL**.

------------------------------------------------------------------------

## 🚀 Features

-   User registration & login with **JWT authentication**
-   **Role-Based Access Control** (RBAC) for mentors & users
-   Session creation & management (mentors can accept/reject)
-   Secure password hashing with **bcrypt**
-   Refresh token support
-   Ready-to-use **Postman collection** for testing

------------------------------------------------------------------------

## 📦 Installation

### 1. Clone Repository

``` bash
git clone https://github.com/your-username/skillbridge-api.git
cd skillbridge-api
```

### 2. Install Dependencies

``` bash
npm install
```

### 3. Configure Environment Variables

Create a `.env` file with:

``` env
PORT=5000
DATABASE_URL=postgresql://user:password@localhost:5432/skillbridge
JWT_SECRET=your_secret_key
```

### 4. Run Database Migrations

``` bash
psql -d skillbridge -f migrations/init.sql
```

### 5. Start Server

``` bash
npm run dev
```

Server will run at `http://localhost:5000`.

------------------------------------------------------------------------

## 🧪 Testing with Postman

1.  Download the Postman collection:\
    [SkillBridge_Postman_Collection.json](./SkillBridge_Postman_Collection.json)

2.  Import into Postman.

3.  **Test Flow:**

    -   Register a **user** (role: `user`)
    -   Register a **mentor** (role: `mentor`)
    -   Login → copy `accessToken` from response
    -   Set it as a **Postman environment variable**: `accessToken`
    -   Create a session as user → accept session as mentor

------------------------------------------------------------------------

## 🏗️ Tech Stack

-   **Node.js** + **Express**
-   **PostgreSQL**
-   **JWT** (Auth)
-   **bcrypt** (Password Hashing)

------------------------------------------------------------------------

## 🤝 Contributing

Pull requests are welcome!\
For major changes, please open an issue first to discuss what you would
like to change.

------------------------------------------------------------------------

## 📄 License

MIT License © 2025 Gabriel Abdu
