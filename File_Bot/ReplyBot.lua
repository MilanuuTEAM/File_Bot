local function ReplyBot(msg)
local text = msg.content.text.text
if chat_type == 'sp' or chat_type == 'gp'  thenif text == "انجب" or text == "نجب" or text == "انجبي" or text == "نجبي" or text == "انجبو" or text == "نجبو" then
if msg.Developers then
rd = 'مطوريي اغلط شكد متريد نورتنه ، ♥️💪🏿'
elseif msg.DevelopersQ then
rd = 'احترم نفسكك لا عبالكك رافعيك مطور ، 🖕🏿♥️'
elseif msg.TheBasicsQ then
rd = 'تاج راسيي غير انت منشئ المجموعه ،🖐🏿♥️'
elseif msg.TheBasics then
rd = 'تاج راسيي انت المنشئ الاساسي ،🖐🏿♥️'
elseif msg.Originators then
rd = 'حبيبي المنشئ استقبلها منكك ،👍🏿♥️'
elseif msg.Managers then
rd = 'حبيبي راح اسامحكك لان مدير وع راسي ، 🖐🏿♥️'
elseif msg.Addictive then
rd = 'راح اسامحكك هلمره لانك ادمن ، ☝🏿♥️'
elseif msg.Distinguished then
rd = 'راح احترمكك تره بس هلمره لانك مميز عندي ، ☝🏿♥️'
else
rd = 'لكك هوه انت عضو وجاي تغلط ؟، 🖕🏿♥️'
end
return merolua.sendText(msg_chat_id,msg_id, rd, 'html',true)
end
if text == 'دي' or text == 'ديي' or text == 'دي بابه' then 
hawks =  "آخلُِآقٌڪڪ لُِڪڪ 𖠙 😒🔪"
merolua.sendText(msg_chat_id,msg_id,hawks,"md",true)  
return false
end
if text == 'سلام' or text == 'سلام عليكم' or text == 'السلام عليكم' or text == 'سلامم عليكم' or text == 'السلامم عليكم' or text == 'سلامم' or text == 'السلام على من رد السلام' then
local hawks = {"و ؏ـليڪم ؏ـمࢪي 🤍","و ؏ـليڪم السلام ❤️‍🔥","و ؏ـليڪم حـَبـيبيَ ♥️","و ؏ـليڪم السلام يَابُةه 💖"," آطلـقْ سـلامَ 😔🍇","و ؏ـليڪم السلام و رحمه الله 🤍"}
merolua.sendText(msg_chat_id,msg_id,''..hawks[math.random(#hawks)]..'',"md",true)  
return false
end 
if text == '😭💔' or text == '😭😭' or text == '😭😭😭' or text == '😿💔' or text == '😭😭😭' or text == '😭😭😭😭' then 
hawks =  "مآآعٍآشُ آلُِي يزعٍلُِڪڪ 𖠙 😏♥️"
merolua.sendText(msg_chat_id,msg_id,hawks,"md",true)  
return false
end
if text == '🌚💔' or text == '💔🌚' or text == '🚶‍♂💔' or text == '💔' or text == '😔💔' or text == '🚶‍♀💔' or text == '😭' then 
hawks =  "شبّيي اﻟ̣̣פﻟ̣̣و 𖠙 😿💔"
merolua.sendText(msg_chat_id,msg_id,hawks,"md",true)  
return false
end
if text == 'باي' or text == 'بااي' or text == 'اروح' or text == 'اروح احسن' or text == 'اولي احسن' or text == 'راح اروح' or text == 'باي انام' then 
hawks =  "أُرٌجُعُ عٍيدِهآآ مٍوو تنِْسةه 𖠙 🤤♥️"
merolua.sendText(msg_chat_id,msg_id,hawks,"md",true)  
return false
end
if text == 'هلو' or text == 'هلا' or text == 'هلاو' or text == 'ههلا' or text == 'ههلاو' or text == 'هلاو' or text == 'هاي' or text == 'ههاي' then
local hawks = {"ۿهـلاٱ ؏ـمࢪي 🤍","هٓهَـلاٱ گ̲ـلبي❤️‍🔥","ۿـلاٱ حـَبـيبيَ ♥️","ڪل الۿـلاآ يَابُةه 💖"," آطلـق ۿهَـلآو ❤️‍🩹🧸","هُهَـلاٱ يـٰٰرﯞحـًٛيہ🙊💞","ۿـلاٱ بَلحـبَ ﻣﻣـَاُلتي 😔💖"}
hawks2 = math.random(#hawks) 
merolua.sendText(msg_chat_id,msg_id,hawks[hawks2],"md",true)  
return false
end
if text == 'شونك' or text == 'شونج' or text == 'شلونك' or text == 'شلونج' or text == 'شونكم' or text == 'شلونكم' or text == 'شلخبار' or text == 'شلون الاخبار' or text == 'شخبارك' then 
local hawks = {"ماﺷ͠ يةھَہّ يﻋ̝̚مريي ۅاﻧﺗ̲ت 𖠙 🤤♥️" ,"الحۡمۘدللهۂَ ٰوانۨہتت 𖠙 🤤♥️","تمۘامۘ عمۘري ٰوانۨہتت 𖠙 🤤♥️"} 
hawks2 = math.random(#hawks) 
merolua.sendText(msg_chat_id,msg_id,hawks[hawks2] ,"md",true)  
return false
end
if text == 'وينك' or text == 'وينج' then
hawks =  "مْوٌجہوٌدِ يہمْگُ يحلوُ 𖠙 😉♥️"
merolua.sendText(msg_chat_id,msg_id,hawks,"md",true)  
return false
end
if text == 'بوت عواي' or text == 'بوت زربه' or text == 'البوت عاوي' or text == 'البوت زربه' then
hawks =  "اطردكك تجرب ؟ ، 😕🔪"
merolua.sendText(msg_chat_id,msg_id,hawks,"md",true)  
return false
end
if text == 'نايمين' or text == 'ميتين' then
hawks =  "طُآمسين ووعٍيوونڪ 𖠙 😪🖤ۦ"
merolua.sendText(msg_chat_id,msg_id,hawks,"md",true)  
return false
end
if text == 'هلوباي' or text == 'هلو باي' then  
hawks =  "شحۡسۜيت مۘنۨہ هيجۚ ּكتبت ؟ 🌝♥️"
merolua.sendText(msg_chat_id,msg_id,hawks,"md",true)  
return false
end
if text == 'اكلك' or text == 'اكلج' or text == 'اكلكم' then 
hawks =  "ڪوولُِ مآڪوولُِ لُِآحٍدِ 𖠙 😉♥️"
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == 'فرخ' or text == 'فرخه' then
hawks =  "ٰوينۨہهۂَ خۡل احۡصرهۂَ 𖠙 😹♥️" 
merolua.sendText(msg_chat_id,msg_id,hawks,"md",true)  
return false
end
if text == 'سورس صوفي' or text == 'سورس ميلانو' or text == 'سورس ميلانو' or text == 'سورس زربه' or text == 'السورس زربه' or text == 'سورس عاوي' or text == 'السورس عاوي' then 
hawks =  "لُِآ سوورس خآلُِتڪ دِي لُِڪ 𖠙 😒🔪" 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == 'بوسني' or text == 'بوسيني' then 
hawks =  "-محِااﭑةه ، ݪسِقق  🥺♥️♥️؟." 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == "صباحوا" or text == "صباح الخير" or text == "صباحو" then
hawks =  "صَباحيّ ، ﭑنتةه🥺💞💞." 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == "اكو بوت" or text == "اكو بوت؟" or text == "عدكم بوت" or text == "عندكم بوت" or text == "عدكم بوت؟" or text == "عندكم بوت؟" or text == "تردون بوت" or text == "تردون بوت؟" or text == "وين البوت" or text == "وين البوت؟" then
hawks =  "-موَ بعَينڪۃ ، شنيَ ، 🌝🌝." 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == "جاو" or text == "ججاو" then
hawks =  "- ۅَتعۅفنيَ ؟." 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == "تف" or text == "تفف" then
hawks =  "چا غير مَي ، ۅࢪدَ ،" 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == "تحبني" or text == "تحبني؟" or text == "تحبني؟؟" then
hawks =  "شعندِيّ ، غيࢪكَ🥵♥️♥️♥️" 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == "جوعان" or text == "جوعانه" then
hawks =  "ټعاَل ﭑڪلنيَ ، 🌝." 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == "ههه" or text == "هههه" or text == "ههههه" or text == "هههههه" or text == "ههههههه" then
hawks =  "جَعل ، محدَ غيݛكَ ، يضحكَ  ، ♥️♥️" 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == "وينكم" then
hawks =  "حَيݪيٰ ، 🥺💞" 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == "احبك" or text == "حبك" then
hawks =  "ﭑنيۿمَ ، قسمَہ، 🥺💞" 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == "بوت ملطلط" then
hawks =  "ربي صبرني 😞🌾" 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
if text == 'وينك' or text == 'وينج' then
hawks =  "مْوٌجہوٌدِ يہمْگُ يحلوُ  😉♥️" 
merolua.sendText(msg_chat_id,msg_id,hawks, "md",true)  
return false
end
return {
hawks = Reply
}
