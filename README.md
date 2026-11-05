# Shraddha Yadav | Data Analytics Portfolio

**Author: Shraddha Yadav**

A data analytics portfolio covering **Excel, SQL, Python, machine learning and Power BI project reports**. Projects explore healthcare operations, environmental data, retail, customer behaviour and employee salary management. Each project README explains the methods, findings, available files and opening instructions. Source files, reports and existing output or design previews are included where supplied.

## Featured Repositories

These standalone repositories highlight selected projects. The full portfolio, with all project folders and supporting materials, continues below.

| Repository | Tools and focus |
| --- | --- |
| [UK Air Monitoring — SQL Capstone](https://github.com/yadavshraddha325-lang/uk-air-monitoring-sql-capstone) | SQL Server / T-SQL; monitoring-site coverage, lifecycle and metadata quality |
| [Medical Device Analytics Dashboard](https://github.com/yadavshraddha325-lang/medical-device-excel-dashboard) | Excel; revenue, service costs, downtime and compliance |
| [Medical Device Regulatory Dashboard](https://github.com/yadavshraddha325-lang/medical-device-regulatory-excel-dashboard) | Excel; device approvals, complaints, adverse events and recall flags |
| [Bank Marketing Machine Learning](https://github.com/yadavshraddha325-lang/bank-marketing-machine-learning) | Python / scikit-learn; subscription prediction and customer segmentation |
| [Employee Salary Management](https://github.com/yadavshraddha325-lang/employee-salary-management-python) | Python; employee records, salary calculations and department analysis |

## Featured Capstone — UK Air Quality Monitoring Sites

**SQL Server / T-SQL · 500 monitoring sites · 75 analysis queries**

The [UK Air Quality Monitoring Sites capstone](./sql-uk-air-monitoring-capstone/README.md) analyses geographic coverage, site characteristics, lifecycle and metadata quality across **35 zones and nine environment types**. All 500 records contain coordinates, while only 41 contain a site description, making metadata completeness a useful operational finding. This project analyses site metadata rather than pollutant-concentration readings.

The folder includes the original self-contained SQL Server script, dataset, data dictionary, query index and **34-page capstone report**.

**[Explore the capstone and opening instructions](./sql-uk-air-monitoring-capstone/README.md)** · [Read the capstone report](./sql-uk-air-monitoring-capstone/ShraddhaYadav_SQLPhase2_Report.pdf)

## SQL Project Index

| Project | Data supplied | Platform and focus |
| --- | ---: | --- |
| [UK Air Quality Monitoring Sites — Capstone](./sql-uk-air-monitoring-capstone/README.md) | 500 sites | SQL Server; coverage, lifecycle and metadata quality |
| [Diversified Ecommerce](./sql-diversified-ecommerce/README.md) | 5,000 product records | SQLite; pricing, stock, supplier exposure and service risk |
| [Online Retail Customer Reach and Product Demand](./sql-online-retail-data/README.md) | 5,000 transaction lines | SQLite; market coverage, customers, demand and missing identifiers |
| [Online Retail II Sales and Returns](./sql-online-retail-ii/README.md) | 5,000 transaction lines | SQLite; sales, cancellations and trends across the supplied sample |
| [Online Retail Transaction Access and Returns](./sql-online-retail-transactions/README.md) | 5,000 transaction lines | SQLite; transaction access, returns and data quality |
| [Smoking Behaviour and Demographic Analysis](./sql-smoking-behaviour/README.md) | 1,691 respondents | SQLite; smoking prevalence, demographic variation and consumption |

Each SQLite project includes its SQL, cleaned CSV, report and a populated companion database for exploring the queries. The smoking sample contains 421 smokers, a **24.90%** prevalence rate. The ecommerce sample contains **476 low-stock records** and **2,597 high-return records**, using the supplied flags. Findings describe the supplied samples and definitions.

Online Retail Customer Reach and Online Retail Transaction Access are separate supplied query/report packages that share the same cleaned CSV. The portfolio also includes expanded Excel versions; these should be understood as related project versions rather than independent datasets.

## Python and Machine Learning

| Project | Tools and scope | Selected result |
| --- | --- | --- |
| [Employee Salary Management System](./python-employee-salary-system/README.md) | Python; employee records, input validation, salary and department analysis | Ten starter records produce **£460,200** total annual net salary and a **£46,020** average |
| [Bank Marketing: Prediction and Customer Segmentation](./machine-learning-bank-marketing/README.md) | Python, pandas and scikit-learn; three classifiers, K-Means and PCA | Saved results show Random Forest achieving the highest compared **F1 of 0.377**; the previously engaged cluster has a **63.13%** observed subscription rate |

The Python application includes source code and documented console-output evidence. The machine-learning project includes the **41,188-row** source CSV, executable notebook with saved outputs, report and two result previews. Its predictive model excludes call duration, and the README explains the class imbalance and modest positive-class recall.

## Power BI — Olist E-Commerce Operations

The [Olist E-Commerce Operations project](./powerbi-olist-ecommerce/README.md) documents a dashboard design for product value, delivery performance and customer reviews. It includes the original report, seven related source tables, and the report's data-model and dashboard-layout figures. The item table contains **112,650 records**; direct source-data analysis identifies **health and beauty** as the largest category by summed item price.

**Current availability:** report, data and design figures are available. The supplied project descriptor is missing its native report and semantic-model companion folders, and no standalone PBIX was supplied. The original dashboard therefore cannot yet be opened and refreshed from this package. The project README explains the missing files and clearly distinguishes design figures from populated dashboard screenshots.

[View the Power BI project, findings and available files](./powerbi-olist-ecommerce/README.md)

## Excel Project Index

| Project | Records | Project and files |
| --- | ---: | --- |
| Medical Device Analytics | 3,000 | [Open project](./Medical%20device%20project%20Dashboard/README.md) |
| Medical Device Regulatory Dashboard | 200 | [Open project](./medical-device-regulatory-dashboard/README.md) |
| UK Greenhouse Gas Emissions | 3,000 | [Open project](./uk-greenhouse-gas-dashboard/README.md) |
| UK Greenhouse Gas Emissions — Expanded Version | 7,000 | [Open project](./uk-greenhouse-gas-dashboard-7000/README.md) |
| UK Air Quality | 3,000 | [Open project](./uk-air-quality-dashboard/README.md) |
| GB Regional Carbon Intensity | 3,000 | [Open project](./gb-carbon-intensity-dashboard/README.md) |
| Medical Device Operations — Extended Case Study | 10,000 | [Open project](./medical-device-operations-case-study/README.md) |
| UK Road Safety — Demonstration | 7,000 | [Open project](./uk-road-safety-demonstration/README.md) |

Download the workbooks and open them in Microsoft Excel to use their supported controls. Project figures describe the supplied working datasets; each README explains its data provenance, saved view and relevant limitations.

## Medical Device Analytics Dashboard

An Excel analytics project covering **3,000 medical device records across 18 facilities and 18 cities**. The dashboard analyses revenue, service costs, downtime, compliance and warranty information to support operational review.

### Tools and Features

- Microsoft Excel, formulas, **13 PivotTables** and **12 dashboard charts**.
- Dropdown selections and installation-date controls.
- Financial, service-cost and facility comparisons.
- Project report, data dictionary and business findings.

### Key Findings

- **Net revenue:** £134.24 million.
- **Total service cost:** £14.97 million.
- **Compliance status:** 82.33% of records marked Compliant.
- **High Cost records:** 12.27% of records account for 40.41% of service costs.

### Project Files

- [Project README and Opening Instructions](./Medical%20device%20project%20Dashboard/README.md)
- [Excel Dashboard](./Medical%20device%20project%20Dashboard/Medical_Device_Analytics_Dashboard_Shraddha_Yadav_FINAL_REAL_PIVOT.xlsx)
- [Project Report](./Medical%20device%20project%20Dashboard/Medical_Device_Analytics_Project_Report_Shraddha_Yadav.pdf)

Detailed calculations, findings and recommendations are included in the project report.

## Medical Device Regulatory Dashboard

A separate Excel project analysing **200 device records across 15 device types and ten countries**, with five KPI cards, six charts and formula-based regulatory summaries. It covers approval status, complaints, adverse events, recall flags, UDI assignment and postmarket-study requirements.

- [View Regulatory Dashboard Project and README](./medical-device-regulatory-dashboard/README.md)
- [Read Regulatory Project Report (PDF)](./medical-device-regulatory-dashboard/Shraddha_Yadav_Regulatory_Dashboard_Project_Report%281%29.pdf)
- [Open Regulatory Excel Dashboard](./medical-device-regulatory-dashboard/Shraddha_Dashboard_FINAL2%281%29.xlsx)

## UK Greenhouse Gas Emissions Dashboard — 3,000 Records

An Excel dashboard exploring **3,000 working records covering 2005–2023**, with eight PivotTables, eight charts, five slicers and six KPI cards. It compares emissions by geography, sector, gas and year. Results describe the working extract rather than annual UK totals.

- [View UK Dashboard Project and README](./uk-greenhouse-gas-dashboard/README.md)
- [Open UK Excel Dashboard](./uk-greenhouse-gas-dashboard/ShraddhaYadav_UKDashboard.xlsx)
- [Read UK Project Report (PDF)](./uk-greenhouse-gas-dashboard/ShraddhaYadav_UKDashboard_Report.pdf)
- [Download UK Project Report (Word)](./uk-greenhouse-gas-dashboard/ShraddhaYadav_UKDashboard_Report.docx)

## UK Greenhouse Gas Emissions Dashboard — 7,000 Records

An expanded Excel dashboard exploring **7,000 working records and 19 fields covering 2005–2023**, with eight PivotTables, eight charts, five slicers and six KPI cards. It compares emissions across geography, year, sector and gas. Full-extract findings and filter instructions are included in the project README.

- [View the 7,000-Record Project and README](./uk-greenhouse-gas-dashboard-7000/README.md)
- [Open the 7,000-Record Excel Dashboard](./uk-greenhouse-gas-dashboard-7000/ShraddhaYadav_UKDashboard_7000_REAL_Pivots_Slicers.xlsx)
- [Read the 7,000-Record Project Report (PDF)](./uk-greenhouse-gas-dashboard-7000/ShraddhaYadav_UKDashboard_7000_Report.pdf)

## UK Air Quality Dashboard

An Excel project exploring a **3,000-record working dataset for 2024**, covering **34 monitoring sites, 12 UK regions and five pollutants**. It includes six PivotTables, six charts, four slicers and six KPI cards for concentration, air-quality bands and workbook-defined threshold comparisons. The project README explains dataset coverage and interpretation limits.

- [View Air Quality Project and README](./uk-air-quality-dashboard/README.md)
- [Open Air Quality Excel Dashboard](./uk-air-quality-dashboard/ShraddhaYadav_UKDashboard.xlsx)
- [Read Air Quality Project Report (PDF)](./uk-air-quality-dashboard/ShraddhaYadav_UKDashboard_Report.pdf)
- [Download Air Quality Project Report (Word)](./uk-air-quality-dashboard/ShraddhaYadav_UKDashboard_Report.docx)

## GB Regional Carbon Intensity

A separate Excel analysis of **3,000 working records** for regional electricity carbon intensity. The workbook contains summary tables and charts, with a supporting PDF report. The project README distinguishes the static analysis from its unlinked selection controls.

- [View Carbon Intensity Project, Findings and Files](./gb-carbon-intensity-dashboard/README.md)

## Medical Device Operations — Extended Case Study

A **10,000-record educational case study** covering device inventory, revenue, service costs, downtime and compliance-status labels. This is a separate workbook from the 3,000-record medical analytics project. The README provides full-dataset findings and explains the workbook's saved-value and recalculation limitations.

- [View Medical Device Operations Case Study](./medical-device-operations-case-study/README.md)

## UK Road Safety — Demonstration

An Excel learning project using **7,000 constructed demonstration records** to explore accidents, casualties, severity and estimated costs. It uses formula summaries and dropdown selections; the data are not official observed road-collision statistics.

- [View Road Safety Demonstration, Findings and Workbook](./uk-road-safety-demonstration/README.md)
