# Microfrontend Monorepo Setup Guide

---

## 🇺🇸 EN

## 📦 Installation Guide — Microfrontend (Monorepo)

### Prerequisites

- Node.js: 18.13.0 LTS  
- NPM: 8.19.3  
- Yarn  
- Lerna  
- single-spa 4.1.3  

---

### Install Required Tools

- Install Lerna:
```bash
yarn global add lerna
```

- Install single-spa framework:
```bash
yarn global add create-single-spa
```

---

### Install Project Dependencies

```bash
yarn bootstrap
```

---

### Initialize Lerna

```bash
lerna init
npm config set force false
```

---

### Create a New Application

#### Step 1 — Create

```bash
npx create-single-spa
```

#### Step 2 — Configuration

Answer the following prompts:

- Directory for new project:  
  `packages/app-root`

- Select type to generate:
  - single-spa application / parcel  
  - in-browser utility module  
  - single-spa root config  

- Package manager:
  - npm  
  - yarn  
  - pnpm  

- Use TypeScript?
  - Yes (Y)

- Use single-spa Layout Engine?
  - Yes (Y)

- Organization name:
  - bsc

---

## 🇪🇸 ES

## 📦 Guía de Instalación — Microfrontend (Monorepo)

### Prerrequisitos

- Node.js: 18.13.0 LTS  
- NPM: 8.19.3  
- Yarn  
- Lerna  
- single-spa 4.1.3  

---

### Instalación de herramientas

- Instalar Lerna:
```bash
yarn global add lerna
```

- Instalar framework single-spa:
```bash
yarn global add create-single-spa
```

---

### Instalar dependencias del proyecto

```bash
yarn bootstrap
```

---

### Inicializar Lerna

```bash
lerna init
npm config set force false
```

---

### Crear una nueva aplicación

#### Paso 1 — Crear

```bash
npx create-single-spa
```

#### Paso 2 — Configuración

Responder las siguientes preguntas:

- Directorio del proyecto:  
  `packages/app-root`

- Tipo de aplicación:
  - single-spa application / parcel  
  - módulo utilitario en navegador  
  - configuración root de single-spa  

- Gestor de paquetes:
  - npm  
  - yarn  
  - pnpm  

- ¿Usar TypeScript?
  - Sí (Y)

- ¿Usar Layout Engine?
  - Sí (Y)

- Nombre de organización:
  - bsc
