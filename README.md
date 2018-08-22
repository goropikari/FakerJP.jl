# FakerJP

Generator of fake data for Japanese.

## Installation
```julia
]add FakerJP
```

## Basic usage
```julia
julia> using FakerJP

julia> p = rand(Japanese)
Japanese
 加藤 仁志
 かとう ひとし
 カトウ ヒトシ

julia> name(p)
"加藤 仁志"

julia> name(p, type=2)
"かとう ひとし"

julia> name(p, type=3)
"カトウ ヒトシ"

julia> name()
"樽床 孝一"

julia> FakerJP.prefecture()
"群馬県"

julia> FakerJP.date()
"1963年11月 6日"
```

## Acknowledgement
Inspired by [Faker.jl](https://github.com/codeneomatrix/Faker.jl).
