-- require("utils")
-- home()

-- utils.start_game_global()
-- utils.test()
sleep_time=2000
appname_Global = "com.neowizgames.game.browndust.srpg.global" -- 国际服app名

function Sleep_click(x,y)
    sleep(1000)
    click(x,y)
end
-- 第一步:启动游戏
while true do
    runApp(appname_Global)
    local rule = R():desc("Game view"):type("View")
    local view = find(rule)
    if view then
        break
    end
    sleep(sleep_time)
end
toast("启动棕色尘埃成功!")  

-- 第二步:等待载入至大厅
while true do
    cReult = compareColor( 663, 564, "#ffffff", 95 );
    if cReult then
        break
    end
    click(2185,46)
    sleep(sleep_time)
end
toast("进入战役成功!")

-- 第三步: 点击第一章节
while true do
    cReult = compareColor( 1210, 540, "#ffffff", 95 );
    if cReult then
        break
    end
    click(663, 564)
    sleep(sleep_time)
end
toast("进入章节成功!")

-- 第四步: 点击第一关
while true do
    cReult = compareColor( 1890,838, "#ffffff", 95 );
    if cReult then
        break
    end
    click(1210, 540)
    sleep(sleep_time)
end
toast("进入关卡成功!")

-- 第五步:点击入场
while true do
    cReult = compareColor( 512,1020, "#ffffff", 95 );
    if cReult then
        break
    end
    click(1890,838)
    sleep(sleep_time)
end
toast("点击入场成功!")

-- 第六步: 放置佣兵
click(512,1020)
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

-- 第七步: 返回大厅

while true do
    cReult = compareColor( 273,73, "#ffffff", 95 );
    if cReult then
        break
    end
    click(1308,757)
    sleep(sleep_time)
end
toast("返回大厅成功!")

-- 第八步: 从任务关卡返回大厅

while true do
    cReult = compareColor( 2147,964, "#52559c", 95 );
    if cReult then
        click(119,42)
        break
    end
    click(273,73)
    sleep(sleep_time)
end
toast("返回大厅成功!")

-- 第九步: 从活动输入代码
Sleep_click(2178,385)

while true do
    cReult = compareColor( 1669,817, "#f87f64", 95 );
    if cReult then
        break
    end
    sleep(1000)
    toast("aaaa")
end
slid(1820,918,410,922)
Sleep_click(1894,936)
Sleep_click(1227,375)
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

-- 第十步: 从邮箱领取白嫖券

while true do
    cReult = compareColor( 1813,206, "#52559c", 95 );
    if cReult then
        break
    end
    click(2038,38)
    sleep(1000)
end
click(1813,206)
sleep(2000)
click(1147,936)

-- 第十一步: 抽奖

Sleep_click(119,38)
Sleep_click(1055,967)
Sleep_click(1105,315)
Sleep_click(1105,315)
Sleep_click(1512,922)
Sleep_click(2143,673)
Sleep_click(1136,368)
Sleep_click(1733,396)
Sleep_click(659,974)
Sleep_click(1634,960)

-- c = getColor(1813,206);
-- if c then 
--     print(c.hex) -- 16进制RGB色值
--     print(c.r) -- red 色值
--     print(c.g) -- green 色值
--     print(c.b) -- blue 色值
-- end
