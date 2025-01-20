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
	Для Каждого ТекСтрока из ЗатратыИПоступления Цикл
		Движение = Движения.ДоходыИРасходы.Добавить();
		Движение.Период = ТекСтрока.Дата;
		
//		Если ТипЗнч(ТекСтрокаЗатраты.Номеклатура) = Тип("СправочникСсылка.ИсточникиДенежныхСредств") Тогда
//			Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
//		Иначе
//			Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
//		КонецЕсли; 
		Если	 ТекСтрока.ВидОперации = ПредопределенноеЗначение("Перечисление.ВидОперации.ПереводВходящий")
			ИЛИ  ТекСтрока.ВидОперации = ПредопределенноеЗначение("Перечисление.ВидОперации.ПолучениеНаличных") Тогда
			Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Иначе 
			Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		КонецЕсли;
		Движение.Основание = Ссылка;
		Движение.Номеклатура = ТекСтрока.Номеклатура;
		Движение.Контрагент = ТекСтрока.Контрагент;
		Движение.Сумма = ТекСтрока.Сумма;
	КонецЦикла;

//	Движения.ЦеныНамеклатуры.Записывать = Истина;
//	Для Каждого ТекСтрока из ЗатратыИПоступления Цикл
//		Движение_1 = Движения.ЦеныНамеклатуры.Добавить();
//		Движение_1.Период = ТекСтрока.Дата;
//		Движение_1.Номеклатура = ТекСтрока.Номеклатура;
//		Движение_1.Контрагент = ТекСтрока.Контрагент;
//		Движение_1.Цена = ТекСтрока.Цена;
//		Движение_1.Количество = ТекСтрока.Количество;
//		Движение_1.ЕдиницаИзмерения = ТекСтрока.ЕдинцаИзмерения;
//	КонецЦикла;

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
