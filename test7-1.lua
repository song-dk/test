--[[
function bubble(arr_tmp)
    for i=1,#arr_tmp-1 do
        for j=1,#arr_tmp-i do
            if arr_tmp[j]>arr_tmp[j+1] then
                arr_tmp[j],arr_tmp[j+1]=arr_tmp[j+1],arr_tmp[j]
            end
        end
    end
end
local arr={32,43,2,65,65,32,345}
print("排序前")
for k,v in ipairs(arr) do
    print(v)
end
print("排序后")
bubble(arr)
for k,v in ipairs(arr) do
    print(v)
end
--]]

--返回最大值
--[[function MAX_table(arr_tab)
    local temp=nil
    for k,v in ipairs(arr_tab) do
        if (temp==nil or temp<v) then
            temp=v
        end
    end
    return temp
end
tab={32,54,76,98,12,5}
max=MAX_table(tab)
print(max)
--]]


--创建自己的迭代器
--[[arr_week={"monday","tuesday","wedness","thurday","friday","saturday","sunday"}

function elementIterator2(countTable)
    local inde=0
    local count=#countTable
    return function()
        inde =inde + 1
        if inde <=count then
            return countTable[inde]
        end
    end
end

for element in elementIterator2(arr_week) do
    print(element)
end
--]]


--一个简单的例子实现迭代，实现数字n的平方

--[[function square(iteratorMaxCount,currentNumber)
    74     if (currentNumber<iteratorMaxCount) then 
    75         currentNumber = currentNumber+1
    76         return currentNumber,currentNumber*currentNumber
    77     end
    78 end
    79 for i ,n in square,3,0 do 
    80     print(i,n)
    81 end
--]]

--定义一个函数，传入两个参数并相加，相减，相乘，相除，取模，返回运行结果
--[[function mathB(a,b)
    c1=a+b
    c2=a-b
    c3=a*b
    c4=a/b
    c5=a%b
    return c1,c2,c3,c4,c5
end

i=5
j=9
p1,p2,p3,p4,p5=mathB(i,j)
print(p1,p2,p3,p4,p5)

--]]

--定义一个函数让其利用循环能计算n的阶乘

--[[function factorial(num)
    local fac=1
    for var=num,1,-1 do
        fac=fac*i 
    end
    return fac
end

t=factorial(3)
print(t)


--]]

--斐波那契数列
--[[
    function fb(i)
    if i<=2 and i>0 then
        return 1
    else
        local j=fb(i-1)+fb(i-2)
        return j
    end
end
m=1
while m<=20 do
print(fb(m))
m=m+1
end

--]]

--三角形
--[[
for x=1,8,1 do
    local d=""
    for y=1,8,1 do
        if y<=x then
        d=d.."A"
        end
    end
    print(d)
end

--]]

--[[
for i=1,9 do
    local s=""
    for j=1,9 do
        if j<=i then
            s=s..j.."x"..i.."="..i*j.." "
        end
    end
    s=s.."\n"
    print(s)
end
--]]

--匿名函数传参
--[[
function testfun(tab,fun)
    for k,v in pairs(tab) do
        print(fun(k,v))
    end
end

tab={k1="song",k2="deng",k3="ke"}
testfun(tab,function(x,y)
return x.."="..y
end)
--]]

--冒泡排序法  排列数组的10个元素（从大到小进行排列）

--[[
sz = {56,52,32,78,55,41,12,36,75,99}
i = 1
j = 1
while i < (#sz) do 
    while j <=((#sz)-i) do  
        if sz[j]<sz[j+1] then 
            sz[j],sz[j+1] = sz[j+1],sz[j]   --实现2个数的交换
        end
        j = j+1
    end
    j = 1   --一轮比较完，进行 第二轮的比较
    i = i + 1
end
for k,v in pairs(sz) do 
    print(k.."="..v)
end

--]]


--[[
PrintMy = function(parm)
    print("打印函数print",parm,"????")
end
function add(num1,num2,functionP)
    re = num1+num2
    functionP(re)
end
PrintMy(10)
add(5,10,PrintMy)
--]]

--求平均值（可变参数）
--[[
function average(...)
    arg={...}
    sum=0
    for k,v in pairs(arg) do
        sum=sum+v
    end
    print("sum="..sum)

    print("aver="..sum/#arg)
end
average(4,6,8,2)
--]]


--将阿拉伯数字改成汉字的形式
--[[local function numtocn(num)
    local size = #tostring(num)
    local cn=""
    local strcn={"一","二","三","四","五","六","七","八","九","十"}
    for i=1,size do
        cn=cn..strcn[tonumber(string.sub(tostring(num),i,i))]
    end
    print(cn)
end
num=4379823321
numtocn(num)
--]]

--递归求阶乘

--[[
function diguijiecheng(n)
    if n==1 then
        return 1
    else
        return n*diguijiecheng(n-1)
    end
end

print(diguijiecheng(3))

--]]


print(string.gsub("hello*js","-","="))
s=string.gsub("hello*js","-","=")
print(s)