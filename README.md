# netflix-of-nations-streaming-insights
📊 Full-stack data analysis project: Global streaming habits vs. economic power using MySQL, Python, and Power BI.
## 🎯 Project Objective

To explore how global streaming habits relate to economic indicators like average income, GDP per capita, and internet access — and uncover insights for platform strategy and market expansion.

---

## 🔍 Key Questions

- Which countries have the highest streaming audiences?
- How does GDP per capita impact average watch hours?
- Which platforms dominate globally and by region?
- What genres are most consumed?
- How affordable are subscription prices relative to income?

## 🛠️ Tools & Environment

- **Database:** MySQL  
- **Data Cleaning & EDA:** Python (Jupyter Notebook, Pandas, SQLAlchemy)
- **Visualization & Dashboard:** Power BI
- **Data Storage:** Exported cleaned data to Excel (.xlsx)
- **Version Control:** Git & GitHub

## ⚙️ Requirements

To run the Jupyter Notebook locally, you’ll need:

- Python 3.9+
- Jupyter Notebook or JupyterLab
- Required Python libraries:
  - pandas
  - numpy
  - sqlalchemy
  - pymysql
  - openpyxl
  - seaborn
  - matplotlib

📌 Install them easily:
```bash
pip install pandas numpy sqlalchemy pymysql openpyxl seaborn matplotlib



---

✅ **Why this works:**  
- It’s clear — people know exactly which packages to install.  
- Shows you can write reproducible, shareable code.  
- Looks professional on GitHub.

---

## 📌 Extra Tip  
You can also add a `requirements.txt` file later if you want — but this snippet is enough for your portfolio!

---

When done, say **“Requirements done ✅”** —  
and I’ll craft your next section: your **Project Workflow / How to Run** instructions! 🚀

## 🔗 Project Workflow & How to Run

1. **Database Setup:**  
   - Designed a relational database schema in MySQL with tables for countries, platforms, subscriptions, genres, and economic indicators.

2. **Data Ingestion & Cleaning:**  
   - Connected MySQL database to Jupyter Notebook using SQLAlchemy and pymysql.
   - Loaded tables into pandas DataFrames.
   - Performed exploratory data analysis (EDA) and cleaned data.

3. **Export Cleaned Data:**  
   - Exported final clean dataset to `streaming_data_cleaned.xlsx` for use in Power BI.

4. **Dashboard Development:**  
   - Imported cleaned data into Power BI.
   - Created interactive visuals: KPI Cards, Map, Bar Chart, TreeMap, Scatter Plot, and Drilldown Table.
   - Added Slicers for Region, Year, and Platform.

---

📌 **To Run This Project Locally:**
- Clone the repo.
- Open the `.ipynb` notebook under `/notebooks/` to explore the EDA.
- Open the `.pbix` file in Power BI Desktop to view or edit the dashboard.

## 📈 Key Insights & Conclusion

- Regions with lower GDP per capita tend to have higher watch hours on free platforms, highlighting the impact of affordability.
- Drama and Music genres dominate global consumption patterns.
- Affordability Score helps identify markets where subscription pricing may be adjusted for better reach.

---

**Conclusion:**  
This project demonstrates an end-to-end data analyst workflow — from SQL database design to Python EDA and an interactive Power BI dashboard — providing valuable insights for content strategy and market expansion.
---
## 🙌 Connect with Me
**Built with ❤️ by [NANCY]([[https://www.linkedin.com/in/nancy2601/])**
Feel free to reach out on LinkedIn — I’d love your feedback!
