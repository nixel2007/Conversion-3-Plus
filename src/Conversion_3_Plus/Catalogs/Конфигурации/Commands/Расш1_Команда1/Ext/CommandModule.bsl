﻿
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	ОбработкаКомандыСервер(ПараметрКоманды);
КонецПроцедуры

&НаСервере
Процедура ОбработкаКомандыСервер(Конфигурация)
	Справочники.Объекты.ПолучитьОписаниеМетеданныхКонфигурации(Конфигурация);
КонецПроцедуры
