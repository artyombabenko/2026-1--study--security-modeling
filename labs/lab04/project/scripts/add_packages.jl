using Pkg
Pkg.activate(".") # Активируем текущий проект
packages = [
    "DrWatson",        # Организация проекта
    "DifferentialEquations", # Решение ОДУ
    "Plots",           # Визуализация
    "DataFrames",      # Таблицы данных
    "CSV",             # Работа с CSV
    "JLD2",            # Сохранение данных
    "Literate",        # Literate programming
    "IJulia",          # Jupyter notebook
]

println("Установка базовых пакетов...")
Pkg.add(packages)

println("\nВсе пакеты установлены!")
println("Для проверки: using DrWatson, DifferentialEquations, Plots")