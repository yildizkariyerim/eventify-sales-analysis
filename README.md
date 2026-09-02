# Eventify Sales Performance Analysis

## Project Overview

This project analyzes Eventify ticket sales data to evaluate revenue, ticket sales, transaction status, city performance, category performance and sales channels.

The raw data was analyzed using PostgreSQL and transformed into an interactive Looker Studio dashboard. The final results were documented to support data-driven business decisions.

## Business Problem

Eventify needs a reporting solution to monitor ticket sales performance and answer the following questions:

- How much net revenue was generated?
- How many tickets were sold?
- What percentage of transactions were completed?
- Which cities generated the highest revenue?
- Which categories sold the most tickets?
- How are transaction statuses distributed?
- Which sales channels generated the most completed transactions?
- Which areas require further analysis?

## Dataset

The dataset contains 45 fictional ticket transactions between June 3 and August 10, 2026.

Main fields include:

- Purchase date
- Event date
- Event name
- Category
- City
- Ticket quantity
- Unit price
- Discount percentage
- Transaction status
- Sales channel
- Payment method
- Customer type
- Rating

> The dataset was created for educational purposes and does not contain real customer information.

## Tools

- PostgreSQL
- SQL
- Google Sheets
- Looker Studio
- GitHub

## Data Analysis Process

1. Imported the ticket sales dataset into PostgreSQL.
2. Checked record counts, unique IDs and date ranges.
3. Analyzed sales and transaction performance using SQL.
4. Calculated net revenue by excluding cancelled and refunded transactions.
5. Compared city, category, channel and status performance.
6. Exported the data to Google Sheets.
7. Created an interactive Looker Studio dashboard.
8. Validated dashboard KPIs against SQL results.
9. Documented findings and recommendations.

## Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Transactions | 45 |
| Completed Transactions | 37 |
| Tickets Sold | 70 |
| Net Revenue | 52,572.50 TL |
| Completion Rate | 82.2% |
| Cancelled Transactions | 5 |
| Refunded Transactions | 3 |

## Dashboard

!Eventify Dashboard

View the Interactive Looker Studio Dashboard

## Key Insights

- Eventify generated 52,572.50 TL in net revenue from 37 completed transactions.
- A total of 70 tickets were sold and the overall transaction completion rate was 82.2%.
- Istanbul generated the highest net revenue with 15,302.50 TL, representing approximately 29% of total net revenue.
- Concert was the leading category with 15 completed ticket sales, followed by Conference with 13.
- Web generated 18 completed transactions, while Mobile App generated 15 and Partner generated 4.
- Five transactions were cancelled and three were refunded.
- August data covers only August 1–10 and should not be directly compared with complete monthly data.

## Recommendations

- Analyze the events and categories driving Istanbul’s revenue performance and evaluate similar event opportunities.
- Test early-bird, bundle or cross-selling campaigns for Concert and Conference categories.
- Investigate the low transaction volume of the Partner channel using traffic and conversion data.
- Analyze cancelled and refunded transactions by payment method, channel and event.
- Repeat the monthly comparison after the full August dataset becomes available.

## Repository Structure

```text
eventify-sales-analysis
│
├── README.md
├── data
│   └── eventify_ticket_sales.csv
├── sql
│   └── eventify_analysis.sql
└── dashboard
    └── eventify_dashboard.png
```

## SQL Analysis

The SQL queries used in this project are available in:

`sql/eventify_analysis.sql`

## Author

**Your Name**

- GitHub: Your GitHub Profile
- LinkedIn: Your LinkedIn Profile
