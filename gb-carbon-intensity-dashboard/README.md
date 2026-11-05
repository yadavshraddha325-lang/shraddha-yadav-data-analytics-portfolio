# GB Regional Carbon Intensity

**Author: Shraddha Yadav**

An Excel analysis of a **3,000-record working extract covering 14 Great Britain electricity regions**. The included timestamps run from **17 September 2018 to 23 July 2025**. Three dashboard pages compare carbon intensity by region, year, time of day and intensity band.

## Project Files

- [Download Excel Workbook](./Excel_GB_Carbon_Intensity.xlsx)
- [View Project Report (PDF)](./Excel_GB_Carbon_Intensity_Report.pdf)

## Tools and Structure

- Microsoft Excel with a 12-field data table.
- **12 native Excel charts** across the Overview, Trends and Risk pages.
- Stored summary tables for regional, time and intensity-band comparisons.
- Data-table filters and dashboard dropdown cells.
- Source documentation and a row-count check.

The sheet named `03_Pivot_Tables` contains stored summary tables. This version does not contain native Excel PivotTable objects.

## Findings from the Included Records

| Measure | Result |
| --- | ---: |
| Records | 3,000 |
| Regions | 14 |
| Average carbon intensity | 155.89 gCO2/kWh |
| Highest stored intensity | 682 gCO2/kWh |
| Records labelled High or Very High | 1,413 (47.10%) |
| Highest regional average | South Wales: 298.66 gCO2/kWh |
| Lowest regional average | South Scotland: 33.44 gCO2/kWh |

These arithmetic summaries use all records in `02_Data_3000`. They describe the included sample across multiple years, rather than continuous monitoring coverage or annual grid-wide estimates.

## Source and Data Notes

The `01_Source` sheet attributes the data to **NESO Regional Carbon Intensity Forecast** and describes selecting and reshaping 3,000 records from a downloaded source file. The original source download and selection procedure are not included with this workbook and report.

The stored data contain one value of **-1 gCO2/kWh**, for London on 4 November 2019. Its meaning is not explained in the source sheet. It remains in the original workbook and is included in the figures above.

## How to Use

1. Download the workbook and open it in Microsoft Excel.
2. Start with `04_Dashboard_Overview`, then review `05_Dashboard_Trends` and `06_Dashboard_Risk`.
3. Use the table filters in `02_Data_3000` to inspect individual records.
4. Review the summary tables and report alongside the charts.

## Version Notes

The dashboard KPIs and summary tables in this version are **stored values**. The Region and Band dropdowns do not recalculate or filter those outputs. Changes to source data require updating the summaries and charts. The row-count check also has a stale saved value and should be recalculated in Excel.

[Return to the portfolio](../README.md)
