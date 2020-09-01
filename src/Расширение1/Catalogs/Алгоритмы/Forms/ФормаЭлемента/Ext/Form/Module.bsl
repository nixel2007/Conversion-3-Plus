﻿
&НаКлиенте
Перем КонсольКода;

&НаСервере
Процедура Расш1_ПриСозданииНаСервереПосле(Отказ, СтандартнаяОбработка)
	
	Расш1_МодульФормы.ПриСозданииНаСервереПосле(Элементы, ЭтотОбъект);
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_ПриОткрытииПосле(Отказ)
	
	Расш1_МодульФормы.ПриОткрытииПосле(ЭтотОбъект);
	
КонецПроцедуры

&НаКлиенте
Процедура HTMLДокументСформирован(Элемент)
	
	КонсольКода = Элементы.HTMLДокумент.Документ.defaultView;
	Расш1_МодульФормы.HTMLДокументСформирован(Объект, КонсольКода);
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_ПередЗаписьюПосле(Отказ, ПараметрыЗаписи)
	
	Расш1_МодульФормы.ПередЗаписьюПосле(Объект, КонсольКода);
	
КонецПроцедуры

