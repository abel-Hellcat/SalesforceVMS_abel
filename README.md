# 🧩 SalesforceVMS_abel — Volunteer Management Solution (CFG Exercises)

## 📘 Overview

**SalesforceVMS_abel** is a declarative Volunteer Management Solution built for **Nonprofit Cloud (NPSP)**, aligned with the **OmniStudio CFG exercises**.  
It enables volunteers (Experience Cloud users) to view available programs, select suitable shifts, and register — with eligibility checks and confirmation messages.

This solution uses Salesforce **Volunteer Management (VMS)** data model and **OmniStudio** components to deliver a seamless Experience Cloud interface.

---

## ⚙️ Components Included

### 🧱 Salesforce Metadata
- Custom fields and record types on standard NPSP/Volunteer objects  
- Page layouts and compact layouts  
- Custom application for Volunteer Management

### 🧩 OmniStudio Components
- **FlexCards** — Display available Volunteer Programs/Shifts  
- **OmniScripts** — Guided registration flow  
- **Integration Procedures / DataRaptors** — Fetch and create Volunteer records  
- **OmniStudio Functions** — Eligibility checks (e.g., age or training)

### 🌐 Experience Cloud
- Public-facing portal for volunteers to explore programs and sign up  
- Configured site branding and navigation  
- Integrated OmniStudio components on Experience pages

### ⚡ Apex Classes
- Helper classes for data processing and eligibility validation  
- Support classes for OmniStudio Integration Procedures (if applicable)

---

## 🧭 Prerequisites

Before deployment, ensure:

1. **OmniStudio Managed Package** is installed in the target org.  
   (Available via Salesforce AppExchange or internal installation link.)
2. **OmniStudio Metadata API** is enabled.  
   - Go to: `Setup → OmniStudio Settings → Enable OmniStudio Metadata API`.
3. The org has **Experience Cloud** enabled with at least one active site.

---

## 🚀 Deployment Steps

Follow these steps in order for a successful deployment:

### 1️⃣ Deploy Objects, Layouts, Record Types, and Fields
- Deploy all Volunteer-related metadata (Custom Fields, Record Types, Page Layouts).  
- Verify field-level security and API names.

### 2️⃣ Deploy Custom Application
- Deploy the `SalesforceVMS_abel` custom app for centralized Volunteer Management.

### 3️⃣ Deploy Apex Classes
- Deploy Apex helper/controller classes for data processing and eligibility logic.  
- Verify successful compilation post-deployment.

### 4️⃣ Deploy OmniStudio Components
- Deploy **FlexCards**, **OmniScripts**, **DataRaptors**, and **Integration Procedures**.  
- Validate all metadata dependencies after deployment.

### 5️⃣ Deploy Profiles
- Deploy profiles for System Admin and Experience Users.  
- Ensure proper object and field-level access for Volunteer-related objects and OmniStudio components.

### 6️⃣ Deploy Network, Experience Bundle, and Site.com
- Deploy Experience Cloud site metadata (`network`, `site`, and `experienceBundle` folders).  
- Confirm correct domain and branding.

### 7️⃣ Activate OmniStudio Components
- Open each **OmniScript** → Click **Activate**.  
- Open each **FlexCard** → Click **Activate & Publish**.

### 8️⃣ Activate and Publish Experience Site
- In **Experience Builder**, click **Publish**.  
- Verify that OmniStudio components render correctly for Experience users.

---

## ✅ Post-Deployment Validation

1. Log in as an **Experience User (Volunteer)**.  
2. Navigate to the **Volunteer Opportunities** page.  
3. Verify:
   - Available programs and shifts display correctly.  
   - “Apply to Volunteer” button launches the OmniScript.  
   - Eligibility check runs and registration completes successfully.  
   - FlexCard refreshes to show success message.

---

## 🧠 Notes

- If using **Customer Community Plus** licenses, create a custom `Volunteer_Program__c` wrapper object to mirror Campaign data.  
- Ensure **Integration Procedures** run in **System Context** to bypass sharing issues.  
- All OmniStudio components must use **LWC Runtime** for Experience Cloud compatibility.  
- Always **Activate** OmniScripts and **Publish** FlexCards after deployment.

---

## 📄 Version Information

**Author:** Abel David Solomon  
**Project:** SalesforceVMS_abel — CFG Volunteer Management Solution  
**Version:** 1.0  
**Date:** October 2025  

---
