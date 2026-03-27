# Blockchain Voting System — Asuncion Documents Repository

## 🇺🇸 EN

### Overview

This repository contains the documentation, technical resources, and supporting components of the **Blockchain Voting System**, developed as a Proof of Concept under Project Catalyst (Fund 11).

The project explores how blockchain (Cardano) can enhance **transparency, traceability, and trust** in electoral processes through a **hybrid architecture**.

---

### 🧱 Architecture Summary

The system is based on a hybrid model:

- **Off-chain (Traditional Systems)**
  - Backend (C# APIs)
  - OCR processing
  - Digitization and quality control
  - Database (PostgreSQL)

- **On-chain (Blockchain - Cardano)**
  - Transaction metadata
  - Hash verification
  - State tracking

- **Decentralized Storage**
  - IPFS for images and evidence

---

### 📁 Repository Structure

#### 📚 `/docs`
Contains all official project deliverables:

- 📄 Documentation of the entire project  
- 📊 Project Completion Report (PCR)  
- 📄 Project Close-out Report  
- 🧪 Proof of Concept results  
- 🧠 Lessons Learned  
- 📘 System documentation  

---

#### ⚙️ `/backend`
- Backend-related resources  
- Deployment guide (`deployment-guide.md`)  
- API and blockchain interaction logic  

---

#### 🗄️ `/database`
SQL scripts for system setup:

- `provincia.sql`
- `canton.sql`
- `parroquia.sql`
- `zona.sql`

---

#### 🌐 `/frontend`
Frontend and microfrontend documentation:

- `frontend-installation-guide.md`
- `microfrontend-deployment-guide.md`
- `monorepo-microfrontend-guide.md`

---

### 🎯 Purpose of the Repository

This repository serves as:

- Final project submission for Catalyst  
- Technical documentation reference  
- Evidence of system implementation  
- Foundation for future development  

---

### 🔑 Key Concepts

- Hybrid on-chain / off-chain architecture  
- Blockchain as an audit layer (not execution layer)  
- Traceability of electoral records (actas)  
- Use of IPFS for scalable storage  
- Modular and scalable system design  

---

### ⚠️ Notes

- Blockchain is used for **verification and audit**, not for real-time processing  
- Performance-critical processes remain off-chain  
- The system is a **Proof of Concept**, not a production deployment  

---

## 🇪🇸 ES

### Descripción General

Este repositorio contiene la documentación, recursos técnicos y componentes del **Blockchain Voting System**, desarrollado como una prueba de concepto dentro de Project Catalyst (Fund 11).

El proyecto explora cómo la blockchain (Cardano) puede mejorar la **transparencia, trazabilidad y confianza** en procesos electorales mediante una **arquitectura híbrida**.

---

### 🧱 Resumen de Arquitectura

El sistema se basa en un modelo híbrido:

- **Off-chain (Sistemas tradicionales)**
  - Backend (APIs en C#)
  - Procesamiento OCR
  - Digitación y control de calidad
  - Base de datos (PostgreSQL)

- **On-chain (Blockchain - Cardano)**
  - Metadata de transacciones
  - Verificación mediante hashes
  - Seguimiento de estados

- **Almacenamiento descentralizado**
  - IPFS para imágenes y evidencias

---

### 📁 Estructura del Repositorio

#### 📚 `/docs`
Contiene todos los entregables del proyecto:

- 📄 Documentación completa  
- 📊 Project Completion Report  
- 📄 Project Close-out Report  
- 🧪 Resultados del PoC  
- 🧠 Lecciones aprendidas  
- 📘 Documentación del sistema  

---

#### ⚙️ `/backend`
- Recursos del backend  
- Guía de despliegue (`deployment-guide.md`)  
- Lógica de integración con blockchain  

---

#### 🗄️ `/database`
Scripts SQL:

- `provincia.sql`
- `canton.sql`
- `parroquia.sql`
- `zona.sql`

---

#### 🌐 `/frontend`
Documentación del frontend:

- Guía de instalación  
- Guía de despliegue de microfrontends  
- Guía de monorepo  

---

### 🎯 Propósito

Este repositorio funciona como:

- Entrega final del proyecto  
- Referencia técnica  
- Evidencia de implementación  
- Base para futuras mejoras  

---

### 🔑 Conceptos Clave

- Arquitectura híbrida  
- Blockchain como capa de auditoría  
- Trazabilidad de actas  
- Uso de IPFS  
- Diseño modular y escalable  

---

### ⚠️ Notas

- Blockchain se usa para auditoría, no para ejecución en tiempo real  
- Procesos críticos se mantienen fuera de la cadena  
- Es una prueba de concepto (PoC)  