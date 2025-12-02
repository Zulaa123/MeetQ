# MeetQ

CSC309 MeetQ Project — a small meeting scheduling web application (Django REST backend + React frontend).

## What this repo contains

- `backend/OneOnOne` — Django 5 project and apps (accounts, calendars, schedule). Contains `manage.py`, `requirements.txt`, `build.sh`, `render.yaml`, and `runtime.txt` used for deployment.
- `frontend/meetq` — React app (created with Create React App) that provides the UI.

## Quick overview

This repository includes a Django REST API backend and a React frontend. Typical local workflow:

- Run the Django backend locally (default: `http://127.0.0.1:8000`).
- Run the React frontend locally (default: `http://localhost:3000`) and point API calls to the local backend while developing.

## Prerequisites

- Python 3.12.x (this project uses 3.12.7 in `runtime.txt`)
- Node.js (v18+) and npm
- Git
- (Optional) WSL on Windows for a Unix-like environment

## Run locally — backend (Windows / PowerShell)

1. Open a terminal and go to the backend folder:

```powershell
cd /path/to/MeetQ/backend/OneOnOne
```

2. Create and activate a virtual environment:

```powershell
python -m venv venv
.\venv\Scripts\activate
```

3. Install dependencies:

```powershell
pip install --upgrade pip
pip install -r requirements.txt
```

4. Apply migrations and create a superuser:

```powershell
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
```

5. Start the development server:

```powershell
python manage.py runserver
```

Backend will be available at `http://127.0.0.1:8000`.

## Run locally — frontend

1. Open a new terminal and go to the frontend folder:

```powershell
cd /path/to/MeetQ/frontend/meetq
```

2. Install and start:

```powershell
npm install
npm start
```

3. While developing, make sure the frontend points to the correct API endpoint. Edit `src/constants/APIEndPoints.js` and set the local backend URLs (examples):

```js
export const REGISTER_URL = "http://127.0.0.1:8000/accounts/register/";
export const LOGIN_URL = "http://127.0.0.1:8000/accounts/login/";
// etc.
```
---

Small course project for CSC309. See subfolders `backend/` and `frontend/` for more details.
