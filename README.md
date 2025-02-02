# 🛠️ OpenFinance SpecGuard

OpenFinance SpecGuard is a **GitHub Action** that automates the validation of OpenAPI specifications using **Spectral** and **YAML Lint**.  
It ensures that your API specs follow best practices and predefined rules.

## 🚀 Features
- ✅ **Automated OpenAPI validation** using Spectral.
- ✅ **Custom rule set enforcement** to check required fields, max lengths, and nullable values.
- ✅ **YAML formatting validation** to ensure clean and structured specs.
- ✅ **GitHub Actions integration** for automatic validation on every push or pull request.

---

## 📌 **Prerequisites**
Before running this project, make sure you have the following installed:

- **Node.js** (>= 18.x) → [Install here](https://nodejs.org/)
- **Docker** (if running in a container) → [Install here](https://www.docker.com/)
- **Python & pip** (for YAML Lint) → [Install here](https://www.python.org/)
- **Git** (to clone the repository) → [Install here](https://git-scm.com/)

---

## 🛠️ **Installation**
### 1️⃣ **Clone the Repository**
```bash
git clone https://github.com/YOUR_USERNAME/openfinance-specguard.git
cd openfinance-specguard
```

### 2️⃣ **Install Dependencies**
```bash
npm install -g @stoplight/spectral-cli  # Install Spectral
pip install yamllint                     # Install YAML Lint
```

### 3️⃣ **Run Validation Locally**
To test validation locally, run:
```bash
spectral lint spec/financial-market-api.yaml -r spec/spectral.yaml
```
To check YAML formatting:
```bash
yamllint spec/
```

---

## 🖥️ **Using the GitHub Action**
This project includes a **GitHub Action** to automate validation in CI/CD.

### **1️⃣ Add This Action to Your Workflow**
Create (or update) `.github/workflows/validate-spec.yml` in your repository:
```yaml
name: "🔍 OpenAPI Spec Validation"

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  validate-spec:
    runs-on: ubuntu-latest

    steps:
      - name: 🛠️ Checkout Repository
        uses: actions/checkout@v3

      - name: 🔍 Run Spectral Validation
        uses: YOUR_USERNAME/openfinance-specguard@v1.0.0
        with:
          spec-file: "spec/financial-market-api.yaml"
          rules-file: "spec/spectral.yaml"
```
Now, every time you **push a commit** or create a **pull request**, the action will validate your API spec automatically.

---

## 🎯 **Customization**
You can modify the **ruleset** inside `spec/spectral.yaml` to enforce additional API requirements.

---

## 💡 **Troubleshooting**
If you encounter any issues:
- **Ensure Spectral and YAML Lint are installed**:  
  ```bash
  spectral --version
  yamllint --version
  ```
- **Check workflow logs in GitHub Actions** under the **"Actions"** tab.

---

## 🤝 **Contributing**
1. Fork the project
2. Create a new branch (`git checkout -b feature-branch`)
3. Commit your changes (`git commit -m 'Add new feature'`)
4. Push to your branch (`git push origin feature-branch`)
5. Open a Pull Request 🚀

---

## 📜 **License**
This project is licensed under the **MIT License**. Feel free to use and modify it.

---

## 📩 **Contact**
For questions or suggestions, feel free to open an issue or contact me at **YOUR_EMAIL**.

---

## 📄 About (GitHub Repository Description)
```markdown
🚀 **OpenFinance SpecGuard** – Automated OpenAPI validation with Spectral and YAML Lint.

This GitHub Action ensures that your API specifications are **valid, formatted correctly**, and comply with **best practices** before deployment.

🔹 **Automated OpenAPI validation**  
🔹 **Custom rule enforcement**  
🔹 **YAML linting for clean formatting**  
🔹 **Seamless GitHub Actions integration**  

👉 **Use this action to enforce API standards in your CI/CD pipeline.**
```

