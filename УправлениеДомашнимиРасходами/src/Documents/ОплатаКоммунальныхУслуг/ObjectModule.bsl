// @strict-types


#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОписаниеПеременных

#КонецОбласти

#Область ПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область ОбработчикиСобытий
Процедура ОбработкаПроведения(Отказ,Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	//Данный фрагмент построен конструктором.
	//При повторном использовании конструктора, внесенные вручную данные будут утеряны!

	// регистр ДоходыИРасходы
	Движения.ДоходыИРасходы.Записывать = Истина;
	Движения.ЦеныНамеклатуры.Записывать = Истина;
	Для Каждого ТекСтрокаКоммунальныеУслуги из КоммунальныеУслуги Цикл
		Движение = Движения.ДоходыИРасходы.Добавить();
		Движение.Период = Дата;
		Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		Движение.Основание = Ссылка;
		Движение.ДоходыРасходы = ТекСтрокаКоммунальныеУслуги.Услуга;
		Движение.Сумма = ТекСтрокаКоммунальныеУслуги.Сумма;
		
		Движение_1 = Движения.ЦеныНамеклатуры.Добавить();
		Движение_1.Период = Дата;
		Движение_1.Номеклатура=ТекСтрокаКоммунальныеУслуги.Услуга;
		Движение_1.Цена = ТекСтрокаКоммунальныеУслуги.Сумма;
		Движение_1.Количество = 1;
		Движение_1.ЕдиницаИзмерения = Неопределено;
		
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Код процедур и функций

#КонецОбласти

#Область Инициализация

#КонецОбласти

#КонецЕсли
