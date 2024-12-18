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
	Для Каждого ТекСтрокаУслуги из Услуги Цикл
		Движение = Движения.ДоходыИРасходы.Добавить();
		Движение.Период = Дата;
		Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		Движение.Основание = Ссылка;
		Движение.Статья = ТекСтрокаУслуги.Услуга;
		Движение.Сумма = ТекСтрокаУслуги.Сумма;
		
		Движение_1 = Движения.ЦеныНамеклатуры.Добавить();
		Движение_1.Период = Дата;
		Движение_1.Номеклатура=ТекСтрокаУслуги.Услуга;
		Движение_1.Цена = ТекСтрокаУслуги.Цена;
		Движение_1.Количество =ТекСтрокаУслуги.Количество;
		Движение_1.ЕдиницаИзмерения =ТекСтрокаУслуги.ЕдиницаИзмерения;
		
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
