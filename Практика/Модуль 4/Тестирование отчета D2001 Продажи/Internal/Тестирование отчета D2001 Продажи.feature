﻿#language: ru

@tree

Функционал: Тестирование отчета D2001 Продажи

Как Тестировщик я хочу
протестировать отчет D2001 Продажи 
чтобы проверить что у пользователя не возникнет проблем 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0101 Экспорт данных
	Когда экспорт основных данных
	Когда экспорт документов продаж
	И я выполняю код встроенного языка на сервере
		| 'Документы.PlannedReceiptReservation.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'            |
		| 'Документы.SalesInvoice.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'                         |
		| 'Документы.SalesOrder.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'                           |
		| 'Документы.SalesOrder.НайтиПоНомеру(2).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'                           |
		| 'Документы.SalesOrder.НайтиПоНомеру(3).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'                           |
		| 'Документы.SalesOrderClosing.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'                    |

Сценарий: _0102 Проверка отчета
	* Открытие и формирование отчета
		И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
		Тогда открылось окно 'D2001 Продажи'
		И я нажимаю на кнопку с именем 'FormGenerate'
		