@ECHO OFF
Title Personal Development
cd /d "%~dp0"
chcp 65001
:START
 echo.
 echo "Това приложение държи личната ти информация тук, не на друт компютър или в нета."
 echo "Възползвай се от това за да бъдеш максимално честен/честна - остава за тебе."
 echo.
 echo.
 pause
 cls
 echo.
 echo.
 echo                                   "Поглеждайки се в огледалото, профилът ми най- много прилича на ..."
 ping -n 5 127.0.0.1 > nul
 temperament.jpg
 echo.
 echo.
 echo (1) горен ляв профил  : (2) горен десен профил 
 echo ..............................................
 echo (3) долен ляв профил  : (4) долен десен профил 
 echo.
 echo.
 echo "[ За да продължа, натискам цифрата, която съм избрал/а. ]"
 echo.
CHOICE /c:1234q
if errorlevel 5 exit 
if errorlevel 4 (
  set temperament='phlegm'
  echo.
  echo "Обръщам внимание на детайлите и ще работя усърдно до постигането на резултати, независимо колко време отнеме. Разбирам се най- добре с долен ляв профил (меланхолик). Най- трудно се разбирам с горен ляв профил (холерик)."
  rem Флегматичен
  pause
  goto :SOMATOTYPE
)
if errorlevel 3 (
  set temperament='melan'
  echo.
  echo "Преценявам внимателно думите и действията ми. Понякога това ми причининява тревожност или чувство на вина, затова се опитвам да съм по- спокоен/спокойна. Намирам опора при долен десен профил (флегматик). Най- трудно говоря с горен десен профил (сангвиник)."
  rem Мелапноличен
  pause
  goto :SOMATOTYPE
)
if errorlevel 2 (
  set temperament='sang'
  echo.
  echo "Харесва ми да се прекарвам добре времето ми с другите. Общувам най- лесно с горен ляв профил (холерик). А най- трудно с долен ляв профил (меланхолик)."
  rem Сангвиничен 
  goto :SOMATOTYPE
)
if errorlevel 1 (
  set temperament='choler'
  echo.
  echo "Развълнувам се лесно и имам бързи реакции, което ме прави склонен/склонна да поемат рискове. Понякога прекалявам с това. Разбирам се най- добре с горен десен профил (сангвиник). Най- трудно ми е да общувам с долен десен профил (флегматик)."
  rem Холеричен
  goto :SOMATOTYPE
)
:SOMATOTYPE
cls
echo.
echo                                    "Тялото ми прилича най- много на ..."
echo.
ping -n 4 127.0.0.1 > nul
somatotype.jpg
echo "1) Това от ляво. 2) Това по средата. 3) Това от дясно."
echo. 
CHOICE /c:123q
if errorlevel 4 exit
if errorlevel 3 (
 set metablosim='slow'
 echo "Имам бавен метаболизъм - каквото изям и веднага ми се отразява на фигурата."
 pause
 goto :NATURAL
)
if errorlevel 2 (
 set metablosim='medium'
 echo "Имам балансиран метаболизъм. Тренировките ми се отразяват добре и на фигурата и на самочувствието, защото лесно мога да направя релеф на мускулите."
 pause
 goto :NATURAL
)
if errorlevel 1 (
 set metablosim='fast'
 echo "Имам бърз метаболизъм - мога да ям много, но пак оставам съшите килограми. Въпреки това разбрах, че не мога да създам тяло като на културист колкото и упражнения да правя. Тренировки за издръжливост са най- подходящи за мен."
 pause
 goto :NATURAL
)
:NATURAL
rem Има нужда да се допълни, защото в момента е само за темперамента.

if %temperament%=='melan' if %metablosim%=='fast' echo "Поемам отговорност да организирам преговори между другите. " && pause && goto ENERGY
if %temperament%=='melan' if %metablosim%=='medium'  echo "Поемам отговорност да организирам преговори между другите. " && pause && goto ENERGY
if %temperament%=='melan' if %metablosim%=='slow'  echo "Поемам отговорност да организирам преговори между другите. " && pause && goto ENERGY

if %temperament%=='phlegm' if %metablosim%=='fast'  echo "Поемам отговорност да дам шанс на вскички да изкажат мнението си на преговорите, а не само най- шумните или мнозинството" && pause && goto ENERGY
if %temperament%=='phlegm' if %metablosim%=='medium'  echo "Поемам отговорност да дам шанс на вскички да изкажат мнението си на преговорите, а не само най- шумните или мнозинството" && pause && goto ENERGY
if %temperament%=='phlegm' if %metablosim%=='slow' echo "Поемам отговорност да дам шанс на вскички да изкажат мнението си на преговорите, а не само най- шумните или мнозинството" && pause && goto ENERGY

if %temperament%=='sang' if %metablosim%=='fast'  echo "Поемам отговорност да модерирам преговори и да осигурявам добра обстановка." && pause && goto ENERGY
if %temperament%=='sang' if %metablosim%=='medium'  echo "Поемам отговорност да модерирам преговори и да осигурявам добра обстановка." && pause && goto ENERGY
if %temperament%=='sang' if %metablosim%=='slow'  echo "Поемам отговорност да модерирам преговори и да осигурявам добра обстановка." && pause && goto ENERGY

if %temperament%=='choler' if %metablosim%=='fast' echo "Поемам отговорност да започвам преговори и да ги забързвам когато има шанс да се разпаднат." && pause && goto ENERGY
if %temperament%=='choler' if %metablosim%=='medium'  echo "Поемам отговорност да започвам преговори и да ги забързвам когато има шанс да се разпаднат." && pause && goto ENERGY
if %temperament%=='choler' if %metablosim%=='slow'  echo "Поемам отговорност да започвам преговори и да ги забързвам когато има шанс да се разпаднат." && pause && goto ENERGY

rem ВТОРИ ДЕН
:ENERGY
cls
echo.
echo                                      "Предпочитам да изразя добрите ми чувства към близките хора чрез ..."
ping -n 4 127.0.0.1 > nul
echo.
love.png
echo "1) морална подкрепа, окуражаване"
echo "2) услуга"
echo "3) подарък"
echo "4) добре прекарано време"
echo "5) прегръдка, държане за ръка"
echo.
CHOICE /c:12345
if errorlevel 5 (
 echo.
)
if errorlevel 4 (
 echo.
)
if errorlevel 3 (
 echo.
) 
if errorlevel 2 (
 echo.
)
if errorlevel 1 (
 echo.
)
echo "ПРЕДУПРЕЖДЕНИЕ : Следващото себеопознание включва да бъдеш прехвърлен/а към външен уеб сайт,"
echo "който използва твоите дата и място на раждане, за да изчисли профила ти. По желание."
echo.
ping -n 11 127.0.0.1 > nul
CHOICE /c:yn /m                         "Искам да знам как да изразявам себе си правилно."
if errorlevel 2 (
 echo "Но за момента няма да използвам онзи сайт."
) 
if errorlevel 1 (
  rundll32 url.dll, FileProtocolHandler https://jovianarchive.com/Get_Your_Chart
  echo "И сега след като получих резултат копирам типът (Type:) тук."
  goto Aura
)
:Aura
set /p aura=
if aura=='Generator' echo "Понякога от вълнение бързам да направя нещо и тогава не се получава. Все още ми е трудно да запазя търпение - изисква голяма дисциплина." 
if aura=='Manifestor' echo "Ако не съм предупредил, че ще направя нещо и обикновено не се получават намеренията ми. Явно само като предупредя другите реагират адекватно."
if aura=='Projector' echo.
if aura=='Reflector' echo.
rem упражнение - медитация

rem ТРЕТИ ДЕН
:INTELLI
cls
echo                                                          "Моята интелигентност е ..."
ping -n 3 127.0.0.1 > nul
intelligence.png
echo.
echo "1) naturalist"
echo "2) spatial"
echo "3) musical"
echo "4) logical"
echo "5) interpersonal"
echo "6) kinesthetic"
echo "7) linguistic"
echo "8) personal"
echo.
CHOICE /c:12345678
if errorlevel 8 (
 set intellig='personal'
 echo "Мога да запазя самообладание в трудни ситуации чрез дишане, медитация, равносметка. Съсредоточавам се над това, което е под мой контрол и приемам това, на което не мога да повлияя."
 pause
 goto GENERATION
)
if errorlevel 7 (
 set intellig='linguistic'
 echo "Имам умения в телекомуникацията - честоти, радио."
 rem упражнение за приказващите - записване на мислите на диктофон/дневник
 pause
 goto GENERATION
)
if errorlevel 6 (
 set intellig='kinesthetic'
 echo "Мога да реагирам бързо при извънредни обстоятелства - имам every day carry (EDC), подготвена екипировка за оцеляване извън зоната на комфорт за 72 часа (палатка, спален чувал, газов котлон) bug out bag (BoB). Имам умения в самозащитата."
 pause
 goto GENERATION
)
if errorlevel 5 (
 set intellig='interpersonal'
 echo "Готов/а съм да окажа долекарска помощ - диагностициране, реагиране, измъкване от опасно място и каквото друго е нужно."
 pause
 goto GENERATION
)
if errorlevel 4 (
 set intellig='logical'
 echo "Мога да правя домашни изделия - свещи, сапун, прибори, паста за зъби, шампоан, репелент. Мога да поправям коли. Мога да използвам алтернативи на електрическата мрежа - генератор, велогенератор, воденица."
 rem упражнение за логично мислещите - отвори тази програма като текст и погледни как е направена
 pause
 goto GENERATION
)
if errorlevel 3 (
 set intellig='musical'
 echo "Мога да изразявам това, което много хора мислят или преживяват. Това е важно за сплотеността на съгражданите ми."
 pause
 goto GENERATION
)
if errorlevel 2 (
 set intellig='spatial'
 echo "Мога да се занимавам с изработване на легло, на типи, на пещ, на къща от подръчни средства като клони, кал и каквото друго намеря."
 pause
 goto GENERATION
)
if errorlevel 1 (
 set intellig='naturalist'
 echo "Дейности, с които мога да се занимавам са : разпознаване на растения с хранителни или медицински свойства, събиране, съхраняване, преработване, използване; градинарство, хидропоника; оцеляване навън - ориентиране, къмпингуване; животновъдство."
 pause
 goto GENERATION
)

rem ЧЕТВЪРТИ ДЕН
:GENERATION
cls
echo.
echo "Имам навършени ... години."
set /p age=
if (age GTR 30) (
  rem Prophet
  echo "Тридесет години преход ..."
  goto SUMMARY
)
if (age LSS 30) (
  rem Hero
  echo "Проблемите, които са били отлагани толкова дълго вече трябва да се решат!"
  goto SUMMARY
) 
if (age LSS 7) (
  rem Artist
 echo "Докато израствам се грижат особено внимателно за мен, зашото времената са опасни."
 goto SUMMARY
) 

rem ПЕТИ ДЕН
:SUMMARY
echo.
echo "Какви умения имам? А какви проблеми има в България, на Балканите? Как двете могат да се отнесат едно към друго."
echo.
pause
echo.

:Credits
cls
echo "Това е прототип на инструмента за себеопознаване. Разбира се - това е външен инструмент и се основава на логика и доказани, древни разбирания."
echo "Препоръчително е да се използват и други собствени методи като медитиране, които се основават на интуиция."
echo.
Choice /c:yn /M "Би ли искал/а да пробваш отново или да пробваш за друг?"	
if errorlevel 2 exit
if errorlevel 1 goto :START