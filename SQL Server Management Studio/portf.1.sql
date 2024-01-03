select *
from PortfolioProject..covidDeaths$

--select *
--from PortfolioProject..covidDeaths$
--order by 3,4

--total deaths vs total cases
--select location,date,total_cases,total_deaths
--from PortfolioProject..covidDeaths$
--where location like 'kenya%'
--order by 1,2

--showng countries with highest death count by population

--select location, MAX(total_deaths) as TotalDeathCount
--from PortfolioProject..covidDeaths$
--group by location
--order by TotalDeathCount desc


--looking at total cases vs vaccination