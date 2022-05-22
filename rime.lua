--- 过滤器：单字在先
function single_char_first_filter(input)
    local l = {}
    for cand in input:iter() do
        if (utf8.len(cand.text) == 1) then
            yield(cand)
        else
            table.insert(l, cand)
        end
    end
    for cand in ipairs(l) do
        yield(cand)
    end
end

--- 计算器
function calculator(input, seg)
    if string.find(input, 'zvzv') ~= nil then -- 匹配 zvzv 开头的字符串
        local _, _, a, operation, b = string.find(input, "zvzv(%d+%.?%d*)([%+%-%*/])(%d+%.?%d*)")
        local result = 0
        if operation == '+' then
            result = a + b
        elseif operation == '-' then
            result = a - b
        elseif operation == '*' then
            result = a * b
        elseif operation == '/' then
            result = a / b
        end
        yield(Candidate("zvzv", seg.start, seg._end, result, "计算器"))
    end
end

--- 日期和时间快捷输入
function date_translator(input, seg)
    if (input == "date") then
        --- Candidate(type, start, end, text, comment)
        yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), ""))
        yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), ""))
    end
    if (input == "time") then
        --- Candidate(type, start, end, text, comment)
        yield(Candidate("time", seg.start, seg._end, os.date("%H:%M"), ""))
        yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), ""))
    end
end

--- uuid生成
function uuid_generate(input, seg)
    if (input == "zvuuid") then -- 输入 zvuuid 字符串
        local seed = {'e','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'}
        local tb = {}
        for i = 1,32 do
            table.insert(tb, seed[math.random(1, 16)])
        end
        local sid = table.concat(tb)
        local result =  string.format('%s%s%s%s%s',
                                    string.sub(sid, 1, 8),
                                    string.sub(sid, 9, 12),
                                    string.sub(sid, 13, 16),
                                    string.sub(sid, 17, 20),
                                    string.sub(sid, 21, 32)
                                )
        yield(Candidate("zvuuid", seg.start, seg._end, result, "uuid"))
    end
end

