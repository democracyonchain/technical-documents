# Installation & Deployment Guide

---

## 🇺🇸 EN

## 📦 Installation & Setup

1. Install **NPM v10.5.2**
2. Install **Node.js v20.9.0**
3. (Optional) Install **NVM** to manage multiple Node versions
4. Clone the **dev branch** of the `asuncion-backend` project
5. Run:
   ```bash
   npm install
   ```
6. Add the `.env` file to the project root

7. If PostgreSQL is running on the same server, update `.env`:
   ```
   MS_AUTORIZACION_HOST=localhost
   MS_ADMINISTRACION_HOST=localhost
   ```

8. For MongoDB configuration, update:
   ```
   DB_MONGO_HOST=localhost
   ```

9. For audit functionality:
   - Create a database named: `api-bsc`
   - Create collections:
     - `auditAdministracion`
     - `auditAutorizacion`

---

## 🚀 Deployment with NPM

```bash
npm run start:dev api-gateway
npm run start:dev ms-autorizacion
npm run start:dev ms-administracion
```

---

## ⚙️ Deployment with PM2

1. Install PM2:
   ```bash
   npm install -g pm2
   ```

2. Build the project:
   ```bash
   npm run build:all
   ```

3. Start services:
   ```bash
   pm2 start pm2.json
   ```

---

## 🐳 Deployment with Docker

1. Update `.env`:
   ```
   DB_BSC_HOST=SERVER_IP
   DB_MONGO_HOST=SERVER_IP
   ```

2. Edit `mongod.conf`:
   - Comment:
     bindIp: 127.0.0.1
   - Add:
     bindIpAll: true

3. Edit `postgresql.conf`:
   listen_addresses = '*'

4. Edit `pg_hba.conf`:
   host all all 0.0.0.0/0 md5
   host all all ::/0 md5

5. Run Docker:
   ```bash
   docker compose up -d --build
   ```

---

## 🇪🇸 ES

## 📦 Instalación y Configuración

1. Instalar **NPM v10.5.2**
2. Instalar **Node.js v20.9.0**
3. (Opcional) Instalar **NVM**
4. Clonar la rama **dev** del proyecto
5. Ejecutar:
   ```bash
   npm install
   ```
6. Agregar `.env`

---

## 🚀 Despliegue con NPM

```bash
npm run start:dev api-gateway
npm run start:dev ms-autorizacion
npm run start:dev ms-administracion
```

---

## ⚙️ Despliegue con PM2

```bash
npm install -g pm2
npm run build:all
pm2 start pm2.json
```

---

## 🐳 Despliegue con Docker

```bash
docker compose up -d --build
```
