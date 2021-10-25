﻿
#Область ПрограммныйИнтерфейс

// Возвращает запрос по загруженным объектам метеданных требуемой конфигурации.
//
// Параметры:
//  Релиз - СправочникСсылка - Релизы.
// 
// Возвращаемое значение:
//   - Запрос.
//
Функция ПолучитьОписаниеКоллекцииМетаданных(Релиз, ИмяКоллекции) Экспорт
	
	Макет = ПолучитьМакет("Расш1_Запрос_ОписаниеКоллекцииМетаданных");
	ТекстЗапроса = Макет.ПолучитьТекст(); 
	
	ИменаКоллекцииМетаданных = Расш1_МодульПовтИсп.НовыеИменаКоллекцииМетаданных();
	Имя = ИменаКоллекцииМетаданных[ИмяКоллекции];
	
	Запрос = Новый Запрос;
	Запрос.Текст = ТекстЗапроса;
	Запрос.УстановитьПараметр("Имя", Имя);
	Запрос.УстановитьПараметр("Владелец", Релиз);
	
	Результат = Запрос.Выполнить();
	Выборка = Результат.Выбрать();
	
	ОписаниеКоллекцииМетаданных = Новый Структура;
	Пока Выборка.Следующий() Цикл
		
		ОписаниеКоллекцииМетаданных.Вставить(Выборка.Имя, Новый Структура);
		
	КонецЦикла;
	
	Возврат ОписаниеКоллекцииМетаданных;
	
КонецФункции

#КонецОбласти
