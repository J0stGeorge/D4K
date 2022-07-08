--[[NCDev Team Evolution]]
local r = string.byte
local f = string.char
local c = string.sub
local u = table.concat
local l = table.insert
local s = math.ldexp
local D = getfenv or function()
        return _ENV
    end
local l = setmetatable
local h = select
local t = unpack or table.unpack
local i = tonumber
local function E(d)
    local e, n, o = "", "", {}
    local t = 256
    local a = {}
    for l = 0, t - 1 do
        a[l] = f(l)
    end
    local l = 1
    local function r()
        local e = i(c(d, l, l), 36)
        l = l + 1
        local n = i(c(d, l, l + e - 1), 36)
        l = l + e
        return n
    end
    e = f(r())
    o[1] = e
    while l < #d do
        local l = r()
        if a[l] then
            n = a[l]
        else
            n = e .. c(e, 1, 1)
        end
        a[t] = e .. c(n, 1, 1)
        o[#o + 1], e, t = n, n, t + 1
    end
    return table.concat(o)
end
local i =
    E(
    "24K24G27524I24Q27524G25O25R25D25G25V25W25U25L25Q25J24I27427525J25D25P25H24I24N27926G25W25W25S26F25H25W24I22V27925K27W25S25V24A23Z23Z25U25D25Z23Y25J25L25W25K25X25E25X25V25H25U25F25R25Q25W25H28S23Y28Q25P23Z26P24426E24825V24925J26K26P26W26C24026Y25Y28T24324624226226T26E24726L26P25N26024626R25Z25K26V25E26M26U25W26124324523Z25V25S25G26V24525Q26M26W26M26J24325X24825D24826S25V25Q25X26D26U24625T25P25J26F26L25Z26025P25F25S26K26G25J26A25W26925Z26K25W25J26X26225H24726C24625Z26E26I25I26Q25K25T24826O26L25X26V26W25J26U25N24526126L26I25Y26K26K25X26P26125S26M26V26V23Z25P25D27I23Z26E23P24326C25M26G23P24526D24425Q25E25Y23U26A24525E23L26C23P24224323P2442402CX24623T2CF26C2412442D623Y25O25X25D27924G24P27924Y24U27924H2DI2752DM24I27923K2DO24G2DM24J24G24Y27624G2DQ2752DY24G2DW27M2DF2DV2DF2E92E02EA2DM2DM2E92EE275"
)
local o = bit and bit.bxor or function(l, n)
        local e, o = 1, 0
        while l > 0 and n > 0 do
            local c, a = l % 2, n % 2
            if c ~= a then
                o = o + e
            end
            l, n, e = (l - c) / 2, (n - a) / 2, e * 2
        end
        if l < n then
            l = n
        end
        while l > 0 do
            local n = l % 2
            if n > 0 then
                o = o + e
            end
            l, e = (l - n) / 2, e * 2
        end
        return o
    end
local function n(e, l, n)
    if n then
        local l = (e / 2 ^ (l - 1)) % 2 ^ ((n - 1) - (l - 1) + 1)
        return l - l % 1
    else
        local l = 2 ^ (l - 1)
        return (e % (l + l) >= l) and 1 or 0
    end
end
local l = 1
local function e()
    local c, n, e, a = r(i, l, l + 3)
    c = o(c, 160)
    n = o(n, 160)
    e = o(e, 160)
    a = o(a, 160)
    l = l + 4
    return (a * 16777216) + (e * 65536) + (n * 256) + c
end
local function d()
    local e = o(r(i, l, l), 160)
    l = l + 1
    return e
end
local function a()
    local e, n = r(i, l, l + 2)
    e = o(e, 160)
    n = o(n, 160)
    l = l + 2
    return (n * 256) + e
end
local function E()
    local l = e()
    local e = e()
    local c = 1
    local o = (n(e, 1, 20) * (2 ^ 32)) + l
    local l = n(e, 21, 31)
    local e = ((-1) ^ n(e, 32))
    if (l == 0) then
        if (o == 0) then
            return e * 0
        else
            l = 1
            c = 0
        end
    elseif (l == 2047) then
        return (o == 0) and (e * (1 / 0)) or (e * (0 / 0))
    end
    return s(e, l - 1023) * (c + (o / (2 ^ 52)))
end
local W = e
local function s(e)
    local n
    if (not e) then
        e = W()
        if (e == 0) then
            return ""
        end
    end
    n = c(i, l, l + e - 1)
    l = l + e
    local e = {}
    for l = 1, #n do
        e[l] = f(o(r(c(n, l, l)), 160))
    end
    return u(e)
end
local l = e
local function f(...)
    return {...}, h("#", ...)
end
local function u()
    local r = {}
    local c = {}
    local l = {}
    local i = {r, c, nil, l}
    local l = e()
    local o = {}
    for n = 1, l do
        local e = d()
        local l
        if (e == 1) then
            l = (d() ~= 0)
        elseif (e == 0) then
            l = E()
        elseif (e == 2) then
            l = s()
        end
        o[n] = l
    end
    for l = 1, e() do
        c[l - 1] = u()
    end
    for i = 1, e() do
        local l = d()
        if (n(l, 1, 1) == 0) then
            local c = n(l, 2, 3)
            local t = n(l, 4, 6)
            local l = {a(), a(), nil, nil}
            if (c == 0) then
                l[3] = a()
                l[4] = a()
            elseif (c == 1) then
                l[3] = e()
            elseif (c == 2) then
                l[3] = e() - (2 ^ 16)
            elseif (c == 3) then
                l[3] = e() - (2 ^ 16)
                l[4] = a()
            end
            if (n(t, 1, 1) == 1) then
                l[2] = o[l[2]]
            end
            if (n(t, 2, 2) == 1) then
                l[3] = o[l[3]]
            end
            if (n(t, 3, 3) == 1) then
                l[4] = o[l[4]]
            end
            r[i] = l
        end
    end
    i[3] = d()
    return i
end
local function s(l, e, d)
    local e = l[1]
    local n = l[2]
    local l = l[3]
    return function(...)
        local c = e
        local e = n
        local o = l
        local i = f
        local n = 1
        local a = -1
        local u = {}
        local r = {...}
        local f = h("#", ...) - 1
        local l = {}
        local e = {}
        for l = 0, f do
            if (l >= o) then
                u[l - o] = r[l + 1]
            else
                e[l] = r[l + 1]
            end
        end
        local l = f - o + 1
        local l
        local o
        while true do
            l = c[n]
            o = l[1]
            if o <= 6 then
                if o <= 2 then
                    if o <= 0 then
                        local n = l[2]
                        local o, l = i(e[n](t(e, n + 1, l[3])))
                        a = l + n - 1
                        local l = 0
                        for n = n, a do
                            l = l + 1
                            e[n] = o[l]
                        end
                    elseif o == 1 then
                        e[l[2]] = d[l[3]]
                    else
                        e[l[2]] = d[l[3]]
                    end
                elseif o <= 4 then
                    if o > 3 then
                        e[l[2]] = e[l[3]][l[4]]
                    else
                        e[l[2]] = l[3]
                    end
                elseif o > 5 then
                    do
                        return
                    end
                else
                    e[l[2]]()
                end
            elseif o <= 10 then
                if o <= 8 then
                    if o == 7 then
                        local n = l[2]
                        local o, l = i(e[n](t(e, n + 1, l[3])))
                        a = l + n - 1
                        local l = 0
                        for n = n, a do
                            l = l + 1
                            e[n] = o[l]
                        end
                    else
                        e[l[2]] = e[l[3]][l[4]]
                    end
                elseif o > 9 then
                    e[l[2]]()
                else
                    e[l[2]] = l[3]
                end
            elseif o <= 12 then
                if o > 11 then
                    local l = l[2]
                    e[l] = e[l](t(e, l + 1, a))
                else
                    do
                        return
                    end
                end
            elseif o == 13 then
                local l = l[2]
                e[l] = e[l](t(e, l + 1, a))
            else
                local r
                local f, h
                local o
                e[l[2]] = d[l[3]]
                n = n + 1
                l = c[n]
                e[l[2]] = d[l[3]]
                n = n + 1
                l = c[n]
                e[l[2]] = e[l[3]][l[4]]
                n = n + 1
                l = c[n]
                e[l[2]] = d[l[3]]
                n = n + 1
                l = c[n]
                e[l[2]] = l[3]
                n = n + 1
                l = c[n]
                o = l[2]
                f, h = i(e[o](t(e, o + 1, l[3])))
                a = h + o - 1
                r = 0
                for l = o, a do
                    r = r + 1
                    e[l] = f[r]
                end
                n = n + 1
                l = c[n]
                o = l[2]
                e[o] = e[o](t(e, o + 1, a))
                n = n + 1
                l = c[n]
                e[l[2]]()
                n = n + 1
                l = c[n]
                do
                    return
                end
            end
            n = n + 1
        end
    end
end
return s(u(), {}, D())()
