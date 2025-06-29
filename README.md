# Thoughts on Rails

A full-stack personal project serving as a **blog, portfolio, and experimentation playground**, powered by:

- **Ruby on Rails** for the backend (API-only)
- **React** (with Vite) for the frontend
- **Docker Compose** for containerized development

---

## ⚙️ System Requirements

- Docker & Docker Compose
- Ports `3000` (Rails API) and `5173` (React frontend) must be available

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/thoughts_on_rails.git
cd thoughts_on_rails
```

### 2. Start the Development Environment

```bash
bin/setup
```

> Add `--verbose` to see internal output.  
> Add `--clean` to wipe all containers, images, and volumes before setup.

---

## 🧱 Project Structure

```
.
├── client/           # React frontend app
├── bin/              # Setup scripts
├── Dockerfile.dev    # Rails development Dockerfile
├── docker-compose.yml
├── README.md
└── ...
```

---

## 🗄️ Database

- **Engine**: PostgreSQL (via Docker)
- **Configured by**: Environment variables inside containers
- **Default credentials**:
  - Username: `postgres`
  - Password: `postgres`
  - Host: `db` (internal Docker network)

To access the DB manually:

```bash
docker compose exec db psql -U postgres
```

---

## 🌐 Accessing the App

- Rails API: [http://localhost:3000](http://localhost:3000)
- React App: [http://localhost:5173](http://localhost:5173)

---

## 🧪 Running Tests

_Not implemented yet._

---

## 🛠️ Configuration

### Environment Variables

Environment variables are automatically loaded from a .env file by Docker Compose for local development.
You can also define or override them directly in the docker-compose.yml file if needed.

Example `.env`:

```env
DATABASE_HOST=db
DATABASE_USER=postgres
DATABASE_PASSWORD=postgres
ALLOWED_ORIGIN=http://localhost:5173
```

---

## 🧰 Purpose and Scope

This project is designed as:

- A **personal blog and portfolio site**
- A **sandbox** to experiment with full-stack patterns
- A step toward **modern devops** practices (Docker, CI/CD, production-ready environments)

---

## 📦 Future Deployment Plans

To be extended for:

- [Kamal](https://kamal.docs.dev)
- Fly.io / Render
- GitHub Actions (CI/CD)
- Multi-environment support (e.g., staging, production)

---

## 🤝 Contributing

This is a solo learning journey.

---

## 📚 License

MIT
