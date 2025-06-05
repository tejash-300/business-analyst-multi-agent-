

```markdown
# 🤖 Business Analyst AI Assistant

This project is an AI-powered assistant tailored for business analysts. It allows users to interact with business data conversationally using tools like LangChain, OpenAI's GPT models, and FastAPI. The assistant can understand natural language queries and provide structured, context-aware answers using data tools like Pandas.

---

## 🚀 Features

- 🔗 **LangChain Agents**: For reasoning, querying, and responding based on business context.
- 🧠 **OpenAI GPT Integration**: Natural language understanding and generation.
- 📊 **Pandas Data Agent**: Enables interaction with CSV and DataFrames.
- ⚡ **FastAPI Backend**: For serving the AI assistant as a RESTful API.
- 🧪 **Jupyter Notebook**: Interactive demo and prototyping environment.

---

## 📁 Project Structure

```

.
├── Business analyst.ipynb     # Main notebook for development/demo
├── agents/                    # LangChain agent configurations
├── services/                  # Utility services (OpenAI config, prompts, tools)
├── api/                       # FastAPI app code
├── Dockerfile                 # Docker container definition
├── requirements.txt           # Python dependencies
└── README.md                  # This file

````

---

## 🔧 Requirements

- Python 3.10+
- OpenAI API Key (you need to set `OPENAI_API_KEY`)
- (Optional) Docker

---

## 📦 Installation (Local)

1. Clone the repository:

```bash
git clone https://github.com/yourusername/business-analyst-ai.git
cd business-analyst-ai
````

2. Create a virtual environment and activate it:

```bash
python -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
```

3. Install dependencies:

```bash
pip install --upgrade pip
pip install -r requirements.txt
```

4. Set your environment variable for OpenAI:

```bash
export OPENAI_API_KEY=your-key-here  # Use set on Windows
```

5. Run the API server:

```bash
uvicorn api.main:app --reload
```

Visit `http://127.0.0.1:8000/docs` for the Swagger UI.

---

## 🐳 Run with Docker

1. Build the Docker image:

```bash
docker build -t business-analyst-ai .
```

2. Run the container:

```bash
docker run -e OPENAI_API_KEY=your-key-here -p 8000:8000 business-analyst-ai
```

3. Access the app at [http://localhost:8000/docs](http://localhost:8000/docs)

---

## 📊 Using the Notebook

To explore and test the assistant interactively:

```bash
jupyter lab
```

Then open `Business analyst.ipynb` in your browser.

---

## 🛠️ Technologies Used

* [FastAPI](https://fastapi.tiangolo.com/)
* [LangChain](https://www.langchain.com/)
* [OpenAI API](https://platform.openai.com/)
* [Pandas](https://pandas.pydata.org/)
* [Uvicorn](https://www.uvicorn.org/)

---

## 📌 Environment Variables

Create a `.env` file or export in terminal:

```env
OPENAI_API_KEY=your-openai-api-key
```

---

## 📝 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## 🙋‍♂️ Questions?

Feel free to open an issue or start a discussion on GitHub if you have questions or feature requests.

```


