--[[��������е����ֵ
local arr={1,2,3,4,5,6,7,8,9}
local max=math.max(unpack(arr))
print(max)
--]]

--ʵ��һ�����ֵļ��η�
--[[function my(x,n)
	local sum
	if n==1 then
		sum=x
	else
		sum=my(x,n-1)*x
	end
	return sum
end
print('����������')
num=io.read()
print('��������ļ��η�')
n=io.read()
print(num.."��"..n.."�η��ǣ�"..my(num,n))
--]]

--����һ������������������������ӣ��������ˣ������ȡ�࣬�������ǵ����н��


--[[function my(x,y)

	local xy1 = x + y
	print(num1..'+'..num2..'='..xy1)

	local xy2 = x - y
	print(num1..'-'..num2..'='..xy2)

	local xy3 = x * y
	print(num1..'*'..num2..'='..xy3)

	local xy4 = x / y
	print(num1..'/'..num2..'='..xy4)

	local xy5 = x % y
	print(num1..'%'..num2..'='..xy5)

end

print("�������һ����")
num1 = io.read()

print("������ڶ�����")
num2 = io.read()

my(num1,num2)
--]]
--����һ����������ѭ������������ܹ�����n�Ľ׳�
--[[function myfun(n)
if n==0 then
return 1
else
return myfun(n-1)*n
end
print("������")
num=io.read()
temp=myfun(num)
print(temp)
--]]
--.쳲���������

--[[function my(n)

	function my(n)
		if n == 0 or n == 1 then
			return 0
		elseif n == 2 then
			return 1
		elseif n == 3 then
			return 2
		else
			return my(n - 1) + my(n - 2)
		end
	end

print(my(5))
--]]
--��������ε���״

--[[a = 10
for i = 1, a, 1 do
	for j = 1, a - i, 1 do
		io.write(' ')
	end
	for k = 1, 2 * i - 1, 1 do
		io.write('*')
	end
	print()
end
--]]
--9*9�˷���

--[[for a = 1,9 do
    local s = ""
    for b=1,9 do
        if b <= a then
            s = s..a.."X"..b.."="..a*b
            if a ~= b then
                s = s.."\t"
            end
        end
    end
    print(s)
end
--]]
--Ҫ���û�����һ����ݣ��жϲ��������������껹��ƽ
--[[function my(year)
if year%4==0 and year%100~=0 then
print("yes")
else
print("not")
end
end
print("���������")
num=io.read()
my(num)
--]]
--[[year=io.read()
if (year%4==0 and year%100~=0) then
print("y")
else
print("n")
end
--]]
--Ҫ���û����������������жϵ�һ�������Ƿ��ǵڶ��������ı���
--[[print("put num1")
num1=io.read()
print("put num2")
num2=io.read()
if num1%num2==0 then
print("y")
else
print("n")
end
--]]
--.Ҫ���û�����һ����ݺ�һ���·ݣ��ж�
--��Ҫ��ʹ��Ƕ�׵�if��else��switch�ֱ��ж�һ�Σ���������ж�����

--[[print("���������")
year = io.read();
print("�������·�")
month = io.read();
if(year%4 == 0 and year%100 ~= 0) then
	print(year.."�����꣺366��")
	local month = tonumber(month)
	if(month == 2) then
		print(month.."����29��")
	end
else
	print(year.."��ƽ�꣺365��")
	local month = tonumber(month)
	if(month == 2) then
		print(month.."����28��")
	end
end

monthMax = {1,3,5,7,8,10,12}
months = {4,6,9,11}
for i,m in ipairs(monthMax)do
	local lable = tonumber(month)
	if m == lable then
		print(lable.."����31��")
	end
end

for i,m in ipairs(months)do
	local lable = tonumber(month)
	if m == lable then
		print(lable.."����30��")
	end
end
--]]

--Ҫ���û�����һ��ѧ���ķ�����1~100����ʹ��switch
--�ṹ�жϸ÷�������ʲô�ȼ���A��B��C��D��F��
--[[print("qingshuru")
num1=io.read()
num=tonumber(num1)
if (num<=20 and num>=1) then
print("F") end
if (num>20 and num<=40) then
print("D") end
if (num>40 and num<=60) then
print("C") end
if (num>60 and nnum<=80) then
print("B") end
if (num>80 and num<=100) then
print("A") end
if (

--]]
--use while
--[[i,j=1,1
while (i<99)
do
	local num =i+2
	i=num
	j=j+i
end
print(j)
--]]
--[[i,j=0,0
while (i<22222)
do
	i=i*10+2
	j=j+i
end
print(j)
--]]

--[[userscanf=io.read()
usernum=tonumber(userscanf)
while(usernum ~= 1) do
	if (usernum%2==1) then
		usernum=usernum*3+1
	else 
		 usernum=usernum/2
	end
	print(usernum)
end
--]]

function bubble(arr)
	for i=1,#arr do
		for j=1,#arr-i do
			if (arr[i]<arr[i+1]) then
				arr[i],arr[i+1]=arr[i+1],arr[i]
			end
		end
	end
end
arr={1,4,2,6,9,6,8,1}
print(arr)
print(bubble(arr))