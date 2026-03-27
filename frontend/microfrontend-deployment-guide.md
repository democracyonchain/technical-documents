# Microfrontend Deployment Guide

---

## 🇺🇸 EN

## 🚀 Deploy Microfrontend — DEV Environment

### Steps to Deploy a Microfrontend

1. Build and test the application  
   - Build  
   - Test  
   - Lint  
   - Store artifacts  

2. Upload static files to the server

3. Update JavaScript library paths (import map)

---

### 🛠 Build the Application

- It is recommended to clean previous builds before compiling:

```bash
yarn clean
```

- Install dependencies and build:

```bash
yarn build:dev
```

---

### 📦 Upload Static Files

To automate deployment to GitLab, credentials must be stored locally.

#### Credential cache (Linux)

```bash
# Cache for 1 hour
git config --global credential.helper "cache --timeout=3600"

# Cache for 1 day
git config --global credential.helper "cache --timeout=86400"

# Cache for 1 week
git config --global credential.helper "cache --timeout=604800"
```

#### Deploy command

```bash
yarn deploy:dev
```

---

### 🌿 Deployment Branches

- static_dev
- static_test
- static_prod

---

### 🔗 Update Import Maps

JavaScript library paths must be updated depending on the environment:

- importmap.dev.json
- importmap.test.json
- importmap.prod.json

These files are located in the root of the application.

---

## 🇪🇸 ES

## 🚀 Despliegue de Microfrontend — Entorno DEV

### Pasos para desplegar un Microfrontend

1. Compilar y probar la aplicación  
   - Build  
   - Test  
   - Lint  
   - Generación de artefactos  

2. Subir los archivos estáticos al servidor

3. Actualizar rutas de librerías JavaScript (import map)

---

### 🛠 Compilación de la aplicación

- Se recomienda limpiar builds anteriores:

```bash
yarn clean
```

- Instalar dependencias y compilar:

```bash
yarn build:dev
```

---

### 📦 Subir archivos estáticos

Para automatizar el despliegue en GitLab, se deben guardar las credenciales localmente.

#### Cache de credenciales (Linux)

```bash
# Cache por 1 hora
git config --global credential.helper "cache --timeout=3600"

# Cache por 1 día
git config --global credential.helper "cache --timeout=86400"

# Cache por 1 semana
git config --global credential.helper "cache --timeout=604800"
```

#### Comando de despliegue

```bash
yarn deploy:dev
```

---

### 🌿 Ramas de despliegue

- static_dev
- static_test
- static_prod

---

### 🔗 Actualización de Import Maps

Las rutas de las librerías JavaScript se configuran según el entorno:

- importmap.dev.json
- importmap.test.json
- importmap.prod.json

Estos archivos se encuentran en la raíz del proyecto.
