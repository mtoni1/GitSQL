select * 
from PortfolioProject..covidDeaths$

--remove unnecessary data
select * 
from PortfolioProject..covidDeaths$
where continent is not null

--comparing new cases to total cases in Kenya
 select date,location, population, new_cases, total_cases
 from covidDeaths$
 where location like '%kenya'
 order by 1,2

 --comparing total cases vs new cases in kenya
 select date,location, population, new_cases, total_cases,(total_cases/new_cases) as InfectionRate
 from covidDeaths$
 where location like '%kenya'
 order by 1,2
 

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

--total cases vs population in	Kenya
--percentage shows infections

select date,location, total_cases, population,(total_cases/population)*100 as DeathPercentage
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

--countries with high infection rate compared to population

select location,population, MAX( total_cases) as HighestInfectionCount,MAX(total_cases/population)*100 as PopulationInfectedPercentage
from PortfolioProject..covidDeaths$
--where continent is not null
group by location,population
order by  PopulationInfectedPercentage desc

--countries with high death count per population

select location,population, MAX( cast(total_deaths as int)) as totalDeathCount
from PortfolioProject..covidDeaths$
--where continent is not null
group by location,population
order by totalDeathCount desc


--countries with high death count percentage compared to population

select location,population, MAX( total_deaths) as HighestDeathCount,MAX(total_deaths/population)*100 as PopulationDeathPercentage
from PortfolioProject..covidDeaths$
where continent is not null
group by location,population
order by  PopulationDeathPercentage desc


--continents

select location, MAX( cast(total_deaths as int)) as totalDeathCount
from PortfolioProject..covidDeaths$
where continent is null
group by location
order by totalDeathCount desc

--GLOBAL NUMBERS

select date, total_cases,cast (total_deaths as int), (total_cases/total_deaths)*100 as DeathPercentage
from PortfolioProject..covidDeaths$
where continent is not null
order by 1,2