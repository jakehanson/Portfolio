drop table #temp
select min(convert(date,a.datetime)) as 'Date'
, min(b.redacted) as 'Score'
, c.redacted

INTO #temp

FROM REDACTED as a
inner join REDACTED as b -- Get Product Offer
    on a.redacted = b.redacted
    and a.redacted = b.redacted and b.redacted > 0
inner join REDACTED as c -- Get Signups
    on a.redacted = c.redacted
    and a.redacted = c.redacted
    and a.redacted = c.redacted
    and c.redacted = 'redacted'


where a.datetime between '2022-01-01' and '2023-01-01'

group by c.redacted

SELECT t.Date
, t.redacted
, t.redacted
, d.redacted
, sum(d.redacted) as 'Payment Amount',
SUM(CASE WHEN d.FirstPaymentDate <= DATEADD(DD,30,d.YearMonthDay) THEN d.redacted END) AS Collections_30_Day,
SUM(CASE WHEN d.FirstPaymentDate <= DATEADD(DD,60,d.YearMonthDay) THEN d.redacted END) AS Collections_60_Day,
SUM(CASE WHEN d.FirstPaymentDate <= DATEADD(DD,90,d.YearMonthDay) THEN d.redacted END) AS Collections_90_Day,
SUM(CASE WHEN d.FirstPaymentDate <= DATEADD(DD,120,d.YearMonthDay) THEN d.redacted END) AS Collections_120_Day,
SUM(CASE WHEN d.FirstPaymentDate <= DATEADD(DD,150,d.YearMonthDay) THEN d.redacted END) AS Collections_150_Day,
SUM(CASE WHEN d.FirstPaymentDate <= DATEADD(DD,180,d.YearMonthDay) THEN d.redacted END) AS Collections_180_Day,
SUM(d.redacted) as LTR

into #temp_2

FROM #temp t
left join REDACTED as d -- Join Collections
    on t.redacted = d.redacted

GROUP BY t.redacted
, t.redacted
, t.redacted
, d.redacted;

