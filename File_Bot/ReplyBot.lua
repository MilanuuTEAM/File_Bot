local function Reply(msg)
local text = msg.content.text.text
if text== "انجب" or text== "نجب" or text=="انجبي" or text=="نجبي" then
if msg.ControllerBot then  
return merolua.sendText(msg.chat_id,msg.id,"تامر امر سيادة المطور تاج راسي 😊")
elseif msg.TheBasicsQ then 
return merolua.sendText(msg.chat_id,msg.id,"انت المالك على راسي على راسسيي بصوت ابو علوش العراقي😂")
elseif msg.Originators then 
return merolua.sendText(msg.chat_id,msg.id,"حبيبي والله المنشئ بعد اخذلك راشدي فد مره 😒😂")
elseif msg.Managers then 
return merolua.sendText(msg.chat_id,msg.id,"اكلك شنو واذا مدير عود ؟ يله راح اسكت لخاطر البقية 🙂🙂")
elseif msg.Addictive then 
return merolua.sendText(msg.chat_id,msg.id,"فوك ممنطيك رتبةادمن هيج تجازيني ؟ انت انجب 😑")
else 
return merolua.sendText(msg.chat_id,msg.id,"انجب لك لا اشحتك 😒")
end 
end
if Redis:get(hawks..'replayallbot'..msg.chat_id) then
if text =="هلو" and Redis:get(hawks..'replayallbot'..msg.chat_id) then 
return merolua.sendText(msg.chat_id,msg.id,ns[math.random(#ns)])
end
if (text== "شلونكم" or text== "شلونك" or text== "شونك" or text== "شلونج" or text== "شلونكم") and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,sss[math.random(#sss)])
end
if (text==" باي" or text == "باي") and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,dr[math.random(#dr)])
end
if (text== "احبك" or text=="حبك") and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,lovm[math.random(#lovm)])
end
if text== "تحبني" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,lovm[math.random(#lovm)])
end
if text=="اطربنه" and Redis:get(hawks..'replayallbot'..msg.chat_id) then 
return merolua.sendText(msg.chat_id,msg.id,song[math.random(#song)])
end
if text== "تف" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"عليككك ادبسز 😒")
end
if text== "صاكه" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"ويننهههاااا دزلي حسابههااا 😍😍")
end
if text== "وينك" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"مشغول شتريد ؟")
end
if text== "منورين" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"حبيبي ماكو نور بدونك انت ♥️")
end
if text== "هاي" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"هايات شلونك ؟")
end
if text== "🙊" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"كيوت القرد الخجول هههه 😂♥️")
end
if text== "😢" or text== "😭😭" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"شبي الحلو زعلان ويبجي ؟ ☹️")
end
if text== "☹️☹️" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"منو وي حبيبي منو مزعله ؟؟")
end
if text== "منور" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"من بعدك ضلعي ♥️")
end
if text== "😒" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"شبيك حبي ؟ منو وياك ؟")
end
if text== "مح" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"اذووووب 🤤")
end
if text== "شكرا" or text== "ثكرا" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return  merolua.sendText(msg.chat_id,msg.id,"مو تدلل حبيبي ♥️")
end
if text== "انته وين" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"شعليك ؟")
end
if text== "😍" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"عاشك الاخو 😂")
end
if text== "اكرهك" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"ع اساس اني عايز عليك 🤨")
end
if text== "اريد اكبل" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"تعال نكبل سوه 😂♥️")
end
if text== "ضوجه" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"شي اكيد لان معندك حبيبه ")
end
if text== "حفلش" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"اذا انت كفو فلش")
end
if text== "نايمين" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"اني سهران احرسكم")
end
if text== "شكو" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"ماكو ، ليش تسال ؟")
end
if text== "كلخرا" or text== "اكل خره" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"لا تغلط حيوان")
end
if text== "جوعان"  and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"تعال اكلني بعد")
end
if text== "افلش"  and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"حتى ابلعك حظرررر")
end
if text== "شكو ماكو"  and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"غيرك بالكلب ماكووو ♥️️")
end
if text== "مرحبا"  and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"مرحبتين اهلا")
end
if text== "سلام" or text== "السلام عليكم" or text== "سلام عليكم" or text=="سلامن عليكم" or text=="السلامن عليكم" and Redis:get(hawks..'replayallbot'..msg.chat_id) then 
return merolua.sendText(msg.chat_id,msg.id,"عليكم السلام اهلا" )
end
if text== "عضه"  and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"عيب هههه" )
end
if text== "البوت واكف" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"لعد كدامك شنو ؟")
end
if text== "ضايج"  and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"ليش ضايج حب ؟.")
end
if text== "ضايجه"  and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"منو مضوجج عمري ؟")
end
if text== "تبادل"  and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"متشبعون من التبادل ؟")
end
if text== "دي"  or text== "ديي" and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"امشيك بيهااا")
end
if text== "هلا"  or text== "هلاو"  and Redis:get(hawks..'replayallbot'..msg.chat_id) then
return merolua.sendText(msg.chat_id,msg.id,"ههــلا ححبيـبي")
end
end
