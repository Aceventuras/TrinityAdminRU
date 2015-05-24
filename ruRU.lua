-----------------------------
--
-- TrinityAdmin Версии 3.x
-- TrinityAdmin Сборка от изначального MangAdmin.
--
-- Copyright (RU) 2015.05.24 Перевод RUru сделан ник Эйсвентура = Aceventuras
-- Клиент Игры версии 3.3.5a
-- репозиторий https://github.com/Aceventuras/TrinityAdminRU
-- Используемый текстовый редактор Notepad++ Сайт: https://notepad-plus-plus.org/
-- Удачи!!! Приятной игры.
--
-- Copyright (C) 2007 Free Software Foundation, Inc.
-- Лицензия GPLv3 +: GNU GPL версии 3 или более поздней версии <http://gnu.org/licenses/gpl.html>
-- Это свободное программное обеспечение: вы можете изменить и распространять его.
-- В нем НЕТ НИКАКИХ ГАРАНТИЙ до степени, разрешенной законом.
--
-- Вы должны были получить копию GNU General Public License
-- Вместе с этой программой; , если нет,: Справочная информация написать, Свободное Программное обеспечение
-- Foundation, Inc., 59 Temple Place, Люкс 330, Boston, MA 02111-1307 США
--
-- Форум: http://groups.google.com/group/trinityadmin
-- GoogleCode Сайт: http://code.google.com/p/trinityadmin/
-- Репозиторий Subversion: http://trinityadmin.googlecode.com/svn/
-- Dev Блог: http://trinityadmin.blogspot.com/
-----------------------------
--[[
Как добавить локализованную строку:
1. Посмотрите ниже и найти функциональную область (Tab) ваша строка принадлежит в.
2. В этом разделе найти нужный тип строки (подсказка, этикетки, другое)
3. Каждая линия указывает чему равно значение. На левой стороне находится "маркер", который представляет собой строку. Маркер используется
   в исходном коде, и заменяется фактической строкой во время Выполнения. Маркер в кавычках, и содержащаяся в квадратных скобках ([]).
   Eaxample: ["strength"]
4. Теперь присвойте значение маркера для языка, на которым вы используете. Например, если я редактирую файл, я хочу,
   присвоить значение, на US English (американском английском), в определение:
   ["strength"] = "strength",
   Пожалуйста, обратите внимание, линия заканчивается запятой (,).
5. Учитывая маркер должен существовать на всех поддерживаемых языках. Если мы редактируем файл для Русского языка, то пишем использовать:
   ["strength"] = "сила",
6. Некоторые из этих линий также содержат цветовые коды (Пример: |cFF00FF00 and |r) Не изменяйте это, пожалуйста.

TrinityAdmin Язык Команда:
Вы получили это файл, который в настоящее время содержит Enus строк, но на самом деле будет файл для 
Выбранный язык. 
1. Изменить первый линия прокомментировал ниже, что должно Быть: function Return_enUS (). Изменение
   "Enus" в четыре буквы кода для Вашего Языка (например: function Return_ruRU ().
2. Перейдите к локализации, исследуя каждую строку в файле, и изменяя США английские строки 
   НЕ изменять что-либо на левой стороне. Справо каждого уравнения меняем уравнение для языка выбранного Вами.
   Пример: ["token_do_not_edit"] = "Маркер не редактировать",
   
3. Часть текста включает в себя цветовые коды: ["info_revision"] = "| cFF00FF00Trinity Revision: | r",
   Цветовой код не может быть Локализован/Редактирован. Код цвета тегов, с открытия элемента
   и закрывающий элемент. Открытие элемент "|c" с последующим 8 номеров обозначения цвета. Запирающий элемент
   это "|r". В приведенном выше примере, "|cFF00FF00" and "|r" являются код цвета и не должны быть изменены.
   Это оставляет "Trinity Revision:" а строка для редактирования в приведенном выше примере.
4. Некоторые строки не могут быть отредактированы вообще, потому что они используются в коде или содержать код. Они
   отмечены.
5. Пожалуйста, не редактируйте комментарии. В LUA язык программирования, мы используем, код комментария отделен от кода,
   Использование "" (ничего неделает  после того, как комментарий, чтобы в конце строки) или комментарии
   может быть заключен между ними.

Если у вас есть какие-либо вопросы, свяжитесь iotech.
]]
function Return_ruRU()
  return {
--[[General]]
  --[[Tooltips]]
    ["ma_IconHint"] = "|cffeda55fClick|r Открыть TrinityAdmin. |cffeda55fShift-Click|r чтобы перезагрузить интерфейс.",
    ["tt_Default"] = "Задержи мышку над элементом управления для отображения подсказки!",
    ["tt_LanguageButton"] = "Поменять язык и перезагрузить TrinityAdmin.",
  --[[Control Labels]]
    ["ma_LanguageButton"] = "Сменить язык",
    ["info_revision"] = "|cFF00FF00Trinity Revision:|r ",
    ["info_platform"] = "|cFF00FF00Server Platform:|r ",
    ["info_online"] = "|cFF00FF00Players Online:|r ",
    ["info_maxonline"] = "|cFF00FF00Maximum Online:|r ",
    ["info_uptime"] = "|cFF00FF00Uptime:|r ",
  --[[Other]]
    ["slashcmds"] = { "/trinityadmin", "/ta" },
    ["lang"] = "Русский",
    ["realm"] = "|cFF00FF00Realm:|r "..GetCVar("realmName"), --do не изменять эту строку!
    ["char"] = "|cFF00FF00Char:|r "..UnitName("player"), --do не изменять эту строку!
    ["guid"] = "|cFF00FF00Guid:|r ",
    ["tickets"] = "|cFF00FF00Tickets:|r ",
    ["selectionerror1"] = "Выбери либо себя либо другого ИГРОКА!",
    ["selectionerror2"] = "Выбери только себя!",
    ["selectionerror3"] = "Выбери только другого игрока!",
    ["selectionerror4"] = "Выберите только NPC!",
    ["searchResults"] = "|cFF00FF00Search-Results:|r ",



--[[GM tab]]
  --[[Name]]
    ["tabmenu_Main"] = "GM",
  --[[Tooltips]]
    ["tt_MainButton"] = "Включить TrinityAdmins мэйнфреймов.",
    ["tt_DisplayAccountLevel"] = "Отображение уровня учетной записи",
    ["tt_GMOnButton"] = "Активация GM-режима.",
    ["tt_GMOffButton"] = "Отключить свой GM-режим.",
    ["tt_FlyOnButton"] = "Включить режим-Полета для выбранного персонажа.",
    ["tt_FlyOffButton"] = "Отключить режим-Полета для выбранного персонажа.",
    ["tt_HoverOnButton"] = "Активируйте Hover-режим.",
    ["tt_HoverOffButton"] = "Отключить Hover-режим.",
    ["tt_WhispOnButton"] = "Принимать шепот от других игроков.",
    ["tt_WhispOffButton"] = "Не принимать шепот от других игроков.",
    ["tt_InvisOnButton"] = "Невидимость ВКЛ.",
    ["tt_InvisOffButton"] = "Невидимость ВЫКЛ.",
    ["tt_TaxiOnButton"] = "Показать все маршруты Полетов у выбранного игрока. Отключается при выходе из мира.",
    ["tt_TaxiOffButton"] = "Отключить Показ все маршруты Полетов у выбранного игрока..",
    ["tt_ShowMapsButton"] = "Показывает Все карты для выбранного персонажа.",
    ["tt_HideMapsButton"] = "Скрывает изученые Карты для выбранного персонажа.",
    ["tt_SpeedSlider"] = "Увеличение или уменьшение скорости для выбранного персонажа.",
    ["tt_ScaleSlider"] = "Увеличение или уменьшение масштаба для выбранного персонажа.",
    ["tt_instakill"] = "Если отмечено, нажав правый клик на вражеское существо сразу убивает его.",
    ["tt_ScreenButton"] = "Сделать скриншот.",
    ["tt_BankButton"] = "Показывать Ваш Банк.",
    ["tt_Dismount"] = "Слезть с маунта если есть",
    ["tt_SetJail_A_Button"] = "Устанавливает расположение тюрьмы Альянс для вашего текущего местоположения.",
    ["tt_SetJail_H_Button"] = "Устанавливает расположение тюрьмы Орды для вашего текущего местоположения.",
    ["tt_N"] = "Переместится на Север",
    ["tt_S"] = "Переместится на Юг",
    ["tt_E"] = "Переместится на Восток",
    ["tt_W"] = "Переместится на Запад",
    ["tt_chatonbutton"] = "GM Чат ВКЛ",
    ["tt_chatoffbutton"] = "GM Чат ВЫКЛ",
    ["tt_waterwalkonbutton"] = "ВКЛ Waterwalk для выбранного персонажа",
    ["tt_watewrwalkoffbutton"] = "ВЫКЛ Waterwalk для выбранного персонажа",
    ["tt_accountlockonbutton"] = "Блокировать учетную запись",
    ["tt_accountlockoffbutton"] = "Разблокировать учетную запись",
    ["tt_DisplayAccountLvl"] = "Показать уровнь учетной записи.",
    ["tt_SpeedSliderReset"] = "Сброс скорость до 1,0",
    ["tt_ScaleSliderReset"] = "Сброс маштаб до 1,0",
    
  --[[Control Labels]]
    ["ma_OffButton"] = "ВЫКЛ",
    ["ma_displaylevelbutton"] = "Уровнь учетной записи",
    ["ma_GMOnButton"] = "ВКЛ GM-режим",
    ["ma_FlyOnButton"] = "ВКЛ Полет",
    ["ma_HoverOnButton"] = "ВКЛ Парить",
    ["ma_WhisperOnButton"] = "ВКЛ Шепот",
    ["ma_InvisOnButton"] = "ВКЛ Невидимость",
    ["ma_TaxiOnButton"] = "ВКЛ Летки",
    ["ma_ShowMapsButton"] = "Карты Показать",
    ["ma_HideMapsButton"] = "Карты Скрыть",
    ["ma_instakill"] = "Убийство выбраной цели", --Мгновенно убить вражеских существ
    ["ma_ScreenshotButton"] = "Скриншот",
    ["ma_BankButton"] = "Банк",
    ["ma_DismountButton"] = "МаунВЫКЛ",
    ["ma_SetJail_A_Button"] = "ТюрьмаАльянс",
    ["ma_SetJail_H_Button"] = "ТюрьмаОрда",
    ["gridnavigator"] = "Сетка-Навигатор",
    ["N"] = "N", --Сокращение на Север
    ["S"] = "S", --Сокращение на Юг
    ["E"] = "E", --Сокращение на Восток
    ["W"] = "W", --Сокращение на Запад
    ["ma_chatbutton"] = "GM Чат ВКЛ",
    ["ma_mapsbutton"] = "Показ всех Карт",
    ["ma_waterwalkbutton"] = "Waterwalk ВКЛ",
    ["ma_accountlockbutton"] = "Акк Блок",
  --[[Other]]



--[[Char Tab]]
  --[[Name]]
    ["tabmenu_Char"] = "Перс",
    ["tt_CharButton"] = "Переключится на окно Выбраного для конкретных действий с ним.",
  --[[Tooltips]]
    ["tt_RotateLeft"] = "Повернуть влево.",
    ["tt_RotateRight"] = "Повернуть вправо.",
    ["tt_killbutton"] = "Убить Выбранное существо/игрока",
    ["tt_reviveplayer"] = "Возрождает выбраного существо/игрок",
    ["tt_saveplayer"] = "Сохранение Данных выбранного игрока",
    ["tt_KickButton"] = "Кик выбраного Игрока с Сервера.",
    ["tt_CooldownButton"] = "Удаляет/Истекает все заклинания влияющие на кулдауны выбранного персонажа.",
    ["tt_GUIDButton"] = "Показывает GUID выбранного персонажа.",
    ["tt_PinfoButton"] = "Получить информацию о выбранном ИГРОКЕ.",
    ["tt_DistanceButton"] = "Получить расстояние до выбранного моба.",
    ["tt_RecallButton"] = "Возврат выбранного игрока на место старта последнего ТП.",
    ["tt_DemorphButton"] = "Удаляет любые Изменения на выбранном персонаже.",
    ["tt_ShowMapsCharButton"] = "Показывает карты для выбранного персонажа.",
    ["tt_HideMapsCharButton"] = "Скрывает карты для выбранного персонажа.",
    ["tt_learnlangbutton"] = "Узучить выбранные Язык(и)",
    ["tt_modifybutton"] = "Изменить выбранный атрибут по введенному количеству",
    ["tt_resetbutton"] = "Сброс выбранного атрибута",
    ["tt_modelzoominbutton"] = "Увеличение выбранной модели",
    ["tt_modelzoomoutbutton"] = "Уменьшение выбранной модели",
    ["tt_charbindsight"] = "Персональное свое Видение выбранного Элемента",
    ["tt_charunbindsight"] = "Изменяет ваше Видение к выбранному Элемента (нарушена в CORE - Клик правой кнопкой мыши значок шестеренки в Баффах области)",
    ["tt_charrename"] = "ВКЛ Переименование выбранного Персонажа при следующем входе",
    ["tt_charcustomize"] = "ВКЛ Настройки выбранного Перса при следующем входе", --Изменить Цвет кожи, Лицо, Прическа, Цвет волос, Борода усы, Имя перса
    ["tt_charchangerace"] = "ВКЛ Смена Смена Расы выбранного Персонажа при следующем входе",
    ["tt_charchnagefaction"] = "ВКЛ Фракции выбранного Персонажа при следующем входе",
    ["tt_charcombatstop"] = "Остановка боя для выбранного персонажа (или себе)",
    ["tt_charmaxskill"] = "Дать навыки на Максимум для выбранного персонажа в зависимости от уровня",
    ["tt_charfreeze"] = "Блокировать выбранного Персонажа и Выключить чат",
    ["tt_charunfreeze"] = "Разблокировать выбранного Персонажа и Включить чат",
    ["tt_charlistfreeze"] = "Показать список Блокированых игроков в окне чата",
    ["tt_charpossess"] = "ВКЛ Подчинить существо",
    ["tt_charunpossess"] = "ВЫКЛ Подчинить существо",
    ["tt_charrecall"] = "Возврат выбранного игрока в последнее местоположение до телепортации", --ВозвратТП
    ["tt_charrepair"] = "Ремонт брони и оружия выбранного игрока",

  --[[Control Labels]]
    ["ma_KillButton"] = "Убить", --Убийство выбраной цели
    ["ma_ReviveButton"] = "Воскресить",
    ["ma_SaveButton"] = "Сохранить",
    ["ma_KickButton"] = "Кик",
    ["ma_CooldownButton"] = "Кулдаун", --Откат заклинания или способности
    ["ma_charrename"] = "Изм.Ник",
    ["ma_charchnagefaction"] = "ИзмФракцию",
    ["ma_charfreeze"] = "Блокировать", --Персонажа
    ["ma_charpossess"] = "Управлять", --Подчинить существо
    ["ma_charrepair"] = "Ремонт", --Ремонт брони и оружия
    ["ma_GUIDButton"] = "Показ GUID",
    ["ma_PinfoButton"] = "ИнфоPLAYER",
    ["ma_DistanceButton"] = "Растояние",
    ["ma_RecallButton"] = "Recall", --Заклинание, Пригласить
    ["ma_charcustomize"] = "Настроить", --Изменить Цвет кожи, Лицо, Прическа, Цвет волос, Борода усы, Имя перса    ["ma_DemorphButton"] = "ОтмнМорфа",
    ["ma_ShowMapsCharButton"] = "Показ Карт", --Показывать карты как иследованые,открытые
    ["ma_HideMapsCharButton"] = "Скрыт Карты",
    ["ma_LearnLangButton"] = "Все Языки ВЫКЛ", --отменить знание языков
    ["ma_Learn"] = "Обучиться",
    ["ma_Modify"] = "Изменение",
    ["ma_Reset"] = "Сброс",
    ["ma_CharBindsight"] = "Свой Взгляд", --Смотреть его глазами, Применить свой взгляд
    ["ma_CharUnBindsight"] = "ВЫКЛ Взгляд", --ВЫКЛ смотреть его глазами
    ["ma_charchangerace"] = "Смена Расы",
    ["ma_charcombatstop"] = "Бой Отмена", --Прекратить бой, снять комбат
    ["ma_charmaxskill"] = "Макс навык", --Максимальный навык владения различными видоми боя
    ["ma_charunfreeze"] = "Разблок", --Персонажа
    ["ma_charlistfreeze"] = "Лист Блок", --список Блокированых игроков
    ["ma_charunpossess"] = "ВыклУправл",
    ["ma_charrecall"] = "ВозвратТП", --Возврат выбранного игрока в последнее местоположение до телепортации
    
  --[[Other]]
    ["ma_LevelUp"] = "Уровень Повысить",
    ["ma_LevelDown"] = "Уровень Понизить",
    ["ma_Money"] = "Деньги",
    ["ma_Energy"] = "Энергия",
    ["ma_Rage"] = "Ярость",
    ["ma_Mana"] = "Мана",
    ["ma_Healthpoints"] = "Здоровье",
    ["ma_Talents"] = "Таланты",
    ["ma_Stats"] = "Статы",
    ["ma_Spells"] = "Спеллы",
    ["ma_Honor"] = "Честь",
    ["ma_Level"] = "Уровень",
    ["ma_AllLang"] = "Все языки",
    ["ma_resetallspells"] = "Все Заклинания", --изучить все заклинания
    ["ma_resetalltalents"] = "Все Таланты", --изучить все таланты
    ["ma_achievements"] = "Достижения",
    ["ma_AllSpeeds"] = "Все Спеки",
    ["ma_Arena"] = "Арена",
    ["ma_BackWalk"] = "Вернутся", --Возврат
    ["ma_Drunk"] = "Пьяный",
    ["ma_FlySpeed"] = "Летать Скорость",
    ["ma_MountSpeed"] = "Маунт Скорость",
    ["ma_Gender"] = "Пол", --Муж Жен
    ["ma_Phase"] = "Фаза",
    ["ma_RunicPower"] = "Рунны", --Рунная сила
    ["ma_Speed"] = "Скорость",
    ["ma_StandSate"] = "StandState", --Встать Локация
    ["ma_SwimSpeed"] = "Плавания Скорость",
    ["ma_TalentPoints"] = "Талант очки",
    
    -- languages
    ["Common"] = "Общий",
    ["Orcish"] = "Орочий",
    ["Taurahe"] = "Таурий",
    ["Darnassian"] = "Дарнассийский",
    ["Dwarvish"] = "Карликовый",
    ["Thalassian"] = "Талассийский",
    ["Demonic"] = "Демонический",
    ["Draconic"] = "Драконий",
    ["Titan"] = "Титановый",
    ["Kalimag"] = "Калимагский",
    ["Gnomish"] = "Гномий",
    ["Troll"] = "Троллий",
    ["Gutterspeak"] = "Эмоция",
    ["Draenei"] = "Дренейский",
  
  
  
--[[Char2 Tab]]
  --[[Name]]
    ["tt_Char2Button"] = "Переключится на окно Выбраного Чара2 для конкретных действий с ним.",
  --[[Tooltips]]
    ["tt_banbutton"] = "Parameters= <account|ip|character> $NameOrIp <-1|xxdyyhzzm> $reason   [[Ban acct/IP & kick. -1=permban, or a string like 4d3h24m16s]]",
    ["tt_gonamebutton"] = "Parameter= $charactername  [[ТП вас к указанному персонажу]]", --Телепортирует вас к указанному персонажу
    ["tt_createguildbutton"] = "Parameters= $GuildLeaderName $GuildName  [[Создает гильдию с именем $GuildНазвание, с $GuildLeaderНик Лидером]]",
    ["tt_teleaddbutton"] = "Parameter= $Name  [[Добавляет место телепорта .tele команду для вашего текущего местоположения с именем $Name]]",
    ["tt_baninfobutton"] = "Parameter= <account|ip|character>  [[Просмотр детальной инфор о Блокировках на указанный account/ip/character]]",
    ["tt_groupgobutton"] = "Parameter= $charactername   [[Телепортирует указанный персонаж и его/ее группу к вам]]",
    ["tt_guildinvitebutton"] = "Parameters= $charactername $guildname   [[Добавляет $charactername в гильдию $guildname]]",
    ["tt_teledelbutton"] = "Parameter= $telename  [[Удаляет ТП с именем $telename из .tele список мест]]",
    ["tt_banlistbutton"] = "Parameters= <account|ip> $NameOrIp   [[Поиск и возврат для конкретных запретов, соответствующих параметров]]", --Установка символ, заданный в ранг указанный в его/ее гильдии
    ["tt_namegobutton"] = "Parameter= $charactername   [[Телепортирует указанный персонаж к Вам]]",
    ["tt_guildrankbutton"] = "Parameters= $charactername #ranknumber   [[Sets the character specified to the rank specified in his/her guild]]",
    ["tt_telegroupbutton"] = "Parameter= $telename  [[Teleports the **selected** character and his/her group to the .tele location named $telename]]",
    ["tt_unbanbutton"] = "Parameters= <account|ip|character> $NameOrIp  [[Unbans the specified acct/IP/character]]",
    ["tt_guilddeletebutton"] = "Parameter= $guildname  [[Deletes the specified Guild]]",
    ["tt_guilduninvitebutton"] = "Parameter= $charactername  [[Kicks the specified character out of his/her guild]]",
    ["tt_telenamebutton"] = "Parameters= $charactername $telename  [[Teleports $charactername to $telename]]",
    ["tt_mutebutton"] = "Parameters= $charactername #minutes  [[Disables chat for $charactername's entire account for #minutes]]",
    ["tt_charmorphbutton"] = "Parameters = #DisplayID [[Enter the DisplayID of the morph you want to apply]]", 
    ["tt_charaurabutton"] = "Parameters = #AuraID [[Enter the AuraID of the aura you want to apply]]",
    ["tt_charunaurabutton"] = "Parameters = #AuraID [[Enter the AuraID of the aura you want to remove]]",
    ["tt_JailAButton"] = "Parameter= $charactername [[Sends the character whose name appears in this box to the Alliance Jail]]", --Тюрьма Альянса
    ["tt_JailHButton"] = "Parameter= $charactername [[Sends the character whose name appears in this box to the Horde Jail]]",--Тюрьма Орды
    ["tt_UnJailButton"] = "Parameter= $charactername [[Unjails the character whose name appears in this box.]]",
    ["tt_UnMuteButton"] = "Мут $player.",
    ["tt_QuestAddButton"] = "Добавляет #questid для **Имя** player.",
    ["tt_QuestCompleteButton"] = "Отметка #questid Выполнен для **Имя** персонажу.",
    ["tt_QuestRemoveButton"] = "Удаляет #questid для **Имя** персонажа.",
    ["tt_DamageButton"] = "Parameter= #amount of damage to apply to **Имя** creature/персонаж",
    ["tt_HideAreaButton"] = "СкрытьКарты #areaid для **Имя** персонажа.",
    ["tt_ShowAreaButton"] = "ПоказКарты #areaid для **Имя** персонажа.",
    ["tt_HonorAddButton"] = "Добавляет #honorpoints для **Имя** персонаж.",
    ["tt_HonorUpdateButton"] = "Не требуется параметра. Сохранить Честь **selected** персонаж.",
  --[[Control Labels]]
    ["ma_parameter"] = "Параметр(ы)",
    ["ma_ParameterizedCommands"] ="Параметризованные Команды",
    ["ma_banbutton"] = "Бан",
    ["ma_gonamebutton"] = "Появляются", --Карты показать
    ["ma_createguildbutton"] = "G Создать",
    ["ma_teleaddbutton"] = "ТП Создать",
    ["ma_baninfobutton"] = "Бан Инфо",
    ["ma_groupgobutton"] = "ГруппуСумон",
    ["ma_guildinvitebutton"] = "Ги Пригл.", --Гильдию
    ["ma_teledelbutton"] = "УдалитьТП",
    ["ma_banlistbutton"] = "Бан Лист",
    ["ma_namegobutton"] = "Сумонуть", --Сумонуть
    ["ma_guildrankbutton"] = "Ги Банк",
    ["ma_telegroupbutton"] = "TeleГруппу",
    ["ma_unbanbutton"] = "СнятьБан",
    ["ma_guilddeletebutton"] = "Ги Выгнать", --Гильдии
    ["ma_guilduninvitebutton"] = "Ги Оменит",
    ["ma_telenamebutton"] = "TeleИмя", --Название телепортации
    ["ma_mutebutton"] = "Мут", --Блокировать писать в чат
    ["ma_Aura"] = "Аура",
    ["ma_UnAura"] = "АуруВЫКЛ",
    ["ma_Morph"] = "Изменение",
    ["ma_JailAButton"] = "Тюрьма (AЛ)", --Тюрьма (Aльянса)
    ["ma_JailHButton"] = "Тюрьма (ОРД)",
    ["ma_UnJailButton"] = "UnТюрьма",
    ["ma_UnMuteButton"] = "МутВЫКЛ",
    ["ma_QuestAddButton"] = "КвестВзять", --Добавить
    ["ma_QuestCompleteButton"] = "Квест Full",
    ["ma_QuestRemoveButton"] = "Квест Отм.",
    ["ma_DamageButton"] = "Урон",
    ["ma_HideAreaButton"] = "СкрытьКарты",
    ["ma_ShowAreaButton"] = "Показ Карты",
    ["ma_HonorAddButton"] = "ЧестьДобав.",
    ["ma_HonorUpdateButton"] = "ЧестьУдалить",
  --[[Other]]



--[[NPC Tab]]
  --[[Name]]
    ["tabmenu_NPC"] = "NPC",
    ["tt_NpcButton"] = "Переключится на окно с NPC, связанных функций.",
  --[[Tooltips]]
    ["tt_NPCRotateLeft"] = "Повернуть влево",
    ["tt_NPCRotateRight"] = "Повернуть вправо",
    ["tt_NPCKillButton"] = "Убийство выбраной цели",
    ["tt_npcrespawn"] = "Воскресить выбраную цель, или если ни кто не выбран, все близлежащие существа",
    ["tt_NPCDistanceButton"] = "Дистанция до выбранного моба.",
    ["tt_NPCGUIDButton"] = "Показывает GUID выбранного персонажа.",
    ["tt_NPCInfoButton"] = "Получить информацию о выбранном NPC.",
    ["tt_NPCDemorph"] = "Отмена изменения выбранного NPC",
    ["tt_NPCMove"] = "Переместить выбранное существо туда где Вы стоите",
    ["tt_NPCDel"] = "Удаляет выбранное существо",
    ["tt_getguid"] = "Показать GUID и ID выбранного существа ",
    ["tt_NPCAdd"] = "Добавляет копию этого NPC где Вы стоите.",
    ["tt_NPCGo"] = "ТП Вас к NPC по его GUID",
    ["tt_NPCMorph"] = "Parameters = #DisplayID [[Введите DisplayID Изменения которое Вы хотите применить]]",
    ["tt_NPCSay"] = "Убедитесь, выбранный NPC сказать [parameters]",
    ["tt_NPCYell"] = "Убедитесь, выбранный NPC кричать [parameters]",
    ["tt_NPCAura"] = "Parameters = #AuraID [[Введите AuraID ауры которое Вы хотите применить]]",
    ["tt_NPCUnaura"] = "Parameters = #AuraID [[Введите AuraID ауры которое Вы хотите Отменить]]",
    ["tt_PlayEmote"] = "Играть Эмоции из списка слева",
    ["tt_GPSButton"] = "Показать координаты для выбранного персонажа.",
    ["tt_DisplayUp"] = "Увеличение NPC DisplayID больше на 1",
    ["tt_DisplayDown"] = "Уменьшение NPC DisplayID меньше на 1",
    ["tt_IDUp"] = "Увеличение NPC ID больше на 1",
    ["tt_IDDown"] = "Уменьшение NPC ID меньше на 1",
    ["tt_npcmodelzoominbutton"] = "Увеличить выбранную модель",
    ["tt_npcmodelzoomoutbutton"] = "Уменьшить выбранную модельl",
    ["tt_npcbindsight"] = "Применить ваше видение к выбранному NPC",
    ["tt_npcunbindsight"] = "Отменить свое видение на выбранном NPC (перелом в ядро ​​- правой кнопкой мыши значок шестеренки в Баффы области)", --(BROKEN in CORE - right-click gear icon in buffs area)
    ["tt_npccometome"]  = "Иди ко мне Расположение не сохраняется в DB.", --Заставляет выбранного NPC прийти к вам где находитесь.
    ["tt_npcpossess"] = "Управлять", --Подчинить существо
    ["tt_npcunpossess"] = "ВыклУправл.",
    
  --[[Control Labels]]
    ["Morph"] = "Изменение", --каких бы то ни было данных NPC
    ["ma_NPCKillButton"] = "Убить",
    ["ma_Respawn"] = "Воскресить",
    ["ma_NPCDistanceButton"] = "Дистанция",
    ["ma_NPCGUIDButton"] = "Показать GUID",
    ["ma_NPCInfoButton"] = "NPC Инфо",
    ["ma_NPCDemorph"] = "ВЫКлИзменение",
    ["ma_NPCMove"] = "NPC Переместить",
    ["ma_NPCDel"] = "NPC Удалить",
    ["ma_getguid"] = "Получить GUID",
    ["ma_NPCAdd"] = "NPC Добавть",
    ["ma_NPCGo"] = "NPC Перейти",
    ["ma_NPCMorph"] = "Изменение",
    ["ma_NPCSay"] = "NPC Сказать",
    ["ma_NPCYell"] = "NPC Крик",
    ["ma_NPCAura"] = "NPC Аура",
    ["ma_NPCUnAura"] = "NPC АуруВЫКЛ",
    ["ma_ParameterBox"] = "Параметр",
    ["ma_PlayEmote"] = "Играть эмоции",
    ["ma_NPCBindsight"] = "Смотреть его глазами",
    ["ma_NPCUnBindsight"] = "ОфСмотреть его глазами",
    ["ma_NPCComeToMe"] = "Иди ко мне",
    ["ma_npcpossess"] = "Управлять",
    ["ma_npcunpossess"] = "ВыклУправл",
  --[[Other]]

--[[NPC2 Tab]]
  --[[Name]]
    ["tabmenu_NPC2"] = "NPC2",
    ["tt_Npc2Button"] = "Переключите окно с NPC, связанных функций.",
    ["ma_WayShow1"] = "WayShowOn",
    ["ma_WayShow0"] = "WayShowOff",
    ["ma_MoveStackButton"] = "Показать Перемещение",
    ["ma_NPCFreezeButton"] = "NPCStay",
    ["ma_WayAllDel"] = "NPCStayDel",
    ["ma_WayMAdd"] = "WayMAdd",
    ["ma_NPCUnFreeze_RandomButton"] = "Mv Случайная",
    ["ma_NPCUnFreeze_WayButton"] = "Mv Waypt",
    ["ma_WayMDel"] = "WayMDel",
    ["ma_WayEndAdd"] = "WayEndAdd",
    ["[WayAdd]"] = "[WayAdd]",
    ["[WayShow]"] = "[WayShow]",
    ["tt_NPCFreezeButton"] = "Остановка движения выбранного NPC, сохранение маршрутных точек",
    ["tt_NPCFreezeDelButton"] = "Остановка движения выбранного NPC, не сохранять маршрутных точек",
    ["tt_WayEndAdd"] = "Добавляет точку в конец существующего маршрута",
    ["tt_NPCAddWay"] = "Добавляет точку в маршруте. Существо GUID должен быть в поле ниже", --Adds a waypoint to the stack. Creature GUID must be in below box
    ["tt_WayMAdd"] = "Добавляет точку к выбранным существ существующих перемещения маршрута", --Adds a waypoint to selected creatures existing move stack
    ["tt_WayModifyDel"] = "Удаляет выбранный путевой точки из существ существующих перемещения маршрут",
    ["tt_WayShow0"] = "Остановка показывая точек для выбранного моба.",
    ["tt_WayShow1"] = "Показать точки для выбранного моба.",
    ["tt_NPCAdd_WayShowOn"] = "показать точки для выбранного моба",
    ["tt_NPCUnFreeze_RandomButton"] = "Позволяет случайное движение выбранного NPC.",
    ["tt_NPCUnFreeze_WayButton"] = "Позволяет путевой движение выбранного NPC.",
    ["tt_MoveStackButton"] = "Показывает движения маршрута выбранного персонажа.",


--[[GObjects Tab]]
  --[[Name]]
    ["tabmenu_GO"] = "GOB",
    ["tt_GOButton"] = "Переключите окно с функциями GObject.",
  --[[Tooltips]]
    ["tt_ObjGo"] = "Перейти к выбранному объектуt",
    ["tt_ObjAdd"] = "Добавить копию выделеного Объекта по Вашему месту и ориентации",
    ["tt_ObjMove"] = "Переместить выделеный Объект на Ваше место",
    ["tt_ObjTurn"] = "Включает целевой объект в соответствии с Ваший ориентацией", --Turns the targeted object to mathc your orientation
    ["tt_ObjDel"] = "Удаляет выделеный объект",
    ["tt_ObjNear"] = "Возвращает данные об объектах рядом с вами", --показывает
    ["tt_ObjTarget"] = "Цель ближайший объект",
    ["tt_ObjActivate"] = "Включение выделеный Объект",
    ["tt_ObjAddTemp"] = "Добавляет временную копию объекта",
    ["tt_ObjInfo"] = "Получить расширенную информацию об объекте",
    ["tt_ObjSetPhase"] = "Установка фазы объекта",
    
  --[[Control Labels]]
    ["ma_OBJGo"] = "Перейти Объекту",
    ["ma_OBJAdd"] = "Объект Добавить",
    ["ma_OBJMove"] = "Объект Перестить",
    ["ma_OBJTurn"] = "Объект ВКЛ",
    ["ma_OBJDel"] = "Объект Удалить",
    ["ma_OBJNear"] = "Объект Near",
    ["ma_OBJTarget"] = "Объект Выделить",
    ["ma_OBJActivate"] = "Объект Активация",
    ["ma_OBJAddTemp"] = "Объект Временая копия",
    ["ma_OBJInfo"] = "Объект Инфо",
    ["ma_OBJSetPhase"] = "Объект Фаза",
    
  --[[Other]]
--[[Tele Tab]]
  --[[Name]]
    ["tabmenu_Tele"] = "Tele",
    ["tt_TeleButton"] = "Переключится в окно Телепорт-функций.",
  --[[Tooltips]]
  --[[Control Labels]]
    ["Zone"] = "|cFF00FF00Zone:|r ",
  --[[Other]]
    ["ma_NoZones"] = "Нет Зоны!",
    ["ma_NoSubZones"] = "Нет подзоны!",



--[[Tickets Tab]]
  --[[Name]]
    ["tabmenu_Ticket"] = "Тикеты",
    ["tt_TicketButton"] = "Переключится в окно, которое показывает все Тикеты и позволяет управлять им.",
  --[[Tooltips]]
  --[[Control Labels]]
    ["ma_LoadTicketsButton"] = "Обновить",
    ["ma_GetCharTicketButton"] = "Сумонуть",
    ["ma_GoCharTicketButton"] = "ТП к Игроку",
    ["ma_AnswerButton"] = "Письмо",
    ["ma_DeleteButton"] = "Закрыть",
    ["ma_TicketCount"] = "|cFF00FF00Tickets:|r ",
    ["ma_TicketsNoNew"] = "У Вас нет новых Тикетов.",
    ["ma_TicketsNewNumber"] = "Вы должны |cffeda55f%s|r новые Тикеты!",
    ["ma_TicketsGoLast"] = "Перейти к последнему Тикету Игрока (%s).",
    ["ma_TicketsGetLast"] = "Ообщает %s тебе.",
    ["ma_TicketsInfoPlayer"] = "|cFF00FF00Player:|r ",
    ["ma_TicketsInfoStatus"] = "|cFF00FF00Status:|r ",
    ["ma_TicketsInfoAccount"] = "|cFF00FF00Account:|r ",
    ["ma_TicketsInfoAccLevel"] = "|cFF00FF00Account-Level:|r ",
    ["ma_TicketsInfoLastIP"] = "|cFF00FF00Last IP:|r ",
    ["ma_TicketsInfoPlayedTime"] = "|cFF00FF00Played time:|r ",
    ["ma_TicketsInfoLevel"] = "|cFF00FF00Level:|r ",
    ["ma_TicketsInfoMoney"] = "|cFF00FF00Money:|r ",
    ["ma_TicketsInfoLatency"] = "|cFF00FF00Latency:|r ",
    ["ma_TicketsNoInfo"] = "Нет информации в наличии",
    ["ma_TicketsNotLoaded"] = "Нет Тикеты не грузиться...",
    ["ma_TicketsNoTickets"] = "Нет Тикетов!",
    ["ma_TicketTicketLoaded"] = "|cFF00FF00Loaded Ticket-Nr:|r %s\n\nPlayer Information\n\n",
    ["ma_Reload"] = "Перезагрузить",
    ["ma_LoadMore"] = "Загрузить больше...",
    ["tt_TicketOn"] = "Анонс новые Тикеты.",
    ["tt_TicketOff"] = "Не сообщать о новых Тикетах.",
  --[[Other]]



--[[Misc Tab]]
  --[[Name]]
    ["tabmenu_Misc"] = "Разное",
    ["tt_MiscButton"] = "Переключите окно на разные действия.",
  --[[Tooltips]]
    ["tt_FrmTrSlider"] = "Прозрачность Изменение кадра.",
    ["tt_BtnTrSlider"] = "Изменить кнопку Прозрачность.",
  --[[Control Labels]]
    ["cmd_toggle"] = "Переключится в главное окно",
    ["cmd_transparency"] = "Переключение основной прозрачности (0.5 or 1.0)",
    ["cmd_tooltip"] = "Переключить кнопку погоды подсказки показана или нет", --Toggle wether the button tooltips are shown or not
  --[[Other]]
    ["ma_WeatherFine"] = "Хорошая",
    ["ma_WeatherFog"] = "Туманно",
    ["ma_WeatherRain"] = "Дождь",
    ["ma_WeatherSnow"] = "Снег",
    ["ma_WeatherSand"] = " Буря",



--[[Server Tab]]
    ["tabmenu_Server"] = "Серв",
    ["tt_ServerButton"] = "Показать несколько серверов информацию и выполнять действия, касающиеся сервера.",
  --[[Tooltips]]
    ["tt_AnnounceButton"] = "Показать в чате Системное сообщение.",
    ["tt_ShutdownButton"] = "Выключить сервер через определеное количество секунд, если опустить немедленно выключить!",
  --[[Control Labels]]
    ["ma_AnnounceButton"] = "Анонс",
    ["ma_ShutdownButton"] = "Выкл. сервер!",
  --[[Other]]



--[[Log Tab]]
    ["tabmenu_Log"] = "Логи",
    ["tt_LogButton"] = "Показать журнал всех действий, совершенных с TrinityAdmin.",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[PvP Tab]]
    ["tabmenu_pvp"] = "PvP",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[Event Tab]]
    ["tabmenu_event"] = "Эвент",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[RPG Tab]]
    ["tabmenu_rpg"] = "RPG",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[Vendor Tab]]
    ["tabmenu_vendor"] = "Вендор",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[AhBot Tab]]
    ["tabmenu_ahbot"] = "AhBot",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]
  

    
--[[Who Tab]]
    ["tabmenu_who"] = "Кто",
  --[[Tooltips]]
  --[[Control Labels]]
    ["ma_ShowWhoButton"] = "Обновить",
    ["ma_SummonWhoButton"] = "Сумон",
    ["ma_GoCharWhoButton"] = "Показать",
    ["ma_AnswerWhoButton"] = "Почта",
    ["ma_DeleteWhoButton"] = "Кик",
    ["ma_whisperbutton"] = "Шепот",
  --[[Other]]

    
    
--[[Pop UPs]]
   --[[General]]
   --[[ToolTips]]
    ["tt_ItemButton"] = "Переключение в всплывающее окно с функцией поиска элементов и управлять вашим избраным.",
    ["tt_ItemSetButton"] = "Переключение в всплывающее окно с функцией поиска наборов и управлять вашим избраным.",
    ["tt_SpellButton"] = "Переключение в всплывающее окно с функцией поиска заклинаний и управлять вашим избраным.",
    ["tt_QuestButton"] = "Переключение в всплывающее окно с функцией поиска квестов и управлять вашим избраным.",
    ["tt_CreatureButton"] = "Переключение в всплывающее окно с функцией поиска существ и управлять вашим избраным.",
    ["tt_ObjectButton"] = "Переключение в сплывающее окно с функцией поиска объектов и управлять вашим избраным.",
    ["tt_SearchDefault"] = "Теперь вы можете ввести ключевое слово и начать поиск.",
    ["tt_SkillButton"] = "Переключение в всплывающее окно с функцией поиска навыков и управлять вашим избраным.",
  --[[Labels]]
    ["ma_ItemButton"] = "Предмет-Поиск",
    ["ma_ItemSetButton"] = "ItemSet-Поиск", --предмета из набора
    ["ma_SpellButton"] = "Заклинание", --Поиск Заклинания
    ["ma_QuestButton"] = "Квест-Поиск",
    ["ma_CreatureButton"] = "СуществоПоиск",
    ["ma_ObjectButton"] = "Объект-Поиск",
    ["ma_TeleSearchButton"] = "ТП-Поиск",
    ["ma_MailRecipient"] = "получатель",
    ["ma_Mail"] = "Письмо",
    ["ma_Send"] = "Отправитель",
    ["ma_MailSubject"] = "Тема",
    ["ma_MailYourMsg"] = "Здесь ваше сообщение!",
    ["ma_SearchButton"] = "Поиск...",
    ["ma_ResetButton"] = "Сброс",
    ["ma_FavAdd"] = "Добавить выбранные",
    ["ma_FavRemove"] = "Удалить выбранное",
    ["ma_SelectAllButton"] = "Выбрать все",
    ["ma_DeselectAllButton"] = "Отменить все",
    ["ma_MailBytesLeft"] = "Байт осталось: ",
    ["ma_SkillButton"] = "Навык-Поиск",
    ["ma_SkillVar1Button"] = "Навык",
    ["ma_SkillVar2Button"] = "Макс Навык",
    ["ma_ItemVar1Button"] = "Количество",
    ["ma_ObjectVar1Button"] = "Лут Template",
    ["ma_ObjectVar2Button"] = "Спавн Время",
    ["ma_NoFavorites"] = "Счас в настоящее время нет сохраненого избраного!", --There are currently no saved favorites
    ["favoriteResults"] = "|cFF00FF00Favorites:|r ",
  
  
  
--[[Deprecated, but may be used again.]]  
    ["ma_LearnAllButton"] = "Все заклинания",
    ["ma_LearnCraftsButton"] = "Все профессии и рецепты",
    ["ma_LearnGMButton"] = "По умолчанию GM заклинания",
    ["ma_LearnClassButton"] = "Все заклинания класса",
    ["ma_GPSButton"] = "GPS",
    ["ma_Online"] = "Онлайн",
    ["ma_Offline"] = "Оффлайн",



--[[Linkifier]]
    ["lfer_Spawn"] = "Спавн",
    ["lfer_List"] = "Список",
    ["lfer_Reload"] = "Перезагрузить",
    ["lfer_Goto"] = "Goto",
    ["lfer_Move"] = "Переместить",
    ["lfer_Turn"] = "Включить",
    ["lfer_Delete"] = "Удалить",
    ["lfer_Teleport"] = "Телепорт",
    ["lfer_Morph"] = "Изменение",
    ["lfer_Add"] = "Добавить",
    ["lfer_Remove"] = "Удалить",
    ["lfer_Learn"] = "Изучить",
    ["lfer_Unlearn"] = "Забыть",
    ["lfer_Error"] = "Ошибка Строка поиска Согласованные но ошибка или не в состоянии найти тип", --Error Search String Matched but an error occured or unable to find type
    
--[[New additions]]
    ["parameters"]= "Параметр (ы):",
    ["gmingame"] = "GMs в игре",
    ["gmlist"] = "GM Лист",
    ["petcreate"] = "Pet Создать",
    ["petlearn"] = "Pet Learn",
    ["petunlearn"] = "Pet UnLearn",
    ["pettp"] = "Pet TP",
    ["lookuptaxi"] = "Поиск Летки",
    ["gotaxinode"] = "ТП ЛеткаNode",
    ["gotrigger"] = "ТП Trigger",
    ["goxy"] = "ТП XY",
    ["goxyz"] = "ТП XYZ",
    ["gozonexy"] = "ТП зонуXY",
    ["lookupzone"] = "Поиск зоны",
    ["cast"] = "Каст",
    ["castback"] = "Каст Назад",
    ["castdist"] = "Каст район",
    ["castself"] = "Каст на себя",
    ["casttarget"] = "Каст в Цель",
    ["listitem"] = "Лист Item",
    ["GmClear"] = "Очистить",
    ["acctcreate"] = "Акк создать",
    ["acctdelete"] = "Акк Удалить",
    ["acctaddon"] = "Акк Аддон",
    ["acctgmlvl"] = "Акк GMLvl",
    ["acctpasswd"] = "Акк Пароль",
    ["gmnotify"] = "GM Анонс",
    ["ma_who_customize"]="Настроить",
    ["ma_who_chardelete"]="|c00FF0000Char Del|r",
    ["ma_who_charrename"] = "Переименовать",
    ["ma_who_1daybanbutton"] = "1деньБан",
    ["ma_who_permbanbutton"] = "ПерманентБан",
    ["ma_who_jailabutton"] = "Тюрьма(A)",
    ["ma_who_jailhbutton"] = "Тюрьма(H)",
    ["ma_who_unjailbutton"] = "UnТюрьма",
    ["tt_gmingamebutton"] = "Показ GMs которые зашли.",
    ["tt_gmlistbutton"] = "Показ GM аккаунтов на этом сервере",
    ["tt_petcreatebutton"] = "Делает выбранного животного вашим питомцем.",
    ["tt_petlearnbutton"] = "Учит питомца навыку [[Parameter: #SPELLID]]",
    ["tt_petunlearnbutton"] = "Забыть у питомца навык [[Parameter: #SPELLID]]",
    ["tt_pettpbutton"] = "Modifies pet's training points [[Parameter: #points]]",
    ["tt_lookuptaxibutton"] = "Lookup a TaxiNode [[Parameter: $Areanamepart]]",
    ["tt_gotaxinodebutton"] = "Телепорт к данной TaxiNod [[Parameter: #taxinode]]",
    ["tt_gotriggerbutton"] = "Телепорт к данным месту таргета [[Parameter: #trigger_id]]",
    ["tt_goxybutton"] = "Телепорт в заданные координаты на уровне земли/воды уровень on MapID. If MapID omitted, current map [[Parameters: #x #y [#mapid]]]",
    ["tt_goxyzbutton"] = "Teleports to given coordinates at #z level on MapID. If MapID omitted, current map [[Parameters: #x #y #z [#mapid]]]",
    ["tt_gozonexybutton"] = "Teleports to given coordinates at ground/water level in ZoneID. If ZoneID omitted, current zone [[Parameters: #x #y [#zoneid]]]",
    ["tt_lookupzonebutton"] = "Lookup a Zone. [[Parameters: $Areanamepart]]",
    ["tt_castbutton"] = "Cast a spell. [[Parameters: #SpellID]]",
    ["tt_castbackbutton"] = "Selected creature will cast spell [SpellID] at YOU. [[Parameters: #SpellID]]",
    ["tt_castdistbutton"] = "You cast a spell [SpellID] at distance [#Dist]. [[Parameters: #SpellID #Dist]]",
    ["tt_castselfbutton"] = "Selected creature casts spell [SpellID] at itself. [[Parameters: #SpellID]]",
    ["tt_casttargetbutton"] = "Selected creature casts spell [SpellID] at it's target. [[Parameters: #SpellID]]",
    ["tt_gmclearbutton"] = "Очищает окно параметров.",
    ["tt_listitembutton"] = "список всех вхождений [#itemID]. [[Parameters: #ItemID]]",
    ["tt_acctcreatebutton"] = "Создает аккаунт игрока [[Parameters: $accountname $password]]",
    ["tt_acctdeletebutton"] = "Удалить аккаунт игрока и всех персонажей [[Parameters: $accountname]]",
    ["tt_acctaddonbutton"] = "Sets $account to use #addon(0=WoW, 1=TBC, 2=WotLK) [[Parameters: $accountname #addon]]",
    ["tt_acctgmlvlbutton"] = "Sets $account to #gmlevel (0=Player, 1=Helper, 2=Assistant, 3=GM, 4=Admin) [[Parameters: $accountname #gmlevel]]",
    ["tt_acctpasswdbutton"] = "Sets $account $password [[Parameters: $accountname $password $password]]",
    ["tt_gmnotifybutton"] = "Sends message $message to all online GMs [[Parameters: $message]]",
    ["tt_who_customize"] = "Флаг персонажу для настройки при следующем входе в игру.",
    ["tt_who_chardelete"] = "ВНИМАНИЕ! Удаление выбранного персонажа. ВНИМАНИЕ!",
    ["tt_who_charrename"] = "Флаг выбранные персонажу для переименования при следующем входе.",
    ["tt_who_permbanbutton"] = "Баны аккаунта выбранного персонажа ПОСТОЯННО PERMANENTLY",
    ["tt_who_1daybanbutton"] = "Баны счет выбранного персонажа на 1 день",
    ["tt_who_jailabutton"] = "Посадить персонажа в тюрьму Альянса",
    ["tt_who_jailhbutton"] = "Посадить персонажа в тюрьму Орды",
    ["tt_who_unjailbutton"] = "UnТюрьма персонажа"
}
end
