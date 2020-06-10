sleep_time=2000
appname_Global = "com.neowizgames.game.browndust.srpg.global" -- 国际服app名

local flag=0

function Sleep_click(x,y)
    sleep(1000)
    click(x,y)
end

function printColor(x,y) -- 打印像素点对应的颜色
    c = getColor(1813,206);
    if c then 
        print(c.hex) -- 16进制RGB色值
        print(c.r) -- red 色值
        print(c.g) -- green 色值
        print(c.b) -- blue 色值
    end
end

-- function click_number(i)
--     if i==1 then
--         Sleep_click(642,922)
--     elseif i==2 then
--         Sleep_click()

-- end



::START::

while true do -- 第一步:启动游戏
    runApp(appname_Global)
    local rule = R():desc("Game view"):type("View")
    local view = find(rule)
    if view then
        break
    end
    sleep(sleep_time)
end
toast("启动棕色尘埃成功!")  


while true do -- 第二步:等待载入至大厅
    cReult = compareColor( 663, 564, "#ffffff", 95 );
    if cReult then
        break
    end
    click(2185,964)
    if flag>10 then
        click(2196,56)
        flag=0
    else
        flag=flag+1
    end
    sleep(sleep_time)
end
toast("进入战役成功!")


while true do -- 第三步: 点击第一章节
    cReult = compareColor( 1210, 540, "#ffffff", 95 );
    if cReult then
        break
    end
    click(663, 564)
    sleep(sleep_time)
end
toast("进入章节成功!")


while true do -- 第四步: 点击第一关
    cReult = compareColor( 1890,838, "#ffffff", 95 );
    if cReult then
        break
    end
    click(1210, 540)
    sleep(sleep_time)
end
toast("进入关卡成功!")


while true do -- 第五步:点击入场
    cReult = compareColor( 512,1020, "#ffffff", 95 );
    if cReult then
        break
    end
    if flag>10 then
        click(2196,56)
        flag=0
    else
        flag=flag+1
    end
    click(1890,838)
    sleep(sleep_time)
end
toast("点击入场成功!")


click(512,1020) -- 第六步: 放置佣兵
sleep(sleep_time)
click(564,880)
sleep(sleep_time)
click(898,638)
sleep(sleep_time)
click(417,887)
sleep(sleep_time)
click(631,638)
sleep(sleep_time)
click(1957,992)
sleep(2000)
click(2210,992)



while true do -- 第七步: 返回大厅
    cReult = compareColor( 273,73, "#ffffff", 95 );
    if cReult then
        break
    end
    click(1308,757)
    sleep(sleep_time)
end
toast("返回大厅成功!")



while true do -- 第八步: 从任务关卡返回大厅
    cReult = compareColor( 2147,964, "#52559c", 95 );
    if cReult then
        click(119,42)
        break
    end
    click(273,73)
    sleep(sleep_time)
end
toast("返回大厅成功!")


Sleep_click(2178,385) -- 第九步: 从活动输入代码
while true do
    cReult = compareColor( 1669,817, "#f87f64", 95 );
    if cReult then
        break
    end
    sleep(1000)
end
slid(1820,918,410,922)
Sleep_click(1894,936)
Sleep_click(1227,375)
sleep(3000)
input(R():id("coupon"):type("EditText"),"Dominusocto4")
sleep(1000)
input(R():id("coupon"):type("EditText"),"Dominusocto4")
sleep(1000)
local rule = R():desc("등록"):type("View");
local view = find(rule)
view:click()
sleep(2000)
local rule = R():desc("確認"):type("View");
local view = find(rule)
view:click()



while true do -- 第十步: 从邮箱领取白嫖券
    cReult = compareColor( 1813,206, "#52559c", 95 );
    if cReult then
        break
    end
    click(2038,38)
    sleep(1000)
end
click(1817,974)
sleep(2000)
click(1147,936)
Sleep_click(119,38)



Sleep_click(1055,967) -- 第十一步: 抽奖
Sleep_click(1105,315)
Sleep_click(1105,315)
click(1000,100)
click(1000,100)
click(1000,100)
click(1000,100)
Sleep_click(1512,922)
Sleep_click(2143,673)
Sleep_click(1136,368)
Sleep_click(1733,396)
Sleep_click(659,974)
Sleep_click(1634,960)
sleep(2000)
Sleep_click(1954,939)
Sleep_click(1308,673)
talk("抽奖结果已经出来了!")
sleep(5000)
sleep(10000)
Sleep_click(2090,995)
cons(false); --关闭悬浮窗，防止悬浮窗被截图
sleep(500);--系统 等待500毫秒，等待悬浮窗关闭
capture2Gallery(); --保存图片 至系统相册
cons(true);-- 重新打开悬浮窗
toast("已将抽奖结果截图!")

Sleep_click(2087,946)
Sleep_click(2136,925)
Sleep_click(119,42)
Sleep_click(119,42)

sleep(5000)
Sleep_click(1950,45)
Sleep_click(701,666)
Sleep_click(1178,536)



-- a 为识别到的文字
-- b 为识别的具体属性，里面包含每个字的坐标。

-- while true do
--     cReult = compareColor( 561,687, "#172041", 95 );
--     -- printColor(561,687)
--     if cReult then
--         break
--     end
--     click(1950,45)
--     sleep(1000)
-- end

