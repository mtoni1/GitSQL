select *
from PortfolioProject..covidDeaths$

select date,location, new_cases, total_cases, population
from PortfolioProject..covidDeaths$
order by 1,2

select date,location, total_cases,total_deaths
from PortfolioProject..covidDeaths$
order by 1,2

--total cases vs new cases
select date,location, new_cases, total_cases, (total_cases/new_cases)
from PortfolioProject..covidDeaths$
order by 1,2

--total cases vs total deaths
select date,location, total_cases , total_deaths, (total_cases/total_deaths)*100 as DeathPercentage
from PortfolioProject..covidDeaths$
where total_deaths is not null
order by 1,2

--total cases vs total deaths in Kenya
select date,location, total_cases, total_deaths, (total_cases/total_deaths)*100 as DeathPercentage
from PortfolioProject..covidDeaths$
where location like 'Kenya%'
order by 1,2



select date,location, total_cases, total_deaths
from PortfolioProject..covidDeaths$
where location like'kenya%'
order by 1,2


--countries with highest infection rate
select location, population, MAX (total_cases)
from PortfolioProject..covidDeaths$
order by 1,2

--countries with highest death count per population
select date,location, MAX( total_deaths) as totalDeatCount
from PortfolioProject..covidDeaths$
group by location
order by totalDeatCount desc

select date,location, MAX(cast( total_deaths as int)) as totalDeatCount
from PortfolioProject..covidDeaths$
where continent is not null
group by location
order by totalDeatCount desc









