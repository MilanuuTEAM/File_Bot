function ReplyBot(msg)
if msg.content.voice_note then 
local File = json:decode(https.request('https://api.telegram.org/bot'..Token..'/getfile?file_id='..msg.content.voice_note.voice.remote.id))
local get = io.popen('curl -s "https://fastbotss.herokuapp.com/yt?vi=https://api.telegram.org/file/bot'..Token..'/'..File.result.file_path..'"'):read('*a')
local json = JSON.decode(get)
if json and json.text then
text = json.text
end
elseif msg.content.text then
text = msg.content.text.text
else 
text = nil
end


if text == 'الروليت' or text == 'روليت' then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
redis:del(bot_id..":Number_Add:"..msg.chat_id..msg.sender.user_id) 
redis:del(bot_id..':List_Rolet:'..msg.chat_id)  
redis:setex(bot_id..":Start_Rolet:"..msg.chat_id..msg.sender.user_id,3600,true)  
bot.sendText(msg.chat_id,msg.id,"*• ارسل عدد اللاعبين للروليت*","md",true)  
end

if text == "حروف" or text == "حرف" or text == "الحروف" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
local texting = {" جماد بحرف ↫ ر  ", 
" مدينة بحرف ↫ ع  ",
" حيوان ونبات بحرف ↫ خ  ", 
" اسم بحرف ↫ ح  ", 
" اسم ونبات بحرف ↫ م  ", 
" دولة عربية بحرف ↫ ق  ", 
" جماد بحرف ↫ ي  ", 
" نبات بحرف ↫ ج  ", 
" اسم بنت بحرف ↫ ع  ", 
" اسم ولد بحرف ↫ ع  ", 
" اسم بنت وولد بحرف ↫ ث  ", 
" جماد بحرف ↫ ج  ",
" حيوان بحرف ↫ ص  ",
" دولة بحرف ↫ س  ",
" نبات بحرف ↫ ج  ",
" مدينة بحرف ↫ ب  ",
" نبات بحرف ↫ ر  ",
" اسم بحرف ↫ ك  ",
" حيوان بحرف ↫ ظ  ",
" جماد بحرف ↫ ذ  ",
" مدينة بحرف ↫ و  ",
" اسم بحرف ↫ م  ",
" اسم بنت بحرف ↫ خ  ",
" اسم و نبات بحرف ↫ ر  ",
" نبات بحرف ↫ و  ",
" حيوان بحرف ↫ س  ",
" مدينة بحرف ↫ ك  ",
" اسم بنت بحرف ↫ ص  ",
" اسم ولد بحرف ↫ ق  ",
" نبات بحرف ↫ ز  ",
"  جماد بحرف ↫ ز  ",
"  مدينة بحرف ↫ ط  ",
"  جماد بحرف ↫ ن  ",
"  مدينة بحرف ↫ ف  ",
"  حيوان بحرف ↫ ض  ",
"  اسم بحرف ↫ ك  ",
"  نبات و حيوان و مدينة بحرف ↫ س  ", 
"  اسم بنت بحرف ↫ ج  ", 
"  مدينة بحرف ↫ ت  ", 
"  جماد بحرف ↫ ه  ", 
"  اسم بنت بحرف ↫ ر  ", 
" اسم ولد بحرف ↫ خ  ", 
" جماد بحرف ↫ ع  ",
" حيوان بحرف ↫ ح  ",
" نبات بحرف ↫ ف  ",
" اسم بنت بحرف ↫ غ  ",
" اسم ولد بحرف ↫ و  ",
" نبات بحرف ↫ ل  ",
"مدينة بحرف ↫ ع  ",
"دولة واسم بحرف ↫ ب  ",
} 
return bot.sendText(msg.chat_id,msg.id,texting[math.random(#texting)],'md')
end

if text == "سمايلات" or text == "سمايل" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
Random = {"🍏","🍎","🍐","??","🍋","🍉","??","🍓","🍈","🍒","🍑","🍍","🥥","🥝","🍅","🍆","🥑","🥦","🥒","🌶","🌽","🥕","🥔","🥖","🥐","🍞","🥨","🍟","??","🥚","🍳","🥓","🥩","🍗","🍖","🌭","🍔","🍠","🍕","🥪","🥙","☕️","🥤","🍶","🍺","🍻","🏀","⚽️","🏈","⚾️","🎾","🏐","🏉","🎱","🏓","🏸","🥅","🎰","🎮","🎳","🎯","🎲","🎻","🎸","🎺","🥁","🎹","🎼","🎧","🎤","🎬","🎨","🎭","🎪","🎟","🎫","🎗","🏵","🎖","🏆","🥌","🛷","🚗","🚌","🏎","🚓","🚑","🚚","🚛","🚜","⚔","🛡","🔮","🌡","💣","•","📍","📓","📗","📂","📅","📪","??","•","📭","⏰","??","🎚","☎️","📡"}
SM = Random[math.random(#Random)]
redis:set(bot_id.."Game:Smile"..msg.chat_id,SM)
return bot.sendText(msg.chat_id,msg.id,"• اسرع واحد يرسل هذا السمايل ? ~ (`"..SM.."`)","md",true)  
end

if text == "الاسرع" or text == "ترتيب" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
KlamSpeed = {"سحور","سياره","استقبال","قنفه","ايفون","بزونه","مطبخ","كرستيانو","دجاجه","مدرسه","الوان","غرفه","ثلاجه","كهوه","سفينه","العراق","محطه","طياره","رادار","منزل","مستشفى","كهرباء","تفاحه","اخطبوط","سلمون","فرنسا","برتقاله","تفاح","مطرقه","بتيته","لهانه","شباك","باص","سمكه","ذباب","تلفاز","حاسوب","انترنيت","ساحه","جسر"};
name = KlamSpeed[math.random(#KlamSpeed)]
redis:set(bot_id.."Game:Monotonous"..msg.chat_id,name)
name = string.gsub(name,"سحور","س ر و ح")
name = string.gsub(name,"سياره","ه ر س ي ا")
name = string.gsub(name,"استقبال","ل ب ا ت ق س ا")
name = string.gsub(name,"قنفه","ه ق ن ف")
name = string.gsub(name,"ايفون","و ن ف ا")
name = string.gsub(name,"بزونه","ز و ه ن")
name = string.gsub(name,"مطبخ","خ ب ط م")
name = string.gsub(name,"كرستيانو","س ت ا ن و ك ر ي")
name = string.gsub(name,"دجاجه","ج ج ا د ه")
name = string.gsub(name,"مدرسه","ه م د ر س")
name = string.gsub(name,"الوان","ن ا و ا ل")
name = string.gsub(name,"غرفه","غ ه ر ف")
name = string.gsub(name,"ثلاجه","ج ه ت ل ا")
name = string.gsub(name,"كهوه","ه ك ه و")
name = string.gsub(name,"سفينه","ه ن ف ي س")
name = string.gsub(name,"العراق","ق ع ا ل ر ا")
name = string.gsub(name,"محطه","ه ط م ح")
name = string.gsub(name,"طياره","ر ا ط ي ه")
name = string.gsub(name,"رادار","ر ا ر ا د")
name = string.gsub(name,"منزل","ن ز م ل")
name = string.gsub(name,"مستشفى","ى ش س ف ت م")
name = string.gsub(name,"كهرباء","ر ب ك ه ا ء")
name = string.gsub(name,"تفاحه","ح ه ا ت ف")
name = string.gsub(name,"اخطبوط","ط ب و ا خ ط")
name = string.gsub(name,"سلمون","ن م و ل س")
name = string.gsub(name,"فرنسا","ن ف ر س ا")
name = string.gsub(name,"برتقاله","ر ت ق ب ا ه ل")
name = string.gsub(name,"تفاح","ح ف ا ت")
name = string.gsub(name,"مطرقه","ه ط م ر ق")
name = string.gsub(name,"بتيته","ب ت ت ي ه")
name = string.gsub(name,"لهانه","ه ن ل ه ل")
name = string.gsub(name,"شباك","ب ش ا ك")
name = string.gsub(name,"باص","ص ا ب")
name = string.gsub(name,"سمكه","ك س م ه")
name = string.gsub(name,"ذباب","ب ا ب ذ")
name = string.gsub(name,"تلفاز","ت ف ل ز ا")
name = string.gsub(name,"حاسوب","س ا ح و ب")
name = string.gsub(name,"انترنيت","ا ت ن ر ن ي ت")
name = string.gsub(name,"ساحه","ح ا ه س")
name = string.gsub(name,"جسر","ر ج س")
return bot.sendText(msg.chat_id,msg.id,"• اسرع واحد يرتبها ~ ( "..name.." )","md",true)  
end
if text == "حزوره" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
Hzora = {"الجرس","عقرب الساعه","السمك","المطر","5","الكتاب","البسمار","7","الكعبه","بيت الشعر","لهانه","انا","امي","الابره","الساعه","22","غلط","كم الساعه","البيتنجان","البيض","المرايه","الضوء","الهواء","الضل","العمر","القلم","المشط","الحفره","البحر","الثلج","الاسفنج","الصوت","بلم"};
name = Hzora[math.random(#Hzora)]
redis:set(bot_id.."Game:Riddles"..msg.chat_id,name)
name = string.gsub(name,"الجرس","شيئ اذا لمسته صرخ ما هوه ؟")
name = string.gsub(name,"عقرب الساعه","اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟")
name = string.gsub(name,"السمك","ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟")
name = string.gsub(name,"المطر","شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟")
name = string.gsub(name,"5","ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ")
name = string.gsub(name,"الكتاب","ما الشيئ الذي له اوراق وليس له جذور ؟")
name = string.gsub(name,"البسمار","ما هو الشيئ الذي لا يمشي الا بالضرب ؟")
name = string.gsub(name,"7","عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ")
name = string.gsub(name,"الكعبه","ما هو الشيئ الموجود وسط مكة ؟")
name = string.gsub(name,"بيت الشعر","ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ")
name = string.gsub(name,"لهانه","وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ")
name = string.gsub(name,"انا","ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟")
name = string.gsub(name,"امي","اخت خالك وليست خالتك من تكون ؟ ")
name = string.gsub(name,"الابره","ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ")
name = string.gsub(name,"الساعه","ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟")
name = string.gsub(name,"22","كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ")
name = string.gsub(name,"غلط","ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ")
name = string.gsub(name,"كم الساعه","ما هو السؤال الذي تختلف اجابته دائما ؟")
name = string.gsub(name,"البيتنجان","جسم اسود وقلب ابيض وراس اخظر فما هو ؟")
name = string.gsub(name,"البيض","ماهو الشيئ الذي اسمه على لونه ؟")
name = string.gsub(name,"المرايه","ارى جميع الاوامرئ من دون عيون من اكون ؟ ")
name = string.gsub(name,"الضوء","ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟")
name = string.gsub(name,"الهواء","ما هو الشيئ الذي يسير امامك ولا تراه ؟")
name = string.gsub(name,"الضل","ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ")
name = string.gsub(name,"العمر","ما هو الشيء الذي كلما طال قصر ؟ ")
name = string.gsub(name,"القلم","ما هو الشيئ الذي يكتب ولا يقرأ ؟")
name = string.gsub(name,"المشط","له أسنان ولا يعض ما هو ؟ ")
name = string.gsub(name,"الحفره","ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟")
name = string.gsub(name,"البحر","ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟")
name = string.gsub(name,"الثلج","انا ابن الماء فان تركوني في الماء مت فمن انا ؟")
name = string.gsub(name,"الاسفنج","كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟")
name = string.gsub(name,"الصوت","اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟")
name = string.gsub(name,"بلم","حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ")
return bot.sendText(msg.chat_id,msg.id,"• اسرع واحد يحل الحزوره ↓\n {"..name.."}","md",true)  
end
if text == "معاني" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
redis:del(bot_id.."Set:Maany"..msg.chat_id)
Maany_Rand = {"قرد","دجاجه","بطريق","ضفدع","بومه","نحله","ديك","جمل","بقره","دولفين","تمساح","قرش","نمر","اخطبوط","سمكه","خفاش","اسد","فأر","ذئب","فراشه","عقرب","زرافه","قنفذ","تفاحه","باذنجان"}
name = Maany_Rand[math.random(#Maany_Rand)]
redis:set(bot_id.."Game:Meaningof"..msg.chat_id,name)
name = string.gsub(name,"قرد","🐒")
name = string.gsub(name,"دجاجه","🐔")
name = string.gsub(name,"بطريق","🐧")
name = string.gsub(name,"ضفدع","🐸")
name = string.gsub(name,"بومه","🦉")
name = string.gsub(name,"نحله","🐝")
name = string.gsub(name,"ديك","🐓")
name = string.gsub(name,"جمل","🐫")
name = string.gsub(name,"بقره","🐄")
name = string.gsub(name,"دولفين","🐬")
name = string.gsub(name,"تمساح","🐊")
name = string.gsub(name,"قرش","🦈")
name = string.gsub(name,"نمر","🐅")
name = string.gsub(name,"اخطبوط","🐙")
name = string.gsub(name,"سمكه","🐟")
name = string.gsub(name,"خفاش","🦇")
name = string.gsub(name,"اسد","🦁")
name = string.gsub(name,"فأر","🐭")
name = string.gsub(name,"ذئب","🐺")
name = string.gsub(name,"فراشه","🦋")
name = string.gsub(name,"عقرب","🦂")
name = string.gsub(name,"زرافه","🦒")
name = string.gsub(name,"قنفذ","🦔")
name = string.gsub(name,"تفاحه","??")
name = string.gsub(name,"باذنجان","🍆")
return bot.sendText(msg.chat_id,msg.id,"• اسرع واحد يرسل معنى السمايل ~ ("..name..")","md",true)  
end
---------------
if text == "حجره" or text == "حجرة" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
baniusernamep = '- اختار حجره / ورقة / مقص'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✂️', data = msg.sender.user_id..'/mks'},{text = '📄', data = msg.sender.user_id..'/orka'},{text = '🪨️', data = msg.sender.user_id..'/hagra'},
},
}
}
return bot.sendText(msg.chat_id,msg.id,baniusernamep,"md",false, false, false, false, reply_markup)

end
--------------
if text == "العكس" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
redis:del(bot_id.."Set:Aks"..msg.chat_id)
katu = {"باي","فهمت","موزين","اسمعك","احبك","موحلو","نضيف","حاره","ناصي","جوه","سريع","ونسه","طويل","سمين","ضعيف","شريف","شجاع","رحت","عدل","نشيط","شبعان","موعطشان","خوش ولد","اني","هادئ"}
name = katu[math.random(#katu)]
redis:set(bot_id.."Game:Reflection"..msg.chat_id,name)
name = string.gsub(name,"باي","هلو")
name = string.gsub(name,"فهمت","مافهمت")
name = string.gsub(name,"موزين","زين")
name = string.gsub(name,"اسمعك","ماسمعك")
name = string.gsub(name,"احبك","ماحبك")
name = string.gsub(name,"موحلو","حلو")
name = string.gsub(name,"نضيف","وصخ")
name = string.gsub(name,"حاره","بارده")
name = string.gsub(name,"ناصي","عالي")
name = string.gsub(name,"جوه","فوك")
name = string.gsub(name,"سريع","بطيء")
name = string.gsub(name,"ونسه","ضوجه")
name = string.gsub(name,"طويل","قزم")
name = string.gsub(name,"سمين","ضعيف")
name = string.gsub(name,"ضعيف","قوي")
name = string.gsub(name,"شريف","كواد")
name = string.gsub(name,"شجاع","جبان")
name = string.gsub(name,"رحت","اجيت")
name = string.gsub(name,"عدل","ميت")
name = string.gsub(name,"نشيط","كسول")
name = string.gsub(name,"شبعان","جوعان")
name = string.gsub(name,"موعطشان","عطشان")
name = string.gsub(name,"خوش ولد","موخوش ولد")
name = string.gsub(name,"اني","مطي")
name = string.gsub(name,"هادئ","عصبي")
return bot.sendText(msg.chat_id,msg.id,"• اسرع واحد يرسل عكس ("..name..")","md",true)  
end
if text == "بات" or text == "محيبس" then   
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '➀ » { 👊 }', data = '/Mahibes1'}, {text = '➁ » { 👊 }', data = '/Mahibes2'}, 
},
{
{text = '➂ » { 👊 }', data = '/Mahibes3'}, {text = '➃ » { 👊 }', data = '/Mahibes4'}, 
},
{
{text = '➄ » { 👊 }', data = '/Mahibes5'}, {text = '➅ » { 👊 }', data = '/Mahibes6'}, 
},
}
}
return bot.sendText(msg.chat_id,msg.id, [[*
 لعبه المحيبس هي لعبة الحظ 
• جرب حظك مع البوت 
• كل ما عليك هو الضغط على احدى العضمات في الازرار
*]],"md",false, false, false, false, reply_markup)
end
if text == "صراحه" or text == "صراحة" then
if not redis:get(bot_id.."trfeh"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الترفيه معطل من قبل المشرفين","md",true)
end
local texting = {
     'صراحه  |  صوتك حلوة؟',
     'صراحه  |  التقيت الناس مع وجوهين؟',
     'صراحه  |  أنت شخص ضعيف عندما؟',
     'صراحه  |  أشجع شيء حلو في حياتك؟',
     'صراحه  |  طريقة جيدة يقنع حتى لو كانت الفكرة خاطئة" توافق؟',
     'صراحه  |  كيف تتصرف مع من يسيئون فهمك ويأخذ على ذهنه ثم ينتظر أن يرفض؟',
     'صراحه  |  ‏‏إذا أحد قالك كلام سيء بالغالب وش تكون ردة فعلك؟',
     'صراحه  |  شخص معك بالحلوه والمُره؟',
     'صراحه  |  ‏هل تحب إظهار حبك وتعلقك بالشخص أم ترى ذلك ضعف؟',
     'صراحه  |  تأخذ بكلام اللي ينصحك ولا تسوي اللي تبي؟',
     'صراحه  |  وش تتمنى الناس تعرف عليك؟',
     'صراحه  |  ابيع المجرة عشان؟',
     'صراحه  |  أحيانا احس ان الناس ، كمل؟',
     'صراحه  |  مع مين ودك تنام اليوم؟',
     'صراحه  |  صدفة العمر الحلوة هي اني؟',
     'صراحه  |  الكُره العظيم دايم يجي بعد حُب قوي " تتفق؟',
     'صراحه  |  صفة تحبها في نفسك؟',
     'صراحه  |  ‏الفقر فقر العقول ليس الجيوب " ، تتفق؟',
     'صراحه  |  تصلي صلواتك الخمس كلها؟',
     'صراحه  |  ‏تجامل أحد على راحتك؟',
     'صراحه  |  اشجع شيء سويتة بحياتك؟',
     'صراحه  |  وش ناوي تسوي اليوم؟',
     'صراحه  |  وش شعورك لما تشوف المطر؟',
     'صراحه  |  غيرتك هاديه ولا تسوي مشاكل؟',
     'صراحه  |  ما اكثر شي ندمن عليه؟',
     'صراحه  |  اي الدول تتمنى ان تزورها؟',
     'صراحه  |  تقيم حظك ؟ من عشره؟',
      'صراحه  |  هل تعتقد ان حظك سيئ؟',
     'صراحه  |  شـخــص تتمنــي الإنتقــام منـــه؟',
     'صراحه  |  كلمة تود سماعها كل يوم؟',
     'صراحه  |  هل تُتقن عملك أم تشعر بالممل؟',
     'صراحه  |  هل قمت بانتحال أحد الشخصيات لتكذب على من حولك؟',
     'صراحه  |  متى آخر مرة قمت بعمل مُشكلة كبيرة وتسببت في خسائر؟',
     'صراحه  |  ما هو اسوأ خبر سمعته بحياتك؟',
     '‏صراحه | هل جرحت شخص تحبه من قبل ؟',
     'صراحه  |  ما هي العادة التي تُحب أن تبتعد عنها؟',
     '‏صراحه | هل تحب عائلتك ام تكرههم؟',
     '‏صراحه  |  من هو الشخص الذي يأتي في قلبك بعد الله – سبحانه وتعالى- ورسوله الكريم – صلى الله عليه وسلم؟',
     '‏صراحه  |  هل خجلت من نفسك من قبل؟',
     '‏صراحه  |  ما هو ا الحلم  الذي لم تستطيع ان تحققه؟',
     '‏صراحه  |  ما هو الشخص الذي تحلم به كل ليلة؟',
     '‏صراحه  |  هل تعرضت إلى موقف مُحرج جعلك تكره صاحبهُ؟',
      '‏صراحه  |  هل قمت بالبكاء أمام من تُحب؟',
     '‏صراحه  |  ماذا تختار حبيبك أم صديقك؟',
     '‏صراحه  | هل حياتك سعيدة أم حزينة؟',
     'صراحه  |  ما هي أجمل سنة عشتها بحياتك؟',
     '‏صراحه  |  ما هو عمرك الحقيقي؟',
     '‏صراحه  |  ما اكثر شي ندمن عليه؟',
     'صراحه  |  ما هي أمنياتك المُستقبلية؟‏',
     }
return bot.sendText(msg.chat_id,msg.id, texting[math.random(#texting)],'md', true)
end
if text == "خيرني" or text == "لو خيروك" or text == "لوخيروك" then 
if not redis:get(bot_id.."trfeh"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الترفيه معطل من قبل المشرفين","md",true)
end
local texting = {"لو خيروك |  بين الإبحار لمدة أسبوع كامل أو السفر على متن طائرة لـ 3 أيام متواصلة؟ ",
"لو خيروك |  بين شراء منزل صغير أو استئجار فيلا كبيرة بمبلغ معقول؟ ",
"لو خيروك |  أن تعيش قصة فيلم هل تختار الأكشن أو الكوميديا؟ ",
"لو خيروك |  بين تناول البيتزا وبين الايس كريم وذلك بشكل دائم؟ ",
"لو خيروك |  بين إمكانية تواجدك في الفضاء وبين إمكانية تواجدك في البحر؟ ",
"لو خيروك |  بين تغيير وظيفتك كل سنة أو البقاء بوظيفة واحدة طوال حياتك؟ ",
"لو خيروك |  أسئلة محرجة أسئلة صراحة ماذا ستختار؟ ",
"لو خيروك |  بين الذهاب إلى الماضي والعيش مع جدك أو بين الذهاب إلى المستقبل والعيش مع أحفادك؟ ",
"لو كنت شخص اخر هل تفضل البقاء معك أم أنك ستبتعد عن نفسك؟ ",
"لو خيروك |  بين الحصول على الأموال في عيد ميلادك أو على الهدايا؟ ",
"لو خيروك |  بين القفز بمظلة من طائرة أو الغوص في أعماق البحر؟ ",
"لو خيروك |  بين الاستماع إلى الأخبار الجيدة أولًا أو الاستماع إلى الأخبار السيئة أولًا؟ ",
    "لو خيروك بين العيش وحدك في جزيرة كبيرة منعزلة مع أكبر درجات الرفاهية وبين العيش في مكان قديم ولكن مع أصدقائك المقربين.",
    "لو خيروك بين فقدان ذاكرتك والعيش مع أصدقائك وأقربائك أو بقاء ذاكرتك ولكن العيش وحيد.",
    "للو خيروك بين تناول الخضار والفاكهة طوال حياتك أو تناول اللحوم.",
    "لو خيروك بين رؤية الأشباح فقط أو سماع صوتها فقط.",
    "لو خيروك بين القدرة على سماع أفكار الناس أو القدرة على العودة في الزمن للخلف.",
    "لو خيروك بين القدرة على الاختفاء أو القدرة على الطيران.",
    "لو خيروك بين أن تعيش 5 دقائق في الماضي أو أن تعيشها في المستقبل.",
    "لو خيروك بين 5 ملايين دينار أو 5 ملايين لحظة سعادة حقيقيةا.",
    "لو خيروك بين الاعتذار عن خطأ اقترفته أو أن يقدم لك شخص أخطأ في حقق اعتذار.",
    "لو خيروك بين الحقد أو المسامحة.",
    "لو خيروك بين إنقاذ نفسك أو إنقاذ شخص وقد يعرضك ذلك للأذى.",
    "لو خيروك بين أن تعيش في القرن الرابع عشر أو القرن الحالي.",
    "لو خيروك بين امتلاك سرعة الفهد أو دهاء الثعلب.",
    "لو خيروك بين أن تحصل على درجة كاملة في كامل اختباراتك القادمة والسابقة أو أن تسافر إلى بلد تحبه.",
    "لو خيروك بين العيش بجانب الجبال والحدائق والأشجار أو العيش بجانب البحر.",
    "لو خيروك بين تحقيق 3 أمنيات (لا تتعلق بأشخاص) أو اختيار 3 أشخاص للعيش معهم طوال حياتك.",
    "لو خيروك بين النوم في غابة مظلمة أو على ظهر سفينة في يوم عاصف.",
    "لو خيروك بين المال أو الجمال.",
    "لو خيروك بين المال أو الذكاء.",
    "لو خيروك بين المال أو الصحة.",
    "لو خيروك بين الجمال أو الذكاء.",
    "لو خيروك بين الذكاء أو الصحة.",
    "لو خيروك بين إرسال رسالة صوتية لأمك مدة دقيقة كاملة لا تحتوي إلا على صراخك وخوفك، أو كسر بيضة نيئة على رأسك.",
"لو خيروك |  بين أن تكون رئيس لشركة فاشلة أو أن تكون موظف في شركة ناجحة؟ ",
"لو خيروك |  بين أن يكون لديك جيران صاخبون أو أن يكون لديك جيران فضوليون؟ ",
"لو خيروك |  بين أن تكون شخص مشغول دائمًا أو أن تكون شخص يشعر بالملل دائمًا؟ ",
"لو خيروك |  بين قضاء يوم كامل مع الرياضي الذي تشجعه أو نجم السينما الذي تحبه؟ ",
"لو خيروك |  بين استمرار فصل الشتاء دائمًا أو بقاء فصل الصيف؟ ",
"لو خيروك |  بين العيش في القارة القطبية أو العيش في الصحراء؟ ",
"لو خيروك |  بين أن تكون لديك القدرة على حفظ كل ما تسمع أو تقوله وبين القدرة على حفظ كل ما تراه أمامك؟ ",
"لو خيروك |  بين أن يكون طولك 150 سنتي متر أو أن يكون 190 سنتي متر؟ ",
"لو خيروك |  بين إلغاء رحلتك تمامًا أو بقائها ولكن فقدان الأمتعة والأشياء الخاص بك خلالها؟ ",
"لو خيروك |  بين أن تكون اللاعب الأفضل في فريق كرة فاشل أو أن تكون لاعب عادي في فريق كرة ناجح؟ ",
"لو خيروك |  بين ارتداء ملابس البيت لمدة أسبوع كامل أو ارتداء البدلة الرسمية لنفس المدة؟ ",
"لو خيروك |  بين امتلاك أفضل وأجمل منزل ولكن في حي سيء أو امتلاك أسوأ منزل ولكن في حي جيد وجميل؟ ",
"لو خيروك |  بين أن تكون غني وتعيش قبل 500 سنة، أو أن تكون فقير وتعيش في عصرنا الحالي؟ ",
"لو خيروك |  بين ارتداء ملابس الغوص ليوم كامل والذهاب إلى العمل أو ارتداء ملابس جدك/جدتك؟ ",
"لو خيروك |  بين قص شعرك بشكل قصير جدًا أو صبغه باللون الوردي؟ ",
"لو خيروك |  بين أن تضع الكثير من الملح على كل الطعام بدون علم أحد، أو أن تقوم بتناول شطيرة معجون أسنان؟ ",
"لو خيروك |  بين قول الحقيقة والصراحة الكاملة مدة 24 ساعة أو الكذب بشكل كامل مدة 3 أيام؟ ",
"لو خيروك |  بين تناول الشوكولا التي تفضلها لكن مع إضافة رشة من الملح والقليل من عصير الليمون إليها أو تناول ليمونة كاملة كبيرة الحجم؟ ",
"لو خيروك |  بين وضع أحمر الشفاه على وجهك ما عدا شفتين أو وضع ماسكارا على شفتين فقط؟ ",
"لو خيروك |  بين الرقص على سطح منزلك أو الغناء على نافذتك؟ ",
"لو خيروك |  بين تلوين شعرك كل خصلة بلون وبين ارتداء ملابس غير متناسقة لمدة أسبوع؟ ",
"لو خيروك |  بين تناول مياه غازية مجمدة وبين تناولها ساخنة؟ ",
"لو خيروك |  بين تنظيف شعرك بسائل غسيل الأطباق وبين استخدام كريم الأساس لغسيل الأطباق؟ ",
"لو خيروك |  بين تزيين طبق السلطة بالبرتقال وبين إضافة البطاطا لطبق الفاكهة؟ ",
"لو خيروك |  بين اللعب مع الأطفال لمدة 7 ساعات أو الجلوس دون فعل أي شيء لمدة 24 ساعة؟ ",
"لو خيروك |  بين شرب كوب من الحليب أو شرب كوب من شراب عرق السوس؟ ",
"لو خيروك |  بين الشخص الذي تحبه وصديق الطفولة؟ ",
"لو خيروك |  بين أختك وأخيك؟ ",
"لو خيروك |  بين صديق قام بغدرك وعدوك؟ ",
"لو خيروك |  بين خسارة حبيبك/حبيبتك أو خسارة أخيك/أختك؟ ",
"لو خيروك |  بإنقاذ شخص واحد مع نفسك بين أمك أو ابنك؟ ",
"لو خيروك |  بين ابنك وابنتك؟ ",
"لو خيروك |  بين زوجتك وابنك/ابنتك؟ ",
"لو خيروك |  بين جدك أو جدتك؟ ",
"لو خيروك |  بين زميل ناجح وحده أو زميل يعمل كفريق؟ ",
"لو خيروك |  بين لاعب كرة قدم مشهور أو موسيقي مفضل بالنسبة لك؟ ",
"لو خيروك |  بين مصور فوتوغرافي جيد وبين مصور سيء ولكنه عبقري فوتوشوب؟ ",
"لو خيروك |  بين سائق سيارة يقودها ببطء وبين سائق يقودها بسرعة كبيرة؟ ",
"لو خيروك |  بين أستاذ اللغة العربية أو أستاذ الرياضيات؟ ",
"لو خيروك |  بين أخيك البعيد أو جارك القريب؟ ",
"لو خيروك |  يبن صديقك البعيد وبين زميلك القريب؟ ",
"لو خيروك |  بين رجل أعمال أو أمير؟ ",
"لو خيروك |  بين نجار أو حداد؟ ",
"لو خيروك |  بين طباخ أو خياط؟ ",
"لو خيروك |  بين أن تكون كل ملابس بمقاس واحد كبير الحجم أو أن تكون جميعها باللون الأصفر؟ ",
"لو خيروك |  بين أن تتكلم بالهمس فقط طوال الوقت أو أن تصرخ فقط طوال الوقت؟ ",
"لو خيروك |  بين أن تمتلك زر إيقاف موقت للوقت أو أن تمتلك أزرار للعودة والذهاب عبر الوقت؟ ",
"لو خيروك |  بين أن تعيش بدون موسيقى أبدًا أو أن تعيش بدون تلفاز أبدًا؟ ",
"لو خيروك |  بين أن تعرف متى سوف تموت أو أن تعرف كيف سوف تموت؟ ",
"لو خيروك |  بين العمل الذي تحلم به أو بين إيجاد شريك حياتك وحبك الحقيقي؟ ",
"لو خيروك |  بين معاركة دب أو بين مصارعة تمساح؟ ",
"لو خيروك |  بين إما الحصول على المال أو على المزيد من الوقت؟ ",
"لو خيروك |  بين امتلاك قدرة التحدث بكل لغات العالم أو التحدث إلى الحيوانات؟ ",
"لو خيروك |  بين أن تفوز في اليانصيب وبين أن تعيش مرة ثانية؟ ",
"لو خيروك |  بأن لا يحضر أحد إما لحفل زفافك أو إلى جنازتك؟ ",
"لو خيروك |  بين البقاء بدون هاتف لمدة شهر أو بدون إنترنت لمدة أسبوع؟ ",
"لو خيروك |  بين العمل لأيام أقل في الأسبوع مع زيادة ساعات العمل أو العمل لساعات أقل في اليوم مع أيام أكثر؟ ",
"لو خيروك |  بين التحدث عن جميع الاوامرء يدور في عقلك وبين عدم التحدث إطلاقًا؟ ",
"لو خيروك |  بين مشاهدة فيلم بمفردك أو الذهاب إلى مطعم وتناول العشاء بمفردك؟ ",
"لو خيروك |  بين قراءة رواية مميزة فقط أو مشاهدتها بشكل فيلم بدون القدرة على قراءتها؟ ",
"لو خيروك |  بين أن تكون الشخص الأكثر شعبية في العمل أو المدرسة وبين أن تكون الشخص الأكثر ذكاءً؟ ",
"لو خيروك |  بين إجراء المكالمات الهاتفية فقط أو إرسال الرسائل النصية فقط؟ ",
"لو خيروك |  بين إنهاء الحروب في العالم أو إنهاء الجوع في العالم؟ ",
"لو خيروك |  بين تغيير لون عينيك أو لون شعرك؟ ",
"لو خيروك |  بين امتلاك كل عين لون وبين امتلاك نمش على خديك؟ ",
"لو خيروك |  بين الخروج بالمكياج بشكل مستمر وبين الحصول على بشرة صحية ولكن لا يمكن لك تطبيق أي نوع من المكياج؟ ",
"لو خيروك |  بين أن تصبحي عارضة أزياء وبين ميك اب أرتيست؟ ",
"لو خيروك |  بين مشاهدة كرة القدم أو متابعة الأخبار؟ ",
"لو خيروك |  بين موت شخصية بطل الدراما التي تتابعينها أو أن يبقى ولكن يكون العمل الدرامي سيء جدًا؟ ",
"لو خيروك |  بين العيش في دراما قد سبق وشاهدتها ماذا تختارين بين الكوميديا والتاريخي؟ ",
"لو خيروك |  بين امتلاك القدرة على تغيير لون شعرك متى تريدين وبين الحصول على مكياج من قبل خبير تجميل وذلك بشكل يومي؟ ",
"لو خيروك |  بين نشر تفاصيل حياتك المالية وبين نشر تفاصيل حياتك العاطفية؟ ",
"لو خيروك |  بين البكاء والحزن وبين اكتساب الوزن؟ ",
"لو خيروك |  بين تنظيف الأطباق كل يوم وبين تحضير الطعام؟ ",
"لو خيروك |  بين أن تتعطل سيارتك في نصف الطريق أو ألا تتمكنين من ركنها بطريقة صحيحة؟ ",
"لو خيروك |  بين إعادة كل الحقائب التي تملكينها أو إعادة الأحذية الجميلة الخاصة بك؟ ",
"لو خيروك |  بين قتل حشرة أو متابعة فيلم رعب؟ ",
"لو خيروك |  بين امتلاك قطة أو كلب؟ ",
"لو خيروك |  بين الصداقة والحب ",
"لو خيروك |  بين تناول الشوكولا التي تحبين طوال حياتك ولكن لا يمكنك الاستماع إلى الموسيقى وبين الاستماع إلى الموسيقى ولكن لا يمكن لك تناول الشوكولا أبدًا؟ ",
"لو خيروك |  بين مشاركة المنزل مع عائلة من الفئران أو عائلة من الأشخاص المزعجين الفضوليين الذين يتدخلون في كل كبيرة وصغيرة؟ ",
} 
return bot.sendText(msg.chat_id,msg.id,texting[math.random(#texting)],'md')
end
if text == 'رياضيات' then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
xxx = {'9','46','2','9','5','4','25','10','17','15','39','5','16',};
name = xxx[math.random(#xxx)]
print(name)
redis:set(bot_id..'bkbk6'..msg.chat_id,name)
name = string.gsub(name,'9','7 + 2 = ?') name = string.gsub(name,'46','41 + 5 = ?')
name = string.gsub(name,'2','5 - 3 = ?') name = string.gsub(name,'9','5 + 2 + 2 = ?')
name = string.gsub(name,'5','8 - 3 = ?') name = string.gsub(name,'4','40 ÷ 10 = ?')
name = string.gsub(name,'25','30 - 5 = ?') name = string.gsub(name,'10','100 ÷ 10 = ?')
name = string.gsub(name,'17','10 + 5 + 2 = ?') name = string.gsub(name,'15','25 - 10 = ?')
name = string.gsub(name,'39','44 - 5 = ?') name = string.gsub(name,'5','12 + 1 - 8 = ?') name = string.gsub(name,'16','16 + 16 - 16 = ?')
bot.sendText(msg.chat_id,msg.id,'• اكمل المعادله \n - {'..name..'} .')  
end
if text == 'انكليزي' then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
yyy = {'معلومات','قنوات','قروبات','كتاب','تفاحه','سدني','نقود','اعلم','ذئب','تمساح','ذكي','شاطئ','غبي',};
name = yyy[math.random(#yyy)]
redis:set(bot_id..'bot:bkbk7'..msg.chat_id,name)
name = string.gsub(name,'ذئب','Wolf') name = string.gsub(name,'معلومات','Information')
name = string.gsub(name,'قنوات','Channels') name = string.gsub(name,'قروبات','Groups')
name = string.gsub(name,'كتاب','Book') name = string.gsub(name,'تفاحه','Apple')
name = string.gsub(name,'نقود','money') name = string.gsub(name,'اعلم','I know')
name = string.gsub(name,'تمساح','crocodile') name = string.gsub(name,'شاطئ','Beach')
name = string.gsub(name,'غبي','Stupid') name = string.gsub(name,'صداقه','Friendchip')
name = string.gsub(name,'ذكي','Smart') 
bot.sendText(msg.chat_id,msg.id,' • ما معنى كلمه {'..name..'} ، ')     
end
if text == 'تفكيك' then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
  katu = {'ا ح ب ك','ذ ئ ب','ب ع ي ر','ط ي ر','و ر د ه','ج م ي ل ','ح ل و','ب ط ر ي ق','ط م ا ط م','م و ز','س ي ا ر ة','ت ح ر ي ك','ف ل و س','ب و ت','ث ق ة','ح ل ز و ن','م ك ي ف','م ر و ح ه'
  };
  name = katu[math.random(#katu)]
  redis:set(bot_id..'Set_fkk'..msg.chat_id,name)
  name = string.gsub(name,'ا ح ب ك','احبك')
  name = string.gsub(name,'ا ك ر ه ك','اكرهك')
  name = string.gsub(name,'ذ ئ ب','ذئب')
  name = string.gsub(name,'ب ع ي ر','بعير')
  name = string.gsub(name,'ط ي ر','طير')
  name = string.gsub(name,'و ر د ه','ورده')
  name = string.gsub(name,'ج م ي ل','جميل')
  name = string.gsub(name,'ح ل و','حلو')
  name = string.gsub(name,'ب ط ر ي ق','بطريق')
  name = string.gsub(name,'ط م ا ط م','طماطم')
  name = string.gsub(name,'م و ز','موز')
  name = string.gsub(name,'س ي ا ر ة','سيارة')
  name = string.gsub(name,'ت ح ر ي ك','تحريك')
  name = string.gsub(name,'ف ل و س','فلوس')
  name = string.gsub(name,'ب و ت','بوت')
  name = string.gsub(name,'ث ق ة','ثقة')
  name = string.gsub(name,'ح ل ز و ن','حلزون')
  name = string.gsub(name,'م ك ي ف','مكيف')
  name = string.gsub(name,'م ر و ح ه','مروحه')
  return bot.sendText(msg.chat_id,msg.id,"• اسرع واحد يفكك ~ "..name.."","md",true)
  end
  if text == 'تركيب' then
  if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
  katu = {'احبك','ذئب','بعير','طير','ورده','جميل ','حلو','بطريق','طماطم','موز','سيارة','تحريك','فلوس','بوت','ثقة','حلزون','مكيف','مروحه'
  };
  name = katu[math.random(#katu)]
  redis:set(bot_id..'Set_trkib'..msg.chat_id,name)
  name = string.gsub(name,'احبك','ا ح ب ك')
  name = string.gsub(name,'ذئب','ذ ئ ب')
  name = string.gsub(name,'بعير','ب ع ي ر')
  name = string.gsub(name,'طير','ط ي ر')
  name = string.gsub(name,'ورده','و ر د ه')
  name = string.gsub(name,'جميل','ج م ي ل')
  name = string.gsub(name,'حلو','ح ل و')
  name = string.gsub(name,'بطريق','ب ط ر ي ق')
  name = string.gsub(name,'طماطم','ط م ا ط م')
  name = string.gsub(name,'موز','م و ز')
  name = string.gsub(name,'سيارة','س ي ا ر ة')
  name = string.gsub(name,'تحريك','ت ح ر ي ك')
  name = string.gsub(name,'فلوس','ف ل و س')
  name = string.gsub(name,'بوت','ب و ت')
  name = string.gsub(name,'ثقة','ث ق ة')
  name = string.gsub(name,'حلزون','ح ل ز و ن')
  name = string.gsub(name,'مكيف','م ك ي ف')
  name = string.gsub(name,'مروحه','م ر و ح ه')
  return bot.sendText(msg.chat_id,msg.id,"• اسرع واحد يركب ~ "..name.."","md",true)
  end
  if text == "اعلام" or text == "اعلام ودول" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
redis:del(bot_id.."Set:Country"..msg.chat_id)
Country_Rand = {"مصر","العراق","السعوديه","المانيا","تونس","الجزائر","فلسطين","اليمن","المغرب","البحرين","فرنسا","سويسرا","تركيا","انجلترا","الولايات المتحده","كندا","الكويت","ليبيا","السودان","سوريا"}
name = Country_Rand[math.random(#Country_Rand)]
redis:set(bot_id.."Game:Countrygof"..msg.chat_id,name)
name = string.gsub(name,"مصر","🇪🇬")
name = string.gsub(name,"العراق","🇮🇶")
name = string.gsub(name,"السعوديه","🇸🇦")
name = string.gsub(name,"المانيا","🇩🇪")
name = string.gsub(name,"تونس","🇹🇳")
name = string.gsub(name,"الجزائر","🇩🇿")
name = string.gsub(name,"فلسطين","🇵🇸")
name = string.gsub(name,"اليمن","🇾🇪")
name = string.gsub(name,"المغرب","🇲🇦")
name = string.gsub(name,"البحرين","🇧🇭")
name = string.gsub(name,"فرنسا","🇫🇷")
name = string.gsub(name,"سويسرا","🇨🇭")
name = string.gsub(name,"انجلترا","🇬🇧")
name = string.gsub(name,"تركيا","🇹🇷")
name = string.gsub(name,"الولايات المتحده","🇱🇷")
name = string.gsub(name,"كندا","🇨🇦")
name = string.gsub(name,"الكويت","🇰🇼")
name = string.gsub(name,"ليبيا","🇱🇾")
name = string.gsub(name,"السودان","🇸🇩")
name = string.gsub(name,"سوريا","🇸🇾")
return bot.sendText(msg.chat_id,msg.id,"• اسرع واحد يرسل اسم الدولة ~ ( "..name.." )","md",true)  
end

if text == "العواصم" or text == "عواصم" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
mthal = {"مقديشو","الدوحه","بغداد","الرياض","الحبل","بيروت","شقره","القاهره","دمشق","صنعاء","الخرطوم","عمان","ابو ضبي","طرابلس الغرب","الرباط","القدس","تونس","مسقط","الكويت","المنامه","الجزائر",};
name = mthal[math.random(#mthal)]
redis:set(bot_id.."Game:aoismm"..msg.chat_id,name)
name = string.gsub(name,"بغداد","العراق")
name = string.gsub(name,"الرياض","السعوديه")
name = string.gsub(name,"بيروت","لبنان")
name = string.gsub(name,"القاهره","مصر")
name = string.gsub(name,"دمشق","سوريا")
name = string.gsub(name,"صنعاء","اليمن")
name = string.gsub(name,"الخرطوم","السودان")
name = string.gsub(name,"عمان","الأردن")
name = string.gsub(name,"ابو ضبي","الأمارات")
name = string.gsub(name,"طرابلس الغرب","ليبيا")
name = string.gsub(name,"الرباط","المغرب")
name = string.gsub(name,"القدس","فلسطين")
name = string.gsub(name,"تونس","تونس")
name = string.gsub(name,"مسقط","عمان")
name = string.gsub(name,"الكويت","الكويت")
name = string.gsub(name,"المنامه","البحرين")
name = string.gsub(name,"الجزائر","الجزائر")
name = string.gsub(name,"الدوحه","القطر")
name = string.gsub(name,"مقديشو","الصومال")
return bot.sendText(msg.chat_id,msg.id,"• اسرع واحد يرسل اسم العاصمة ~ ( "..name.." ) ","md",true)  
end

if text == "ارقام" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
Maany_Rand = {"697045","1008761","869645","1078944","0088841","661199","998861144","5586911","984682","1078944","97945","219745","58662","197985","975465"}
name = Maany_Rand[math.random(#Maany_Rand)]
redis:set(bot_id.."Game:arkkamm"..msg.chat_id,name)
name = string.gsub(name,"197985","197985")
name = string.gsub(name,"769475","769475")
name = string.gsub(name,"975465","975465")
name = string.gsub(name,"984682","984682")
name = string.gsub(name,"58662","58662")
name = string.gsub(name,"219745","219745")
name = string.gsub(name,"97945","97945")
name = string.gsub(name,"697045","697045")
name = string.gsub(name,"1008761","1008761")
name = string.gsub(name,"869645","869645")
name = string.gsub(name,"1078944","1078944")
name = string.gsub(name,"0088841","0088841")
name = string.gsub(name,"661199","661199")
name = string.gsub(name,"998861144","998861144")
name = string.gsub(name,"5586911","5586911")
return bot.sendText(msg.chat_id,msg.id,"• اسرع واحد يكتب الرقم ~ ( "..name.." ) ","md",true)  
end

if text == 'عقاب' then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
redis:del(bot_id..'List_Ahkamm'..msg.chat_id)  
redis:set(bot_id.."raeahkamm"..msg.chat_id,msg.sender.user_id)
redis:sadd(bot_id..'List_Ahkamm'..msg.chat_id,msg.sender.user_id)
redis:setex(bot_id.."Start_Ahkamm"..msg.chat_id,3600,true)
return bot.sendText(msg.chat_id,msg.id,"• تم بدء اللعبة وتم تسجيلك \n• اللي بيلعب يرسل ( انا ) .","md",true)
end
if text == 'ابدء' and redis:get(bot_id.."Witting_StartGamehh"..msg.chat_id) then
rarahkam = redis:get(bot_id.."raeahkamm"..msg.chat_id)
if tonumber(rarahkam) == msg.sender.user_id then
local list = redis:smembers(bot_id..'List_Ahkamm'..msg.chat_id) 
if #list == 1 then 
return bot.sendText(msg.chat_id,msg.id,"• عذراً لم يشارك اي لاعب","md",true)  
end 
local UserName = list[math.random(#list)]

local UserId_Info = bot.getUser(UserName)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '@['..UserId_Info.username..']'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
redis:incrby(bot_id..'Num:Add:Games'..msg.chat_id..UserId_Info.id,5)
redis:del(bot_id..'raeahkamm'..msg.chat_id) 
redis:del(bot_id..'List_Ahkamm'..msg.chat_id) 
redis:del(bot_id.."Witting_StartGamehh"..msg.chat_id)
redis:del(bot_id.."Start_Ahkamm"..msg.chat_id)
katu = {
"**صورة وجهك او رجلك او خشمك او يدك**.",
    "**اصدر اي صوت يطلبه منك الاعبين**.",
    "**سكر خشمك و قول كلمة من اختيار الاعبين الي معك**.",
    "**روح الى اي قروب عندك في الواتس اب و اكتب اي شيء يطلبه منك الاعبين  الحد الاقصى 3 رسائل**.",
    "**قول نكتة ولازم احد الاعبين يضحك اذا ضحك يعطونك ميوت الى ان يجي دورك مرة ثانية**.",
    "**سمعنا صوتك و غن اي اغنية من اختيار الاعبين الي معك**.",
    "**ذي المرة لك لا تعيدها**.",
    "**ارمي جوالك على الارض بقوة و اذا انكسر صور الجوال و ارسله في الشات العام**.",
    "**صور اي شيء يطلبه منك الاعبين**.",
    "**اتصل على ابوك و قول له انك رحت مع بنت و احين هي حامل....**.",
    "**سكر خشمك و قول كلمة من اختيار الاعبين الي معك**.",
    "**اعطي اي احد جنبك كف اذا مافيه احد جنبك اعطي نفسك و نبي نسمع صوته**.",
    "**ارمي جوالك على الارض بقوة و اذا انكسر صور الجوال و ارسله في الشات العام**.",
    "**روح عند اي احد بالخاص و قول له انك تحبه و الخ**.",
    "**اكتب في الشات اي شيء يطلبه منك الاعبين في الخاص**.",
    "**قول نكتة اذا و لازم احد الاعبين يضحك اذا محد ضحك يعطونك ميوت الى ان يجي دورك مرة ثانية**.",
    "**سامحتك خلاص مافيه عقاب لك **.",
    "**اتصل على احد من اخوياك  خوياتك , و اطلب منهم مبلغ على اساس انك صدمت بسيارتك**.",
    "**غير اسمك الى اسم من اختيار الاعبين الي معك**.",
    "**اتصل على امك و قول لها انك تحبها **.",
    "**لا يوجد سؤال لك سامحتك **.",
    "**قل لواحد ماتعرفه عطني كف**.",
    "**منشن الجميع وقل انا اكرهكم**.",
    "**اتصل لاخوك و قول له انك سويت حادث و الخ....**.",
    "**روح المطبخ و اكسر صحن **.",
    "**اعطي اي احد جنبك كف اذا مافيه احد جنبك اعطي نفسك و نبي نسمع صوت الكف**.",
    "**قول لاي بنت موجود في الروم كلمة حلوه**.",
    "**تكلم باللغة الانجليزية الين يجي دورك مرة ثانية لازم تتكلم اذا ما تكلمت تنفذ عقاب ثاني**.",
    "**لا تتكلم ولا كلمة الين يجي دورك مرة ثانية و اذا تكلمت يجيك باند لمدة يوم كامل من السيرفر**.",
    "**قول قصيدة **.",
    "**تكلم باللهجة السودانية الين يجي دورك مرة ثانية**.",
    "**اتصل على احد من اخوياك  خوياتك , و اطلب منهم مبلغ على اساس انك صدمت بسيارتك**.",
    "**اول واحد تشوفه عطه كف**.",
    "**سو مشهد تمثيلي عن اي شيء يطلبه منك الاعبين**.",
    "**سامحتك خلاص مافيه عقاب لك **.",
    "**اتصل على ابوك و قول له انك رحت مع بنت و احين هي حامل....**.",
    "**روح اكل ملح + ليمون اذا مافيه اكل اي شيء من اختيار الي معك**.",
    "**تاخذ عقابين**.",
    "**قول اسم امك افتخر بأسم امك**.",
    "**ارمي اي شيء قدامك على اي احد موجود او على نفسك**.",
    "**اذا انت ولد اكسر اغلى او احسن عطور عندك اذا انتي بنت اكسري الروج حقك او الميك اب حقك**.",
    "**اذهب الى واحد ماتعرفه وقل له انا كيوت وابي بوسه**.",
    "**تتصل على الوالده  و تقول لها خطفت شخص**.",
    "** تتصل على الوالده  و تقول لها تزوجت با سر**.",
    "**اتصل على الوالده  و تقول لها  احب وحده**.",
      "**تتصل على شرطي تقول له عندكم مطافي**.",
      "**خلاص سامحتك**.",
      "** تصيح في الشارع انا  مجنوون**.",
      "** تروح عند شخص وقول له احبك**."
      }
name = katu[math.random(#katu)]
return bot.sendText(msg.chat_id,msg.id,'• تم اختيار '..ls..' لمعاقبته\n- العقوبة هي ( '..name..' ) ',"md",true)
end
end

if text == 'احكام' then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
redis:del(bot_id..'List_Ahkam'..msg.chat_id)  
redis:set(bot_id.."raeahkam"..msg.chat_id,msg.sender.user_id)
redis:sadd(bot_id..'List_Ahkam'..msg.chat_id,msg.sender.user_id)
redis:setex(bot_id.."Start_Ahkam"..msg.chat_id,3600,true)
return bot.sendText(msg.chat_id,msg.id,"• تم بدء اللعبة وتم تسجيلك \n• اللي بيلعب يرسل ( انا ) .","md",true)
end
if text == 'ابدء' and redis:get(bot_id.."Witting_StartGameh"..msg.chat_id) then
rarahkam = redis:get(bot_id.."raeahkam"..msg.chat_id)
if tonumber(rarahkam) == msg.sender.user_id then
local list = redis:smembers(bot_id..'List_Ahkam'..msg.chat_id) 
if #list == 1 then 
return bot.sendText(msg.chat_id,msg.id,"• عذراً لم يشارك اي لاعب","md",true)  
end 
local UserName = list[math.random(#list)]

local UserId_Info = bot.getUser(UserName)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '@['..UserId_Info.username..']'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
redis:incrby(bot_id..'Num:Add:Games'..msg.chat_id..UserId_Info.id,5)
redis:del(bot_id..'raeahkam'..msg.chat_id) 
redis:del(bot_id..'List_Ahkam'..msg.chat_id) 
redis:del(bot_id.."Witting_StartGameh"..msg.chat_id)
redis:del(bot_id.."Start_Ahkam"..msg.chat_id)
return bot.sendText(msg.chat_id,msg.id,'• تم اختيار '..ls..' للحكم عليه',"md",true)
end
end

if text == 'اضف صور' then
if not developer(msg) then
return bot.sendText(msg.chat_id,msg.id,'\n*• هذا الامر يخص المطور * ',"md",true)  
end
redis:set(bot_id.."Add:photo:Gamess"..msg.sender.user_id..":"..msg.chat_id,'startt')
return bot.sendText(msg.chat_id,msg.id,"• ارسل الصورة الان","md",true)  
end

if text == "مسح قائمه الصور" then
if not developer(msg) then
return bot.sendText(msg.chat_id,msg.id,'\n*• هذا الامر يخص المطور* ',"md",true)  
end
local list = redis:smembers(bot_id.."photo:Games:Bott")
if #list == 0 then
return bot.sendText(msg.chat_id,msg.id,"• لا يوجد اسئلة","md",true)
end
for k,v in pairs(list) do
redis:del(bot_id..'Text:Games:photoo'..v)  
redis:srem(bot_id.."photo:Games:Bott",v)  
end
return bot.sendText(msg.chat_id,msg.id,"• تم مسح جميع الاسئلة","md",true) 
end
if text == 'صور' then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
local list = redis:smembers(bot_id.."photo:Games:Bott")
if #list == 0 then
return bot.sendText(msg.chat_id,msg.id,"• لا يوجد اسئلة","md",true) 
end
local quschen = list[math.random(#list)]
local GetAnswer = redis:get(bot_id..'Text:Games:photoo'..quschen)
print(GetAnswer)
redis:set(bot_id..'Games:Set:Answerr'..msg.chat_id,GetAnswer)
return bot.sendPhoto(msg.chat_id,msg.id,quschen,"","md",true) 
end

if text == 'اضف رياضه' then
if not developer(msg) then
return bot.sendText(msg.chat_id,msg.id,'\n*• هذا الامر يخص المطور * ',"md",true)  
end
redis:set(bot_id.."Add:photo:Gamesss"..msg.sender.user_id..":"..msg.chat_id,'starttt')
return bot.sendText(msg.chat_id,msg.id,"• ارسل الصورة الان","md",true)  
end

if text == "مسح قائمه رياضه" then
if not developer(msg) then
return bot.sendText(msg.chat_id,msg.id,'\n*• هذا الامر يخص المطور* ',"md",true)  
end
local list = redis:smembers(bot_id.."photo:Games:Bottt")
if #list == 0 then
return bot.sendText(msg.chat_id,msg.id,"• لا يوجد اسئلة","md",true)
end
for k,v in pairs(list) do
redis:del(bot_id..'Text:Games:photooo'..v)  
redis:srem(bot_id.."photo:Games:Bottt",v)  
end
return bot.sendText(msg.chat_id,msg.id,"• تم مسح جميع الاسئلة","md",true) 
end
if text == 'رياضه' or text == 'رياضة' then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
local list = redis:smembers(bot_id.."photo:Games:Bottt")
if #list == 0 then
return bot.sendText(msg.chat_id,msg.id,"• لا يوجد اسئلة","md",true) 
end
local quschen = list[math.random(#list)]
local GetAnswer = redis:get(bot_id..'Text:Games:photooo'..quschen)
print(GetAnswer)
redis:set(bot_id..'Games:Set:Answerrr'..msg.chat_id,GetAnswer)
return bot.sendPhoto(msg.chat_id,msg.id,quschen,"","md",true) 
end

if text == 'اضف موسيقى' then
if not developer(msg) then
return bot.sendText(msg.chat_id,msg.id,'\n*• هذا الامر يخص المطور * ',"md",true)  
end
redis:set(bot_id.."Add:audio:Games"..msg.sender.user_id..":"..msg.chat_id,'start')
return bot.sendText(msg.chat_id,msg.id,"• ارسل الموسيقى الان","md",true)  
end

if text == "مسح قائمه الموسيقى" then
if not developer(msg) then
return bot.sendText(msg.chat_id,msg.id,'\n*• هذا الامر يخص المطور * ',"md",true)  
end
local list = redis:smembers(bot_id.."audio:Games:Bot")
if #list == 0 then
return bot.sendText(msg.chat_id,msg.id,"• لا يوجد اسئلة","md",true)
end
for k,v in pairs(list) do
redis:del(bot_id..'Text:Games:audio'..v)  
redis:srem(bot_id.."audio:Games:Bot",v)  
end
return bot.sendText(msg.chat_id,msg.id,"• تم مسح جميع الاسئلة","md",true) 
end
if text == 'موسيقى' then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
local list = redis:smembers(bot_id.."audio:Games:Bot")
if #list == 0 then
return bot.sendText(msg.chat_id,msg.id,"• لا يوجد اسئلة","md",true) 
end
local quschen = list[math.random(#list)]
local GetAnswer = redis:get(bot_id..'Text:Games:audio'..quschen)
print(GetAnswer)
redis:set(bot_id..'Games:Set:Answer'..msg.chat_id,GetAnswer)
return bot.sendAudio(msg.chat_id,msg.id,quschen,"","md",true) 
end

if text == 'اضف مشاهير' then
if not developer(msg) then
return bot.sendText(msg.chat_id,msg.id,'\n*• هذا الامر يخص المطور * ',"md",true)  
end
redis:set(bot_id.."Add:photo:Gamesssss"..msg.sender.user_id..":"..msg.chat_id,'starttttt')
return bot.sendText(msg.chat_id,msg.id,"• ارسل الصورة الان","md",true)  
end

if text == "مسح قائمه المشاهير" then
if not developer(msg) then
return bot.sendText(msg.chat_id,msg.id,'\n*• هذا الامر يخص المطور* ',"md",true)  
end
local list = redis:smembers(bot_id.."photo:Games:Bottttt")
if #list == 0 then
return bot.sendText(msg.chat_id,msg.id,"• لا يوجد اسئلة","md",true)
end
for k,v in pairs(list) do
redis:del(bot_id..'Text:Games:photooooo'..v)  
redis:srem(bot_id.."photo:Games:Bottttt",v)  
end
return bot.sendText(msg.chat_id,msg.id,"• تم مسح جميع الاسئلة","md",true) 
end
if text == 'مشاهير' or text == 'المشاهير' then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
local list = redis:smembers(bot_id.."photo:Games:Bottttt")
if #list == 0 then
return bot.sendText(msg.chat_id,msg.id,"• لا يوجد اسئلة","md",true) 
end
local quschen = list[math.random(#list)]
local GetAnswer = redis:get(bot_id..'Text:Games:photooooo'..quschen)
print(GetAnswer)
redis:set(bot_id..'Games:Set:Answerrrrr'..msg.chat_id,GetAnswer)
return bot.sendPhoto(msg.chat_id,msg.id,quschen,"","md",true) 
end

if text == "كلمات" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
redis:del(bot_id.."Set:Klmat"..msg.chat_id)
katu = {"باي","فهمت","كتاب","اسمعك","احبك","بشع","نظيف","حار","بارد","اسفل","سريع","سيء","طويل","سمين","ضعيف","شريف","شجاع","ذهب","عدل","نشيط","جوعان","عطشان","هادئ","قرد","دجاجه","بطريق","ضفدع","بومه","نحله","ديك","جمل","بقره","دولفين","تمساح","قرش","نمر","اخطبوط","سمكه","خفاش","اسد","فار","ذئب","فراشه","عقرب","زرافه","قنفذ","تفاحه","باذنجان","الجرس","السمك","المطر","الكتاب","البسمار","الكعبه","الابره","الساعه","البيض","المرايه","الضوء","الهواء","الضل","العمر","القلم","المشط","الحفره","البحر","الثلج","الاسفنج","الصوت"}
name = katu[math.random(#katu)]
redis:set(bot_id.."Game:Kokoo"..msg.chat_id,name)
name = string.gsub(name,"باي","باي")
name = string.gsub(name,"فهمت","فهمت")
name = string.gsub(name,"كتاب","كتاب")
name = string.gsub(name,"اسمعك","اسمعك")
name = string.gsub(name,"احبك","احبك")
name = string.gsub(name,"بشع","بشع")
name = string.gsub(name,"نظيف","نظيف")
name = string.gsub(name,"حار","حار")
name = string.gsub(name,"بارد","بارد")
name = string.gsub(name,"اسفل","اسفل")
name = string.gsub(name,"سريع","سريع")
name = string.gsub(name,"سيء","سيء")
name = string.gsub(name,"طويل","طويل")
name = string.gsub(name,"سمين","سمين")
name = string.gsub(name,"ضعيف","ضعيف")
name = string.gsub(name,"شريف","شريف")
name = string.gsub(name,"شجاع","شجاع")
name = string.gsub(name,"ذهب","ذهب")
name = string.gsub(name,"عدل","عدل")
name = string.gsub(name,"نشيط","نشيط")
name = string.gsub(name,"جوعان","جوعان")
name = string.gsub(name,"عطشان","عطشان")
name = string.gsub(name,"هادئ","هادئ")
name = string.gsub(name,"قرد","قرد")
name = string.gsub(name,"دجاجه","دجاجه")
name = string.gsub(name,"بطريق","بطريق")
name = string.gsub(name,"ضفدع","ضفدع")
name = string.gsub(name,"بومه","بومه")
name = string.gsub(name,"نحله","نحله")
name = string.gsub(name,"ديك","ديك")
name = string.gsub(name,"جمل","جمل")
name = string.gsub(name,"بقره","بقره")
name = string.gsub(name,"دولفين","دولفين")
name = string.gsub(name,"تمساح","تمساح")
name = string.gsub(name,"قرش","قرش")
name = string.gsub(name,"نمر","نمر")
name = string.gsub(name,"اخطبوط","اخطبوط")
name = string.gsub(name,"سمكه","سمكه")
name = string.gsub(name,"خفاش","خفاش")
name = string.gsub(name,"اسد","اسد")
name = string.gsub(name,"فار","فار")
name = string.gsub(name,"ذئب","ذئب")
name = string.gsub(name,"فراشه","فراشه")
name = string.gsub(name,"عقرب","عقرب")
name = string.gsub(name,"زرافه","زرافه")
name = string.gsub(name,"قنفذ","قنفذ")
name = string.gsub(name,"تفاحه","تفاحه")
name = string.gsub(name,"باذنجان","باذنجان")
name = string.gsub(name,"الجرس","الجرس")
name = string.gsub(name,"السمك","السمك")
name = string.gsub(name,"المطر","المطر")
name = string.gsub(name,"الكتاب","الكتاب")
name = string.gsub(name,"البسمار","البسمار")
name = string.gsub(name,"الكعبه","الكعبه")
name = string.gsub(name,"الابره","الابره")
name = string.gsub(name,"الساعه","الساعه")
name = string.gsub(name,"البيض","البيض")
name = string.gsub(name,"المرايه","المرايه")
name = string.gsub(name,"الضوء","الضوء")
name = string.gsub(name,"الهواء","الهواء")
name = string.gsub(name,"الضل","الضل")
name = string.gsub(name,"العمر","العمر")
name = string.gsub(name,"القلم","القلم")
name = string.gsub(name,"المشط","المشط")
name = string.gsub(name,"الحفره","الحفره")
name = string.gsub(name,"البحر","البحر")
name = string.gsub(name,"الثلج","الثلج")
name = string.gsub(name,"الاسفنج","الاسفنج")
name = string.gsub(name,"الصوت","الصوت")
return bot.sendText(msg.chat_id,msg.id,"• اسرع واحد يرسل ~ ( "..name.." )","md",true)  
end
if text == "خمن" or text == "تخمين" then   
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
redis:del(bot_id..":"..msg.chat_id..":"..msg.sender.user_id..":game:Estimate")
Num = math.random(1,20)
redis:set(bot_id..":"..msg.chat_id..":"..msg.sender.user_id..":game:Estimate",Num)  
return bot.sendText(msg.chat_id,msg.id,"*• اهلا بك عزيزي في لعبة التخمين \n• ملاحظه لديك { 3 } محاولات فقط فكر قبل ارسال تخمينك \n• سيتم تخمين عدد ما بين (1 و 20 ) اذا تعتقد انك تستطيع الفوز جرب والعب الان ؟*","md",true)  
end
if text == "المختلف" then
if not redis:get(bot_id.."Status:Games"..msg.chat_id) then
return bot.sendText(msg.chat_id,msg.id," • الالعاب معطلة من قبل المشرفين","md",true)
end
redis:del(bot_id..":"..msg.chat_id..":game:Difference")
mktlf = {"??","☠","🐼","🐇","🌑","🌚","⭐️","✨","⛈","🌥","⛄️","👨‍🔬","👨‍💻","??‍🔧","??‍♀","??‍♂","🧝‍♂","🙍‍♂","🧖‍♂","👬","🕒","🕤","⌛️","📅",};
name = mktlf[math.random(#mktlf)]
redis:set(bot_id.."Game:Difference"..msg.chat_id,name)
name = string.gsub(name,"😸","😹😹😹😹😹😹😹😹😸😹😹😹😹")
name = string.gsub(name,"☠","💀💀💀💀💀💀💀☠💀💀💀💀💀")
name = string.gsub(name,"🐼","👻👻👻🐼👻👻??👻👻👻👻")
name = string.gsub(name,"🐇","🕊🕊🕊🕊🕊🐇🕊🕊🕊🕊")
name = string.gsub(name,"🌑","🌚🌚🌚🌚🌚🌑🌚🌚🌚")
name = string.gsub(name,"🌚","🌑🌑🌑🌑????🌑🌑🌑")
name = string.gsub(name,"⭐️","??🌟🌟🌟🌟🌟🌟🌟⭐️🌟🌟🌟")
name = string.gsub(name,"✨","💫💫💫💫💫✨💫💫💫💫")
name = string.gsub(name,"⛈","🌨🌨🌨??🌨⛈🌨🌨🌨🌨")
name = string.gsub(name,"🌥","⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️")
name = string.gsub(name,"⛄️","☃☃☃☃☃☃⛄️☃☃☃☃")
name = string.gsub(name,"👨‍🔬","👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬👩‍🔬")
name = string.gsub(name,"👨‍💻","👩‍💻👩‍??👩‍‍💻👩‍‍??👩‍‍💻👨‍💻??‍💻👩‍💻👩‍💻")
name = string.gsub(name,"👨‍🔧","👩‍🔧👩‍🔧??‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧")
name = string.gsub(name,"👩‍??","👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳??‍🍳")
name = string.gsub(name,"🧚‍♀","🧚‍♂🧚‍♂🧚‍♂??‍♂🧚‍♀🧚‍♂🧚‍♂")
name = string.gsub(name,"🧜‍♂","🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧚‍♂🧜‍♀🧜‍♀🧜‍♀")
name = string.gsub(name,"🧝‍♂","🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀")
name = string.gsub(name,"🙍‍♂️","🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️")
name = string.gsub(name,"🧖‍♂️","🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️")
name = string.gsub(name,"👬","👭👭👭👭👭👬👭👭👭")
name = string.gsub(name,"👨‍👨‍👧","👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦")
name = string.gsub(name,"🕒","🕒🕒🕒🕒🕒🕒🕓🕒🕒🕒")
name = string.gsub(name,"🕤","🕥🕥🕥🕥🕥🕤🕥🕥🕥")
name = string.gsub(name,"⌛️","⏳⏳⏳⏳⏳⏳⌛️⏳⏳")
name = string.gsub(name,"📅","📆📆📆📆📆📆📅????")
return bot.sendText(msg.chat_id,msg.id,"*• اسرع واحد يرسل الاختلاف ~* ( ["..name.."] )","md",true)  
end
end -- Gems(msg)
