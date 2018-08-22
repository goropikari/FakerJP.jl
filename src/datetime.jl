const monthday = Dict(1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30,
                      7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31)

"""
    FakerJP.today()

# Example
```julia
julia> FakerJP.today()
"2018年 8月23日"
```
"""
function today()
    td = Dates.today()
    y, m, d = map(string, [Dates.year(td), Dates.month(td), Dates.day(td)])
    m, d = lpad(m,2), lpad(d,2)
    return y * "年" * m * "月" * d * "日"
end

"""
    rand_year()

# Example
```julia
julia> FakerJP.rand_year()
"1940年"
```
"""
rand_year() = string(rand(1900:Dates.year(Dates.today()))) * "年"

"""
    year(x) -> x"年"

# Example
```julia
julia> FakerJP.year(10)
"10年"
```
"""
year(x) = string(x) * "年"


"""
    rand_month()

# Example
```julia
julia> FakerJP.rand_month()
"6月"
```
"""
rand_month() = string(rand(1:12)) * "月"

"""
    month(x)
"""
month(x) = string(x) * "月"


"""
    rand_day()

# Example
```julia
julia> FakerJP.rand_day()
"12日"
```
"""
rand_day() = string(rand(1:31)) * "日"

"""
    day([x])
"""
day(x) = string(x) * "日"


"""
    rand_date(;type)

# Example
```julia
julia> FakerJP.rand_date()
"1989年 9月10日"

julia> FakerJP.rand_date(type=1) # default
"2007年12月 8日"

julia> FakerJP.rand_date(type=2) # month and day
" 8月 6日"

julia> FakerJP.rand_date(type=3) # year and month
"1942年 9月"
```
"""
function rand_date(;type=1)
    m = rand(1:12)
    dmax = monthday[m]
    d = rand(1:dmax)
    ystr = rand_year()
    mstr = lpad(month(m), 3)
    dstr = lpad(day(d), 3)

    if type == 1
        return ystr * mstr * dstr
    elseif type == 2
        return mstr * dstr
    elseif type == 3
        return ystr * mstr
    end
end
