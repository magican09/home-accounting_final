// @strict-types


#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОписаниеПеременных

#КонецОбласти

#Область ПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область ОбработчикиСобытий

Процедура ОбработкаПроведения(Отказ,Режим)
		Движения.ДоходыИРасходы.Записывать = Истина;
	Для Каждого ТекСтрокаЗатраты из ЗатратыИПоступления Цикл
		Движение = Движения.ДоходыИРасходы.Добавить();
		Движение.Период = ТекСтрокаЗатраты.Дата;
		
		Если ТипЗнч(ТекСтрокаЗатраты.ЗатратаПоступление) = Тип("СправочникСсылка.ИсточникиДенежныхСредств") Тогда
			Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Иначе
			Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		КонецЕсли; 
		
		Движение.Основание = Ссылка;
		Движение.ДоходыРасходы = ТекСтрокаЗатраты.ЗатратаПоступление;
		Движение.Сумма = ТекСтрокаЗатраты.Сумма;
	КонецЦикла;

	Движения.ЦеныНамеклатуры.Записывать = Истина;
	Для Каждого ТекСтрокаЗатраты из ЗатратыИПоступления Цикл
		Движение_1 = Движения.ЦеныНамеклатуры.Добавить();
		Движение_1.Период = ТекСтрокаЗатраты.Дата;
		//@skip-check statement-type-change
		Движение_1.Номеклатура = ТекСтрокаЗатраты.ЗатратаПоступление;
		Движение_1.Цена = ТекСтрокаЗатраты.Цена;
		Движение_1.Количество = ТекСтрокаЗатраты.Количество;
		Движение_1.ЕдиницаИзмерения = ТекСтрокаЗатраты.ЕдинцаИзмерения;
	КонецЦикла;

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
