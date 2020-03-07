First=gg.isPackageInstalled("com.thebest.spartacusv3") if First==false then gg.alert("نعتذر منك السكربت خاص للمشتركين⛔") os.exit() end

gg.alert("❇️⁦Wellcome to you of ⟬⟬ sPartaCus ⟭⟭ ❇️⁩\n\n🛡️Telegram⟬⟬ @pubgvipnet ⟭⟭🛡️سكربت سبارتكوس اصدار خاص بأمسي و كلان F5 ", "⟬دخول⁦✔️⁩⟭")

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end
HOME = 1
BYPDONE = 0
CMENU = 0
function CHOME()
  OICHOME = gg.alert("spartacus", "⟬ ᴀʀ 🇸🇦 ⟭", "⟬ ᴇɴ 🇺🇸 ⟭","⟬ 𝐈𝐧𝐟𝐨 ⟭")
if OICHOME == nil then
  else
    if OICHOME == 1 then
      HOME2()
      CMENU = 2
    end
    if OICHOME == 2 then
      HOME()
      CMENU = 1
    end
   if OICHOME == 3 then
      INFO()
      CMENU = 0
    end
  end
  iBug = -1
end
function HOME()
menu = gg.choice({
"Lobby ANTI BAN",
"🌡ʜᴇᴀᴅ sʜᴏᴛᵍˡ",
"🎶ᴀɴᴛᴇɴɴᴀᵍˡ",
"🍀ɴᴏ ɢʀᴀssᵍˡ",
"🌀sᴄᴏᴘᴇ ғʀᴏɴᴛ+sɪᴛᵍ",
"🧨ɪɴsᴛᴀɴᴛ ʜɪᴛᵍˡ",
"🕹ᴀɪᴍ ʙᴏᴛᵍˡ",
"🃏ɴᴏ sᴘʀᴇᴀᴅᵍ",
"🐓ᴄᴏʟᴏʀ ᴀʟʟ ᴅᴇᴠɪᴄᴇs",
"🍏ᴡᴀʟʟ ʜᴀᴄᴋ",
"🎯ɴᴏ ʀᴇᴄᴏɪʟᵍˡ",
    "↶ ᴇxɪᴛ",
 }, nil, "🔱 spartacus t@pubgvipnet")
if menu==1 then O()end
if menu==2 then B()end
if menu==3 then C()end
if menu==4 then D()end
if menu==5 then E()end
if menu==6 then F()end
if menu==7 then H()end
if menu==8 then J()end
if menu==9 then M()end
if menu==10 then K()end
if menu==11then AA()end
if menu==12 then ex()end
iBug = -1
end


function HOME2()
menu = gg.choice({
"🎈🎈تفعيل حماية اللوبي🎈🎈",
"🌡هيد شوتᵍˡ",
"🎶انتيناᵍˡ",
"🍀اخفاء عشبᵍˡ",
"🌀ست + يدطويلهᵍ",
"🎐نزول سريعᵍ",
"🧨رصاص خارقᵍˡ",
"🕹ايم بوتᵍˡ",
"👀منع انتشار الرصاصᵍ",
"🏇سبيد هاكᵍ",
"🏍سبيد+ᵍ",
"🔪تصليح دمجᵃʳ",
"🐓لون لكل الاجهزة",
"🍏وايل هاك",
"🎯تثبيت سلاحᵍˡ",
"📡خيارات ست سكوب",
    "↶ ᴇxɪᴛ",
 }, nil, "🔱 spartacus t@pubgvipnet")
if menu==1 then O()end
if menu==2 then BB()end
if menu==3 then C()end
if menu==4 then D()end
if menu==5 then E()end
if menu==6 then F()end
if menu==7 then H()end
if menu==8 then J()end
if menu==9 then MM()end
if menu==10 then KK()end
if menu==11 then AA()end
if menu==12 then ex()end
iBug = -1
end


function INFO()

if I == nil then
  else
end
end

function A()
NO = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ 🖤","⟬ ʟᴏʙʙʏ 🔥⟭", "⟬ ɢᴀᴍᴇ 💧⟭","⟬ ʟᴏʙʙʏ ⁵⁰% ❄⟭")
if NO == nil then
  else
    if NO == 1 then
      NOL()
    end
    if NO == 2 then
      NOG()
    end
    if NO == 3 then
      NOK()
    end
  end
  iBug = -1
end

function AA()
NO = gg.alert(" اختار نوع 🖤","⟬ قبل القيم🔥⟭", "⟬ بالقيم💧⟭","⟬ قبل القيم⁵⁰% ❄⟭")
if NO == nil then
  else
    if NO == 1 then
      NOL()
    end
    if NO == 2 then
      NOG()
    end
    if NO == 3 then
      NOK()
    end
  end
  iBug = -1
end


function NOL()
gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber('2048D;4D;1F;1F;1D:30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,348,759,109;1953067887;1,634,692,166;1,920,287,604::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1634692166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1634692266", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-2.786982e28;-3.7444097e28;-1.1368837e-13::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.7444097e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-    7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("90", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1F;-8.6457681e12F;15F;28F;16F;26F;8F;18F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("15.0F;28.0F;16.0F;26.0F;8.0F;18.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("95", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("909391408;808923191::8", gg.TYPE_DWORD)
gg.getResults(999)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("909391408", gg.TYPE_DWORD)
gg.getResults(999)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("2A0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1903895931231645696", gg.TYPE_QWORD)
gg.clearResults()
   else
    gg.alert("-ʟᴏʙʙʏ ᴏɴʟʏ🌴\n-تفعيل قبل القيم")
  end
end

function NOK()
gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber('2048D;4D;1F;1F;1D:30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,348,759,109;1953067887;1,634,692,166;1,920,287,604::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1634692166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1634692266", gg.TYPE_DWORD)
   else
    gg.alert("-ʟᴏʙʙʏ ᴏɴʟʏ🌴\n-قبل القيم")
  end
  end

function NOG()
gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber('2048D;4D;1F;1F;1D:30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    gg.alert("-ɢᴀᴍᴇ ᴏɴʟʏ🌳\nتفعيل بالقيم")
   else
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;200;0.5;40.0;0.3:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("300", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;10000D;100000:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("0.001", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT)
  gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2~4;1.09375;1;18;3.5::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2~4;1.09375::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2~4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("-0.5", gg.TYPE_FLOAT)
  gg.clearResults()
  end
end

function B()
NO = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ 🖤","⟬ ʜs⁹⁹% 📕⟭", "⟬ ʜs⁷⁵% 📔⟭", "⟬ ʜs⁵⁰% 📗⟭")
if NO == nil then
  else
    if NO == 1 then
      H99()
    end
    if NO == 2 then
      H75()
    end
    if NO == 3 then
      H50()
    end
    end
  iBug = -1
end

function BB()
NO = gg.alert("اختار النوع 🖤","⟬ هيد شوت⁹⁹% 📕⟭", "⟬ هيد شوت⁷⁵%📔⟭", "⟬ هيد شوت⁵⁰% 📗⟭")
if NO == nil then
  else
    if NO == 1 then
      H99()
    end
    if NO == 2 then
      H75()
    end
    if NO == 3 then
      H50()
    end
    end
  iBug = -1
end

function H99()
qmnb = {
{["memory"] = 32},
{["name"] = "headshot"},
{["value"] = 30.5, ["type"] = 16},
{["lv"] = 25.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 501, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 39},
{["name"] = "headshot"},
{["value"] = 23.0, ["type"] = 16},
{["lv"] = 25.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 501, ["offset"] = 4, ["type"] = 16},

}
xqmnb(qmnb)
end

function H50()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("150", gg.TYPE_FLOAT)
gg.clearResults()
end

function H75()
gg.clearResults()
 gg.setRanges(gg.REGION_C_DATA)
 gg.searchNumber("-4,344,847,739,369,816,064;4,842,495,502,613,479,424;4,094,254,846,796,103,680;953,267,991:13", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("953,267,991", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(99)
 gg.editAll("1,140,457,472", gg.TYPE_QWORD)
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,752,423,507,886,342,144;1,106,509,824:5", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(99)
 gg.editAll("4,881,057,572,275,945,472;1,136,459,776", gg.TYPE_QWORD)
 gg.clearResults()
end

function C()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,804,934,254,803,878,643;-4,410,762,456,449,774,017;4,575,657,222,473,777,152:13", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(99)
 gg.editAll("4,610,560,119,594,024,960;-4,410,762,456,495,030,272;4,575,657,222,557,253,632", gg.TYPE_QWORD)
 gg.clearResults()
end

function D()
gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber('2048D;4D;1F;1F;1D:30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
  qmnb = {
{["memory"] = 32},
{["name"] = "nograss"},
{["value"] = 29541, ["type"] = 4},
{["lv"] = 1935766087, ["offset"] = -8, ["type"] = 4},
{["lv"] = 7499628, ["offset"] = -20, ["type"] = 4},
}
qmxg = {
{["value"] = 1886999666, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
   else
   gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('8.0F;1.20000004768F;0.80000001192F;1.5F;0.80000001192F;1.5F::512', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('8.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll('0', gg.TYPE_FLOAT)
  gg.clearResults()
  end
end

function E()
gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber('2048D;4D;1F;1F;1D:30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    gg.alert("-ɢᴀᴍᴇ ᴏɴʟʏ🌳\nتفعيل بالقيم")
   else
   gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4848124999984742400", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-4767057191527907328", gg.TYPE_QWORD)
gg.clearResults()
  end
end

function G()
gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber('2048D;4D;1F;1F;1D:30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    gg.alert("-ɢᴀᴍᴇ ᴏɴʟʏ🌳\nتفعيل بالقيم")
   else
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('3000;5000;1024;1000::', gg.TYPE_FLOAT,false, gg.SIGN_EQUAL,0,-1)
gg.getResults(6284)
gg.editAll('999999', gg.TYPE_FLOAT)
gg.clearResults()
end
end

function H()
gg.clearResults()
 gg.setRanges(gg.REGION_C_DATA)
 gg.searchNumber("-4,344,847,739,369,816,064;4,842,495,502,613,479,424;4,094,254,846,796,103,680;953,267,991:13", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("953,267,991", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(99)
 gg.editAll("1,140,457,472", gg.TYPE_QWORD)
 gg.clearResults()
end


function F()
gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber('2048D;4D;1F;1F;1D:30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    gg.clearResults()
 gg.setRanges(gg.REGION_C_DATA)
 gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(99)
 gg.editAll("0", gg.TYPE_DWORD)
 gg.clearResults()
   else
   gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('10000~100000;0.1;1.4012985e-45::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('10000~100000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll('900000', gg.TYPE_FLOAT)
gg.clearResults()
  end
end

function J()
gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber('2048D;4D;1F;1F;1D:30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    gg.alert("-ɢᴀᴍᴇ ᴏɴʟʏ🌳\nتفعيل بالقيم")
   else
   gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2~4;1.09375;1;18;3.5::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2~4;1.09375::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2~4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("-0.5", gg.TYPE_FLOAT)
gg.clearResults()
  end
end



function I()
SP = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ 🖤","⟬ sᴘᴇᴇᴅ ᴠ¹ 🍏⟭","⟬ sᴘᴇᴇᴅ ᴠ² 🍎⟭","⟬ sᴘᴇᴇᴅ+ 🏍⟭")
if SP == nil then
  else
    if SP == 1 then
      SV1()
    end
    if SP == 2 then
      SV2()
    end
    if SP == 3 then
      N()
    end
  end
  iBug = -1
end

function SV1()
SPE = gg.alert("ᴅᴏɴᴛ ɴᴇᴇᴅ ғɪx ᴅᴍɢ ʟᴀɢ ɪɴ 3000ᴍ⬇️","⟬ sᴘᴇᴇᴅ ᴏɴ⭕⟭","⟬ sᴘᴇᴇᴅ ᴏғғ❌⟭")
if SPE == nil then
  else
    if SPE == 1 then
      SPN()
    end
    if SPE == 2 then
      SPF()
    end
  end
  iBug = -1
end

function SV2()
SPEED = gg.alert("ᴘʟᴢ sᴇᴛ ɢʀᴀᴘʜɪᴄs ᴏɴ sᴍᴏᴛʜ💃","⟬ sᴘᴇᴇᴅ ᴏɴ⭕⟭","⟬ sᴘᴇᴇᴅ ᴏғғ❌⟭","⟬ ғɪx ᴅᴀᴍᴀɢᴇᵃʳ🧛‍♂️⟭")
if SPEED == nil then
  else
    if SPEED == 1 then
      SON()
    end
    if SPEED == 2 then
      SOF()
    end
    if SPEED == 3 then
      AR()
    end
  end
  iBug = -1
end


function II()
NO = gg.alert("اختار النوع 🖤","⟬ فلاش ᴠ¹ 🍏 ⟭", "⟬ فلاشᴠ² 🍎 ⟭","⟬ سبيد+🔪 ⟭")
if NO == nil then
  else
    if NO == 1 then
      SV11()
    end
    if NO == 2 then
      SV22()
    end
    if NO == 3 then
      N()
    end
    end
  iBug = -1
end


function SV11()
SPEE = gg.alert("لا تحتاج فكس دمج لاق بعد 3000m⬇️","⟬ تشغيل⭕⟭","⟬ ايقاف❌⟭")
if SPEE == nil then
  else
    if SPEE == 1 then
      SPN()
    end
    if SPEE == 2 then
      SPF()
    end
  end
  iBug = -1
end


function SV22()
SPED = gg.alert("حط اكرافك سلس💃","⟬ تشغيل⭕⟭","⟬ ايقاف❌⟭","⟬ تصليح دمجᵃʳ🧛‍♂️⟭")
if SPED == nil then
  else
    if SPED == 1 then
      SON()
    end
    if SPED == 2 then
      SOF()
    end
    if SPED == 3 then
      AR()
    end
  end
  iBug = -1
end

function SON()
   gg.clearResults()
 gg.setRanges(gg.REGION_C_DATA)
 gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(99)
 gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
 gg.clearResults()
 gg.setRanges(gg.REGION_C_DATA)
 gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(99)
 gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
 gg.clearResults()
end

function SOF()
   gg.clearResults()
 gg.setRanges(gg.REGION_C_DATA)
 gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(99)
 gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
 gg.setRanges(gg.REGION_C_DATA)
 gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(99)
 gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
 gg.clearResults()
end

function SPN()
   gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.0530367e28;-5.8454586e27;-2.7860151e28;-3.7444097e28;-2.793752e28::', 16)
gg.refineNumber('-2.7860151e28;-3.7444097e28;-2.793752e28::', 16)
gg.getResults(3)
gg.editAll('0', 16)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
gg.clearResults()
gg.searchNumber('-6.1526231e27;-1.0070975e28::', 16)
gg.refineNumber('-6.1526231e27', 16)
gg.getResults(1)
gg.editAll('0', 16)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
end

function SPF()
   gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.0530367e28;-5.8454586e27;0;0;0::', 16)
gg.refineNumber('0', 16)
gg.getResults(9)
gg.editAll('-2.7860151e28;-3.7444097e28;-2.793752e28', 16)
gg.clearResults()
end

function AR()
   gg.clearResults()
gg.setRanges(32) gg.searchNumber("50000~100000;0;1;5D~100D::13", 16, false, 536870912, 0, -1)
    if gg.getResultCount() == 0 then
    else
      gg.searchNumber("50000~100000", 16, false, 536870912, 0, -1)
      RFSSMG1 = gg.getResults(210)
      gg.editAll("32465", 16)
      gg.clearResults()
      end
  end


function K()
NO = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ 🖤","⟬ sᴅ 🍭⟭", "⟬ ᴏᴛʜᴇʀs 🧁⟭")
if NO == nil then
  else
    if NO == 1 then
      SNAPDRAGON()
    end
    if NO == 2 then
      CHIPSET()
    end
    end
  iBug = -1
end

function KK()
NO = gg.alert("اختار نوع 🖤","⟬ سناب 🍭⟭", "⟬ اخرى 🧁⟭")
if NO == nil then
  else
    if NO == 1 then
      SNAPDRAGON()
    end
    if NO == 2 then
      CHIPSET()
    end
    end
  iBug = -1
end


function N()
   gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1D;4D;0D;1065353216D;1065353216D;1065353216D;1065353216D;1065353216D;1065353216D;1;1065353216D;1065353216D;1065353216D;1065353216D::53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("1.27699995041", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
end

function O()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII2.IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII29IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII58IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII87IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII4e-4IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII1;16IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII384IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIID;16IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII384IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIID;1IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII638IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII4D;16IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII38IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII4D;16IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII384IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIID::24", 16, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII2.2IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII95IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII8IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII87IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII4e-4IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII1", 16, false, 536870912, 0, -1)--ST
gg.getResultsCount()
gg.getResults(1)
gg.addListItems({
  [1] = {
    address = 3178624256,
    flags = 4,
    freeze = true,
    value = 70037
  }
})
gg.addListItems({
  [1] = {
    address = 3178624260,
    flags = 4,
    freeze = true,
    value = 70037
  }
})
gg.addListItems({
  [1] = {
    address = 3178624264,
    flags = 4,
    freeze = true,
    value = 70037
  }
})
gg.addListItems({
  [1] = {
    address = 3178624268,
    flags = 4,
    freeze = true,
    value = 70037
  }
})
gg.addListItems({
  [1] = {
    address = 3178624272,
    flags = 4,
    freeze = true,
    value = 70037
  }
})
gg.addListItems({
  [1] = {
    address = 3178624276,
    flags = 4,
    freeze = true,
    value = 70032
  }
})
gg.addListItems({
  [1] = {
    address = 3178624356,
    flags = 4,
    freeze = true,
    value = 16384
  }
})
gg.alert("  [ • Bypass PUBG MOBILE 17.0 • ] \n  [ • New Value Code • ] \n  [ • Fix Force Close • ] \n \n  [ • Creator Belut Papji • ] \n  [ • Share With Credit • ]")
end


function SNAPDRAGON()
  WALL11 = gg.multiChoice({
    "🦁 ᴀʟʟ ᴅᴇᴠɪᴄᴇ ᴠ1",
    "🦁 ᴀʟʟ ᴅᴇᴠɪᴄᴇ ᴠ2",
    "🦁 ᴀʟʟ sɴᴀᴘᴅʀᴀɢᴏɴ",
    "🦁 ғɪx ʙʟɪɴᴋ",
    "🦁 ғɪx sᴄᴏᴘᴇ",
    "🦁 sᴅ 400",
    "🦁 sᴅ 410",
    "🦁 sᴅ 415",
    "🦁 sᴅ 425",
    "🦁 sᴅ 430",
    "🦁 sᴅ 435",
    "🦁 sᴅ 439",
    "🦁 sᴅ 450",
    "🦁 sᴅ 600",
    "🦁 sᴅ 610",
    "🦁 sᴅ 615",
    "🦁 sᴅ 616",
    "🦁 sᴅ 625",
    "🦁 sᴅ 626",
    "🦁 sᴅ 630",
    "🦁 sᴅ 632",
    "🦁 sᴅ 636",
    "🦁 sᴅ 650",
    "🦁 sᴅ 652",
    "🦁 sᴅ 653",
    "🦁 sᴅ 660",
    "🦁 sᴅ 665",
    "🦁 sᴅ 670",
    "🦁 sᴅ 675",
    "🦁 sᴅ 710",
    "🦁 sᴅ 712",
    "🦁 sᴅ 800",
    "🦁 sᴅ 801",
    "🦁 sᴅ 805",
    "🦁 sᴅ 808",
    "🦁 sᴅ 810",
    "🦁 sᴅ 815",
    "🦁 sᴅ 820",
    "🦁 sᴅ 821",
    "🦁 sᴅ 835",
    "🦁 sᴅ 845",
    "🦁 sᴅ 855",
    "🦁 sᴅ 855+ᴀ70",
    "🦁 sᴅ 855+sᴅ 845+sᴅ 710",
    "↶ ᴇxɪᴛ"
  }, nil, "@pubgvipnet")
  if WALL11 == nil then
  else
    if WALL11[1] == true then
      wh1()
    end
    if WALL11[2] == true then
      wh2()
    end
    if WALL11[3] == true then
      wh3()
    end
    if WALL11[4] == true then
      wh4()
    end
    if WALL11[5] == true then
      wh5()
    end
    if WALL11[6] == true then
      wh6()
    end
    if WALL11[7] == true then
      wh7()
    end
    if WALL11[8] == true then
      wh8()
    end
    if WALL11[9] == true then
      wh9()
    end
    if WALL11[10] == true then
      wh10()
    end
    if WALL11[11] == true then
      wh11()
    end
    if WALL11[12] == true then
      wh12()
    end
    if WALL11[13] == true then
      wh13()
    end
    if WALL11[14] == true then
      wh14()
    end
    if WALL11[15] == true then
      wh15()
    end
    if WALL11[16] == true then
      wh16()
    end
    if WALL11[17] == true then
      wh17()
    end
    if WALL11[18] == true then
      wh18()
    end
    if WALL11[19] == true then
      wh19()
    end
    if WALL11[20] == true then
      wh20()
    end
    if WALL11[21] == true then
      wh21()
    end
    if WALL11[22] == true then
      wh22()
    end
    if WALL11[23] == true then
      wh23()
    end
    if WALL11[24] == true then
      wh24()
    end
    if WALL11[25] == true then
      wh25()
    end
    if WALL11[26] == true then
      wh26()
    end
    if WALL11[27] == true then
      wh27()
    end
    if WALL11[28] == true then
      wh28()
    end
    if WALL11[29] == true then
      wh29()
    end
    if WALL11[30] == true then
      wh30()
    end
    if WALL11[31] == true then
      wh31()
    end
    if WALL11[32] == true then
      wh32()
    end
    if WALL11[33] == true then
      wh33()
    end
    if WALL11[34] == true then
      wh34()
    end
    if WALL11[35] == true then
      wh35()
    end
    if WALL11[36] == true then
      wh36()
    end
    if WALL11[37] == true then
      wh37()
    end
    if WALL11[38] == true then
      wh38()
    end
    if WALL11[39] == true then
      wh39()
    end
    if WALL11[40] == true then
      wh40()
    end
    if WALL11[41] == true then
      wh41()
    end
    if WALL11[42] == true then
      wh42()
    end
    if WALL11[43] == true then
      wh43()
    end
    if WALL11[44] == true then
      wh44()
    end
    if WALL11[45] == true then
      HOME()
    end
  end
  PUBGMH = -1
end
function wh1()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end

function wh2()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh3()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.6447121e21;-8.3252823e-40;4.9252852e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-8.3252823e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6444", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4.9068373e21;-3.5875931e-39;4.8699618e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-3.5875931e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6444", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.0544113e21;-3.4039221e-39;4.8699607e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-3.4039221e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6444", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.6447206e21;-1.0161992e-39;4.9068396e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.0161992e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6444", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4.7223665e21;-8.3246237e-40;4.8330515e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-8.3246237e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6444", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4.7408149e21;-5.5695588e-40;4.814603e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-5.5695588e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("6444", gg.TYPE_FLOAT)
end
function wh4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4140D;1.1202011e-19~1.1202013e-19;1.1202015e-19~1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh5()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("2.001", gg.TYPE_FLOAT)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("2.001", gg.TYPE_FLOAT)
end
function wh6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_VIDEO)
  gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,073,741,824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("1,123,024,896", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_VIDEO)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh7()
  gg.clearResults()
  gg.setRanges(1)
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("3.1949605e-43;3.1809475e-43;2.0;3.2089735e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("8204;8205;1,194,344,451", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("1,669,693,440;8205", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8205", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("8204", gg.TYPE_DWORD)
  gg.clearResults()
end
function wh8()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP | gg.REGION_VIDEO)
  gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,073,741,824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("1,123,024,896", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP | gg.REGION_VIDEO)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh9()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_VIDEO)
  gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh10()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4,141D;4.7408155e21;-5.5693206e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh11()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh12()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh13()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh14()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh15()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh16()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP | gg.REGION_VIDEO)
  gg.searchNumber("3.2229865e-43;2.0;-1.0;-1.0;2.0:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("122", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP | gg.REGION_VIDEO)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh17()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh18()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("2", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.POINTER_WRITABLE)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("2", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.POINTER_WRITABLE)
  gg.clearResults()
end
function wh19()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh20()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504")
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("900")
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh21()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504")
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("900")
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh22()
  gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
end
function wh23()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh24()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh25()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh26()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh27()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.0F;1.66231134e-19F;0.0F;9.21942286e-41F;7.23035964e-15F;2.37549734116F;4.40284136e-29F;2.25000905991F;3.58159416e-39F;1.66433004e10F::37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200")
  gg.getResults(25)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.0F;-1.0F;0.0F;1.0F;-127.0F;0.24022650719F;0.69314718246F;0.00999999978F;-0.0F;0.0F::37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("930")
  gg.getResults(25)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("A8C")
  gg.getResults(25)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("B10")
  gg.getResults(25)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("588")
  gg.getResults(25)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh28()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("6.03209094e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6281913639784)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-2.57741948e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6281913639784)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh29()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200")
  gg.getResults(999)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("930")
  gg.getResults(999)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh30()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("6.03209094e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6281913639784)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("-2.57741948e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6281913639784)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh31()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("95D;2;9.2194229e-41::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh32()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh33()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_VIDEO)
  gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43:73", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43;4.34402524e-44;2.0;4.62428493e-44;4.76441478e-44:241", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("120", gg.TYPE_FLOAT)
end
function wh34()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh35()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh36()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh37()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh38()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh39()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh40()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("7.1746481e-43;1.0842022e-19;94.015625;7.0776718e-15;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("9999", gg.TYPE_FLOAT)
end
function wh41()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("95D;2;9.2194229e-41::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.201992e21;2.25000452995;2;1.6623054e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wh42()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
  gg.searchNumber("95D;2;9.2194229e-41::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
  gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end

function wh43()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2;541,343,815D;65,792D;671,236,134D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2;3.7615819e-37;-1.7632462e-38;4.5917748e-41;-1.763246e-38;4.5920551e-41;-1.7632459e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2;3.7615819e-37;1.1202056e-19;3.9236357e-44;1.3912567e-19;2.8866748e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4140D;1.1202011e-19~1.1202013e-19;1.1202015e-19~1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
end

function wh44()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-2 145 644 340", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-2 147 483 636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4F8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
end


function CHIPSET()
  WALL22 = gg.multiChoice({
    "🐸 ᴀʟʟ ᴅᴇᴠɪᴄᴇ",
    "🐸 ғɪx ʙʟɪɴᴋ",
    "🐸 ғɪx sᴄᴏᴘᴇ",
    "🐸 ᴇxʏɴᴏs 7420",
    "🐸 ᴇxʏɴᴏs 7570",
    "🐸 ᴇxʏɴᴏs 7870",
    "🐸 ᴇxʏɴᴏs 7880",
    "🐸 ᴇxʏɴᴏs 7885",
    "🐸 ᴇxʏɴᴏs 8890",
    "🐸 ᴇxʏɴᴏs 8895",
    "🐸 ᴇxʏɴᴏs 9610",
    "🐸 ᴇxʏɴᴏs 9810",
    "🐸 ʜᴜᴀᴡᴇɪ",
    "🐸 ᴋɪʀɪɴ 650",
    "🐸 ᴋɪʀɪɴ 655",
    "🐸 ᴋɪʀɪɴ 658",
    "🐸 ᴋɪʀɪɴ 659",
    "🐸 ᴋɪʀɪɴ 710",
    "🐸 ᴋɪʀɪɴ 955",
    "🐸 ᴋɪʀɪɴ 970",
    "🐸 ᴋɪʀɪɴ 980",
    "🐸 ᴍᴇᴅɪᴀᴛᴇᴋ 6750",
    "🐸 ᴍᴇᴅɪᴀᴛᴇᴋ 6765",
    "🐸 ᴍᴇᴅɪᴀᴛᴇᴋ ɢ90ᴛ",
    "↶ ᴇxɪᴛ",
 }, nil, "🔱 spartacus t@pubgvipnet")
  if WALL22 == nil then
  else
    if WALL22[1] == true then
      wc1()
    end
    if WALL22[2] == true then
      wc2()
    end
    if WALL22[3] == true then
      wc3()
    end
    if WALL22[4] == true then
      wc4()
    end
    if WALL22[5] == true then
      wc5()
    end
    if WALL22[6] == true then
      wc6()
    end
    if WALL22[7] == true then
      wc7()
    end
    if WALL22[8] == true then
      wc8()
    end
    if WALL22[9] == true then
      wc9()
    end
    if WALL22[10] == true then
      wc10()
    end
    if WALL22[11] == true then
      wc11()
    end
    if WALL22[12] == true then
      wc12()
    end
    if WALL22[13] == true then
      wc13()
    end
    if WALL22[14] == true then
      wc14()
    end
    if WALL22[15] == true then
      wc15()
    end
    if WALL22[16] == true then
      wc16()
    end
    if WALL22[17] == true then
      wc17()
    end
    if WALL22[18] == true then
      wc18()
    end
    if WALL22[19] == true then
      wc19()
    end
    if WALL22[20] == true then
      wc20()
    end
    if WALL22[21] == true then
      wc21()
    end
    if WALL22[22] == true then
      wc22()
    end
    if WALL22[23] == true then
      wc23()
    end
    if WALL22[24] == true then
      wc24()
    end
    if WALL22[25] == true then
      HOME()
    end
  end
  PUBGMH = -1
end

function wc4()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("40;32;16;2::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.searchNumber("0.5;1.098618e-42;2.24207754e-44;2.69049305e-43;1.68155816e-44:645", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_4_, _FORV_5_ in ipairs(t) do
        if _FORV_5_.flags == gg.TYPE_FLOAT then
          _FORV_5_.value = "0"
          _FORV_5_.freeze = true
        end
      end
    end
  end
  gg.addListItems(t)
  t = nil
  gg.processResume()
end
  function wc1()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wc2()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4140D;1.1202011e-19~1.1202013e-19;1.1202015e-19~1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wc3()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("2.001", gg.TYPE_FLOAT)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("2.001", gg.TYPE_FLOAT)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wc5()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("360;0;0;0;-640;1;1;1;0;0;0;0;1;360;640;0.5;0;0;0;0.5;1;1;0;0;0;0;0;1;1;1;1;1,098618e-48:373", gg.TYPE_FLOAT)
  gg.searchNumber("0.5", gg.TYPE_FLOAT)
  t = gg.getResults(10)
  gg.editAll("50", gg.TYPE_FLOAT)
  t[1].value = "50"
  t[2].value = "50"
  t[3].value = "50"
  t[4].value = "50"
  t[5].value = "50"
  t[6].value = "50"
  t[1].freeze = true
  t[2].freeze = true
  t[3].freeze = true
  t[4].freeze = true
  t[5].freeze = true
  t[6].freeze = true
print("addListItems: ", gg.addListItems(t))
end
function wc6()
  gg.searchNumber("0.5;1.4012985e-45;1.4012985e-45;2.8025969e-45:77", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_FLOAT then
      _FORV_4_.value = "1"
      _FORV_4_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.processResume()
end
function wc7()
  if w == 1 then
    WHFIX7880()
  else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.5;2.8025969e-45;4D;2D;14D;5D;-1D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("0.5;2.8025969e-45;4D;2D;14D;5D;-1D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert("鉂嶸value Not Found")
    else
      gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      _Count = gg.getResultCount()
      _A = gg.getResults(_Count)
      last_Count = _Count + 1
      w = 1
      _T = "7880 "
      WHFIX7880()
    end
  end
end
function WHFIX7880()
  if w == 0 then
    gg.alert("Value Not Found")
  else
    gg.setVisible(false)
    _CL = {}
    for _FORV_3_ = 1, _Count do
      _CL[_FORV_3_] = "Edit" .. _FORV_3_ .. L0_14("�������������������������������������������")
    end
    _CL[last_Count] = "Return"
    _C_ = gg.choice(_CL, nil, "7880 ")
    for _FORV_3_ = 1, _Count do
      if _C_ == _FORV_3_ then
        for _FORV_7_, _FORV_8_ in ipairs(_A) do
          _A[_FORV_7_].freeze = false
          gg.addListItems(_A)
        end
        _A[_FORV_3_].value = 1
        _A[_FORV_3_].freeze = true
        gg.addListItems(_A)
        _FORV_3_ = _Count
      elseif K_2 == _Count + 1 then
        DDVGaming()
      end
    end
  end
  gg.setVisible(true)
end
function wc8()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("\"3162688022693019688Q;4915678994331860992Q:2293\"", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("\"4915678994331860992\"", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_QWORD then
      _FORV_4_.value = "\"4915678994340249600\""
      _FORV_4_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)))
end
function wc9()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("9.70070386e-38;4.59177481e-40;9.70070386e-38;3.13890856e-43;1.40129846e-45;2.80259693e-45;0.5:441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_FLOAT then
      _FORV_4_.value = "0"
      _FORV_4_.freeze = true
    end
  end
end
function wc10()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("40;32;16;2::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4,09179152e-43;2,24207754e-44;3,58732407e-43;1,12103877e-44;3,30706438e-43;2,24207754e-44;3,69942795e-43;4,09179152e-43;2,24207754e-44;3,58732407e-43;1,12103877e-44;1,79366203e-43;1,12103877e-44;0,5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  t[1].value = "2"
  t[2].value = "2"
  t[3].value = "2"
  t[4].value = "2"
  t[5].value = "2"
  t[6].value = "2"
  t[1].freeze = true
  t[2].freeze = true
  t[3].freeze = true
  t[4].freeze = true
  t[5].freeze = true
  t[6].freeze = true
print("addListItems: ", gg.addListItems(t))
  gg.clearResults()
  gg.searchNumber("573.70306396484;0.05499718333.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1200)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56; 64; 48: 35", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("58", gg.TYPE_DWORD)
end
function wc11()
gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.5;1.098618e-42;2.80259693e-45;1.40129846e-45;4.48415509e-44;2.80259693e-45;2.2958874e-41;7.00649232e-45::", gg.TYPE_FLOAT)
gg.searchNumber("0.5", gg.TYPE_FLOAT)
z = gg.getResults(9)
  x = gg.getResultCount()
  for _FORV_3_ = 1, x do
    y = z[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = y,
        flags = 16,
        freeze = true,
        value = 2
      }
    })
  end
end
function wc12()
  if w == 1 then
    WHFIX9810()
  else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.5;360.0;736.0;0.5;1.0;1.0;1.0;1.0:85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert("Value Not Found")
    else
      gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      _Count = gg.getResultCount()
      _A = gg.getResults(_Count)
      last_Count = _Count + 1
      w = 1
      _T = "Edit Wallhack Value"
      WHFIX9810()
    end
  end
end
function WHFIX9810()
  if w == 0 then
    gg.alert("Value Not Found")
  else
    gg.setVisible(false)
    _CL = {}
    for _FORV_3_ = 1, _Count do
      CL[_FORV_3_] = " Value   " .. _FORV_3 .. L0_14("�����������������������������")
    end
    _CL[last_Count] = "⬅️ [Back]"
    C = gg.choice(_CL, nil, "Wallhack Exynos 9810")
    for _FORV_3_ = 1, _Count do
      if C == _FORV_3_ then
        for _FORV_7_, _FORV_8_ in ipairs(_A) do
          _A[_FORV_7_].freeze = false
          gg.addListItems(_A)
        end
        _A[_FORV_3_].value = 0
        _A[_FORV_3_].freeze = true
        gg.addListItems(_A)
        _FORV_3_ = _Count
      elseif K_2 == _Count + 1 then
        WA()
      end
    end
  end
end
function wc13()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;1.1204989e-19;1.6815582e-44;1.5414283e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2;4.7408166e21;5.6896623e-29;4.7961574e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;4.8699472e21;2.718519e-43;1.3912525e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2;3.2363458e-17;7.3900417e-40;5.3249342e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(40)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2;4.9252829e21;2.718519e-43;1.3912552e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1;4.8699472e21;2.718519e-43;1.3912525e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1;4.9252829e21;2.718519e-43;1.3912552e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("120", gg.TYPE_FLOAT)
end
function wc14()
  gg.clearResults()
  gg.searchNumber("8.4077908e-45;4.2038954e-45;1.5694543e-43;1.4012985e-45;2.8025969e-45;268.0;480.0;0.5:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_FLOAT then
      _FORV_4_.value = "1"
      _FORV_4_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
end
function wc15()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("8.5077908e-45;4.2038954e-45;2.8025969e-45;0.5;0.5;2.8025969e-45;1.4012985e-45;7.0064923e-45:337", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_FLOAT then
      _FORV_4_.value = "6"
      _FORV_4_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.searchNumber("56;64;80;16;80:93", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_FLOAT then
      _FORV_4_.value = "7"
      _FORV_4_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)))
end
function wc16()
  gg.setRanges(gg.REGION_C_ALLOC)

gg.clearResults()
gg.searchNumber("-4327959240846082048Q;4865576448477364224Q;4575657222541279232Q:21", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("-4327959240846082048", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_QWORD then
		v.value = "-4327959240837693440"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end
function wc17()
  gg.searchNumber("0.5;1.4012985e-45;4.7083628e-43;2.8025969e-45;2.2958874e-41::109", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
end
function wc18()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.8367379e-40;4.5917748e-40;4.2038954e-45;1.4012985e-45;1.793662e-43;1.4012985e-45;2.8025969e-45;1.1210388e-44;0.5:281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
 if v.flags == gg.TYPE_FLOAT then
  v.value = "0"
  v.freeze = true
 end
end
gg.addListItems(t)
t = nil
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("25", gg.TYPE_DWORD)
end
function wc19()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4.2038954e-45;1.4012985e-45;1.5694543e-43;1.4012985e-45;2.8025969e-45;0.5:109", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(4)
  gg.editAll("1", gg.TYPE_FLOAT)
  var = gg.getResults(22)
  var[1].value = 1
  var[1].Freeze = false
  var[2].value = 1
  var[2].freeze = true
  var[3].value = 1
  var[3].Freeze = false
  var[4].value = 1
  var[4].freeze = true
  gg.addListItems(var)
  gg.clearResults()
end
function wc20()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("3.8530377e-34;1.4810267e-39;1.4012985e-45;4.2038954e-45;4.2038954e-45;7.0064923e-45;4.2038954e-45;1.4012985e-45;1.793662e-43;1.4012985e-45;2.8025969e-45;3.5873241e-43;1.1210388e-44;776.0;360.0;0.5:273", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.getResults(20)
end
function wc21()
  if w == 1 then
    WHFIX980()
  else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.5;360.0;360.0;752.0;752.0;1.0;1.0;1.0;1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert("Value Not Found")
    else
      gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      _Count = gg.getResultCount()
      _A = gg.getResults(_Count)
      last_Count = _Count + 1
      w = 1
      _T = "Edit Wallhack Value"
      WHFIX980()
    end
  end
end
function WHFIX980()
  if w == 0 then
    gg.alert("Value Not Found")
  else
    gg.setVisible(false)
    _CL = {}
    for _FORV_3_ = 1, _Count do
      _CL[_FORV_3_] = " Value   " .. _FORV_3_ .. L0_14("�����������������������������")
    end
    _CL[last_Count] = "BACK"
    _C_ = gg.choice(_CL, nil, "Wallhack Kirin 980")
    for _FORV_3_ = 1, _Count do
      if _C_ == _FORV_3_ then
        for _FORV_7_, _FORV_8_ in ipairs(_A) do
          _A[_FORV_7_].freeze = false
          gg.addListItems(_A)
        end
        _A[_FORV_3_].value = 0
        _A[_FORV_3_].freeze = true
        gg.addListItems(_A)
        _FORV_3_ = _Count
      elseif K_2 == _Count + 1 then
        WHK4()
      end
    end
  end
  gg.setVisible(true)
end
function wc22()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56D;1407374883684354Q;0.5F:573", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(13, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("54", gg.TYPE_DWORD)
  gg.processResume()
  gg.processResume()
  gg.searchNumber("54D;1407374883684354Q;0.5F:573", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(13, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.searchNumber("54D;1407374883684354Q;0.5F:573", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(13, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(13, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_FLOAT then
      _FORV_4_.value = "1"
      _FORV_4_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(13, nil, nil, nil, nil, nil, nil, nil, nil)))
end
function wc23()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131,074;1;1,131,413,504;1,137,967,104;1,056,964,608:225", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1,056,964,608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_DWORD then
      _FORV_4_.value = "1,066,364,609"
      _FORV_4_.freeze = true
      gg["1learResults"]()
    end
  end
end
function wc24()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("40;32;16;2::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.067767e-39;0.5::257", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.getResultsCount()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.251438e-39;0.5::273", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.getResultsCount()
  gg.clearResults()
  gg.searchNumber("573.70306396484;0.05499718333.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1200)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56; 64; 48: 35", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("58", gg.TYPE_DWORD)
end

function M()
NO = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ 🖤", "⟬ ᴡʜɪᴛᴇ ⚪⟭", "⟬ ʙʟᴀᴄᴋ ⚫⟭" )
if NO == nil then
  else
    if NO == 1 then
      CLSNAP()
    end
    if NO == 2 then
      CLCHIPSET()
    end
    end
  iBug = -1
end

function MM()
NO = gg.alert("اختار نوع 🖤","⟬ ابيض⚪ ⟭", "⟬ اسود⚫ ⟭")
if NO == nil then
  else
    if NO == 1 then
      CLSNAP()
    end
    if NO == 2 then
      CLCHIPSET()
    end
    end
  iBug = -1
end

function CLSNAP()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  end
  
function CLCHIPSET()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.clearResults()
  end
 ---ست سكوب ----
function ScopeHack()
gg.clearResults()
PUBGPROKILLER = gg.multiChoice({  
  '👙『 Lᴏᴡ Sɪᴛ Sᴄᴏᴘᴇ',
  '👙『 Sɪᴛ Sᴄᴏᴘᴇ Rɪɢʜᴛ',
  '👙『 Sɪᴛ Sᴄᴏᴘᴇ Lᴇғᴛ',
  '👙『 Sɪᴛ Sᴄᴏᴘᴇ Mᴜʟᴛɪ',
  '👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Fʀᴏɴᴛ',
  '👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Rɪɢʜᴛ',
  '👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Lᴇғᴛ',
  '👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Mᴜʟᴛɪ',
  '👙『 Dᴏᴡɴ Pʀᴏɴᴇ Sᴄᴏᴘᴇ',
  '  👙『 Oғғ Fᴜɴᴄᴛɪᴏɴ 』•⪼—',
  '═════⪼『 Exɪᴛ 』⪻═════'},
nil,'◆سبارتكوس◆') 
if PUBGPROKILLER == nil then gg.toast('\n👙『 Cᴀɴᴄᴇʟᴇᴅ 』•⪼—')
else 
if PUBGPROKILLER[1] == true then XNotSitLowX() end 
if PUBGPROKILLER[2] == true then XNotSitRightX() end 
if PUBGPROKILLER[3] == true then XNotSitLeftX() end 
if PUBGPROKILLER[4] == true then XNotSitMultiX() end 
if PUBGPROKILLER[5] == true then XNotStandFrontX() end 
if PUBGPROKILLER[6] == true then XNotStandRightX() end 
if PUBGPROKILLER[7] == true then XNotStandLeftX() end 
if PUBGPROKILLER[8] == true then XNotStandMultiX() end 
if PUBGPROKILLER[9] == true then XNotProneDownX() end 
if PUBGPROKILLER[10] == true then XOffScopeHackX() end 
if PUBGPROKILLER[11] == true then XNotExitX() end  
end 
PPK = -1
end

function XNotSitLowX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('-4767057191653227520', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-4767057191653227520', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-4767057191653227520', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('-4767057191527907328', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n   👙『 Lᴏᴡ Sɪᴛ Sᴄᴏᴘᴇ 』•⪼—'))
end
function XNotSitRightX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4548109841269983040', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109841269983040', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109841269983040', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4548109841324179456', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n 👙『 Sɪᴛ Sᴄᴏᴘᴇ Rɪɢʜᴛ 』•⪼—'))
end
function XNotSitLeftX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4548109841269983040', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109841269983040', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109841269983040', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4548109839176695808', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n   👙『 Sɪᴛ Sᴄᴏᴘᴇ Lᴇғᴛ 』•⪼—'))
end
function XNotSitMultiX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('-4586063823029802968', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-4586063823029802968', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-4586063823029802968', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('-4586063820806029312', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n 👙『 Sɪᴛ Sᴄᴏᴘᴇ Mᴜʟᴛɪ 』•⪼—'))
end

function XNotStandFrontX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4848124999984742400', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Fʀᴏɴᴛ 』•⪼—'))
end
function XNotStandRightX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4548109952939150800', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109952939150800', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109952939150800', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4548109952993329152', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Rɪɢʜᴛ 』•⪼—'))
end
function XNotStandLeftX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4548109952939150800', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109952939150800', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109952939150800', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4548109950845845504', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Lᴇғᴛ 』•⪼—'))
end
function XNotStandMultiX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('-5368290752739409920', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-5368290752739409920', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-5368290752739409920', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('-5368290754691727360', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Mᴜʟᴛɪ 』•⪼—'))
end

function XNotProneDownX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4304066855334325713', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4304066855334325713', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4304066855334325713', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4304066855360921600', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n👙『 Dᴏᴡɴ Pʀᴏɴᴇ Sᴄᴏᴘᴇ 』•⪼—'))
end

function XOffScopeHackX()
gg.clearResults()
XOffMenu1X = gg.multiChoice({  
  '👙『 📴 Lᴏᴡ Sɪᴛ Sᴄᴏᴘᴇ',
  '👙『 📴 Sɪᴛ Sᴄᴏᴘᴇ Rɪɢʜᴛ',
  '👙『 📴 Sɪᴛ Sᴄᴏᴘᴇ Lᴇғᴛ',
  '👙『 📴 Sɪᴛ Sᴄᴏᴘᴇ Mᴜʟᴛɪ',
  '👙『 📴 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Fʀᴏɴᴛ',
  '👙『 📴 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Rɪɢʜᴛ',
  '👙『 📴 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Lᴇғᴛ',
  '👙『 📴 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Mᴜʟᴛɪ',
  '👙『 📴 Dᴏᴡɴ Pʀᴏɴᴇ Sᴄᴏᴘᴇ',
  '══════⪼『 Bᴀᴄᴋ 』⪻══════'},
nil,'◆سبارتكوس◆') 
if XOffMenu1X == nil then gg.toast('\n👙『 Cᴀɴᴄᴇʟᴇᴅ 』•⪼—')
else 
if XOffMenu1X[1] == true then XOffSitLowX() end 
if XOffMenu1X[2] == true then XOffSitRightX() end 
if XOffMenu1X[3] == true then XOffSitLeftX() end 
if XOffMenu1X[4] == true then XOffSitMultiX() end 
if XOffMenu1X[5] == true then XOffStandFrontX() end 
if XOffMenu1X[6] == true then XOffStandRightX() end 
if XOffMenu1X[7] == true then XOffStandLeftX() end 
if XOffMenu1X[8] == true then XOffStandMultiX() end 
if XOffMenu1X[9] == true then XOffProneDownX() end 
if XOffMenu1X[10] == true then ScopeHack() end   
end 
PPK = -1
end

function XOffSitLowX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('-4767057191527907328', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-4767057191527907328', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-4767057191527907328', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('-4767057191653227520', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n   👙『 Lᴏᴡ Sɪᴛ Sᴄᴏᴘᴇ 』•⪼—'))
end
function XOffSitRightX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4548109841324179456', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109841324179456', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109841324179456', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4548109841269983040', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n 👙『 Sɪᴛ Sᴄᴏᴘᴇ Rɪɢʜᴛ 』•⪼—'))
end
function XOffSitLeftX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4548109839176695808', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109839176695808', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109839176695808', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4548109841269983040', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n   👙『 Sɪᴛ Sᴄᴏᴘᴇ Lᴇғᴛ 』•⪼—'))
end
function XOffSitMultiX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('-4586063820806029312', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-4586063820806029312', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-4586063820806029312', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('-4586063823029802968', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n 👙『 Sɪᴛ Sᴄᴏᴘᴇ Mᴜʟᴛɪ 』•⪼—'))
end

function XOffStandFrontX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4138667321167981973', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Fʀᴏɴᴛ 』•⪼—'))
end
function XOffStandRightX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4548109952993329152', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109952993329152', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109952993329152', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4548109952939150800', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Rɪɢʜᴛ 』•⪼—'))
end
function XOffStandLeftX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4548109950845845504', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109950845845504', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4548109950845845504', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4548109952939150800', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Lᴇғᴛ 』•⪼—'))
end
function XOffStandMultiX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('-5368290754691727360', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-5368290754691727360', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('-5368290754691727360', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('-5368290752739409920', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n👙『 Sᴛᴀɴᴅ Sᴄᴏᴘᴇ Mᴜʟᴛɪ 』•⪼—'))
end

function XOffProneDownX()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4304066855360921600', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4304066855360921600', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4304066855360921600', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4304066855334325713', gg.TYPE_QWORD)
gg.clearResults()
gg.toast(os.date('\nTᴏᴅᴀʏ: %d/%m/%Y Tɪᴍᴇ: %H:%M:%S\n👙『 Dᴏᴡɴ Pʀᴏɴᴇ Sᴄᴏᴘᴇ 』•⪼—'))
end


function ex()
print("🤣see you")
os.exit()
end
while true do
  if gg.isVisible(true) then
    iBug = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if iBug == 1 and CMENU == 0 then
    CHOME()
  end
  if iBug == 1 and CMENU == 1 then
    HOME()
  end
  if iBug == 1 and CMENU == 2 then
    HOME2()
  end
end