INSERT INTO param_group (pg_name, pg_type) VALUES
  ('Занятия', 'STUDY'),
  ('Методическая работа', 'STUDY'),
  ('Дополнительно', 'STUDY'),
  ('Аспирантура (учёба, руководство, присвоение степени)', 'SCIENCE'),
  ('НИР', 'SCIENCE'),
  ('Выставочная деятельность', 'SCIENCE'),
  ('Подтверждение  научной квалификации', 'SCIENCE'),
  ('Патентнопубликационная активность', 'SCIENCE'),
  ('Работа с талантливой молодёжью', 'SCIENCE'),
  ('Подтверждение научной квалификации', 'SCIENCE'),
  ('Спорт', 'OTHER'),
  ('Воспитательная деятельность', 'OTHER'),
  ('Награды', 'OTHER'),
  ('Участие в мероприятиях', 'OTHER'),
  ('СМИ', 'OTHER'),
  ('Дополнительно', 'OTHER'),
  ('Заведующим кафедрами', 'OTHER');

INSERT INTO param (p_name, pg_id, p_max_coefficient) VALUES
  ('Чтение лекций: Поток до 30 студентов', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 0.1),
  ('Чтение лекций: Поток 31-60 студентов', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 0.2),
  ('Чтение лекций: Поток 61-120 студентов', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 0.3),
  ('Чтение лекций: Поток 121-180 студентов', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 0.4),
  ('Чтение лекций: Поток более 180', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 0.5),
  ('Общий объём аудиторной нагрузки (лекции, практические, семинарские и лабораторные занятия)', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 1.0),
  ('Общий объём аудиторной нагрузки по II ступени высшего (магистратура), I (аспирантура) и II (докторантура) ступени послевузовского образования', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 0.5),
  ('Проведение аудиторных занятий (лекций, практических, семинарских, лабораторных) на базе филиала кафедры и во всех других организациях по профилю преподаваемых дисциплин', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 0.3),
  ('Проведение занятий на английском языке (кроме дисциплины "Иностранный язык")', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 5.0),
  ('Разработка новых учебных курсов (дисциплин) в текущем году', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 50.0),
  ('Обеспеченность методическими материалами читаемых дисциплин в СДО Moodle', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 30.0),
  ('Руководство дипломными работами (проектами) и магистерскими диссертациями, выполненными по письменному заказу организаций и внедренными в производство', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 30.0),
  ('Руководство дипломными работами (проектами), выполненными в рамках междисциплинарного группового проекта', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 30.0),
  ('Руководство магистерскими диссертациями, выполненными в рамках междисциплинарного группового проекта', (SELECT pg_id FROM param_group WHERE pg_name = 'Занятия'), 50.0),
  
  ('Публикации учебно-методического характера: За учебное издание с грифом МО РБ и УМО', (SELECT pg_id FROM param_group WHERE pg_name = 'Методическая работа'), 100.0),
  ('Публикации учебно-методического характера: За учебное издание без грифа ', (SELECT pg_id FROM param_group WHERE pg_name = 'Методическая работа'), 25.0),
  ('Публикации учебно-методического характера: За прочие учебные и учебно-методические публикации ', (SELECT pg_id FROM param_group WHERE pg_name = 'Методическая работа'), 10.0),

  ('Участие в разработке учебно-программной и учебно-методической документации: За образовательный стандарт', (SELECT pg_id FROM param_group WHERE pg_name = 'Методическая работа'), 70.0),
  ('Участие в разработке учебно-программной и учебно-методической документации: За типовую учебную программу ', (SELECT pg_id FROM param_group WHERE pg_name = 'Методическая работа'), 50.0),
  ('Участие в разработке учебно-программной и учебно-методической документации: За разработку прошедшего государственную регистрацию УМК (ЭУМК)', (SELECT pg_id FROM param_group WHERE pg_name = 'Методическая работа'), 70.0),

  ('Участие в работе по организации курсов повышения квалификации и новых направлений по переподготовке специалистов', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 50.0),
  ('Оказание платных услуг: Исполнителю в сфере дополнительных услуг основного образования', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 5.0),
  ('Оказание платных услуг: Исполнителю курсов в сфере дополнительного образования', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 20.0),
  ('Работа в приёмной комиссии: Ответственному секретарю', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 300.0),
  ('Работа в приёмной комиссии: Заместителю ответственного секретаря', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 200.0),
  ('Работа в приёмной комиссии: Члену приёмной комиссии', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 70.0),
  ('Работа в приёмной комиссии: Председателю предметной комиссии', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 50.0),
  ('Работа в приёмной комиссии: Члену предметной комиссии', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 20.0),

  ('Участие в программах академической мобильности для прохождения стажировки', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 100.0),
  ('Работа на общественных началах: Заместителю декана по учебной работе в расчете на 1 приведенного студента', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 0.5),
  ('Работа на общественных началах: Заместителю заведующего кафедрой', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 100.0),

  ('Результаты комиссионной сдачи экзамена по учебной дисциплине с неудовлетворительными отметками', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), -30.0),
  ('Участие в организации студенческих олимпиад и подготовке студентов (команд) к республиканским и международным олимпиадам: За организацию и проведение студенческих олимпиад', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 75.0),
  ('Участие в организации студенческих олимпиад и подготовке студентов (команд) к республиканским и международным олимпиадам: За подготовку победителя (призера) республиканских студенческих олимпиад', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 100.0),

  ('Организация работы с учащимися (в рамках академии современных технологий ФДП, кружков, студий): Руководство', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 50.0),
  ('Организация работы с учащимися (в рамках академии современных технологий ФДП, кружков, студий): Участие в работе', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 25.0),

  ('Работа в качестве приглашённого специалиста в учреждениях высшего образования за рубежом', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 50.0),

  ('Участие в работе оргкомитетов и жюри олимпиад, конкурсов, в учреждениях образования получения  высшего и среднего специального образования: За мероприятие международного уровня.', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 60.0),
  ('Участие в работе оргкомитетов и жюри олимпиад, конкурсов, в учреждениях образования получения  высшего и среднего специального образования: За мероприятие республиканского уровня.', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 40.0),
  ('Участие в работе оргкомитетов и жюри олимпиад, конкурсов, в учреждениях образования получения  высшего и среднего специального образования: За мероприятие областного уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 20.0),

  ('Организация и проведение мероприятий по привлечению иностранных граждан в рамках экспорта услуг (летние школы, сборы, стажировки и т.д.): Руководителю за каждую 1 тыс. долл. США суммы договора на экспорт услуг', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 150.0),
  ('Организация и проведение мероприятий по привлечению иностранных граждан в рамках экспорта услуг (летние школы, сборы, стажировки и т.д.): Исполнителям за каждую 1 тыс. долл. США суммы выполненных работ ', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 100.0),

  ('Иные достижения в области учебной деятельности', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'STUDY'), 100.0),

  ('Защита диссертации (соискателю): Присуждение ученой степени доктора наук', (SELECT pg_id FROM param_group WHERE pg_name = 'Аспирантура (учёба, руководство, присвоение степени)'), 1200.0),
  ('Защита диссертации (соискателю): Утверждение решения о присуждении ученой степе-ни кандидата наук', (SELECT pg_id FROM param_group WHERE pg_name = 'Аспирантура (учёба, руководство, присвоение степени)'), 500.0),
  ('Защита диссертации (соискателю): Защита докторской диссертации', (SELECT pg_id FROM param_group WHERE pg_name = 'Аспирантура (учёба, руководство, присвоение степени)'), 800.0),
  ('Защита диссертации (соискателю): Защита кандидатской диссертации', (SELECT pg_id FROM param_group WHERE pg_name = 'Аспирантура (учёба, руководство, присвоение степени)'), 400.0),

  ('Научное руководство (консультирование) работника, успешно защитившего диссертацию и продолжающего работу в университете: Присуждение ученой степени доктора наук', (SELECT pg_id FROM param_group WHERE pg_name = 'Аспирантура (учёба, руководство, присвоение степени)'), 400.0),
  ('Научное руководство (консультирование) работника, успешно защитившего диссертацию и продолжающего работу в университете: Утверждение решения о присуждении ученой степе-ни кандидата наук', (SELECT pg_id FROM param_group WHERE pg_name = 'Аспирантура (учёба, руководство, присвоение степени)'), 200.0),

  ('Присвоение ученого звания профессора', (SELECT pg_id FROM param_group WHERE pg_name = 'Аспирантура (учёба, руководство, присвоение степени)'), 500.0),
  ('Присвоение ученого звания доцента', (SELECT pg_id FROM param_group WHERE pg_name = 'Аспирантура (учёба, руководство, присвоение степени)'), 150.0),
  ('Руководство и выполнение НИР в рамках государственных научных программ, программ Союзного государства, отдельных проектов, фондов, финансируемых из средств республиканского бюджета: Руководителю за каждые 100 руб. суммы договора', (SELECT pg_id FROM param_group WHERE pg_name = 'Аспирантура (учёба, руководство, присвоение степени)'), 2.0),
  ('Руководство и выполнение НИР в рамках государственных научных программ, программ Союзного государства, отдельных проектов, фондов, финансируемых из средств республиканского бюджета: Исполнителям за каждые 100 руб. выполненных работ (включая руководителя, выполняющего НИР с оплатой по договорам-подряда)', (SELECT pg_id FROM param_group WHERE pg_name = 'Аспирантура (учёба, руководство, присвоение степени)'), 5.0),

  ('Руководство и выполнение НИР в рамках:  хозяйственных договоров, заключённых с предприятиями и организациями, оказание платных услуг в сфере НИИД;  инновационных программ и проектов, финансируемых из средств регионального или республиканского инновационных фондов: Руководителю за каждые 100 руб. суммы договора', (SELECT pg_id FROM param_group WHERE pg_name = 'НИР'), 15.0),
  ('Руководство и выполнение НИР в рамках:  хозяйственных договоров, заключённых с предприятиями и организациями, оказание платных услуг в сфере НИИД;  инновационных программ и проектов, финансируемых из средств регионального или республиканского инновационных фондов: Исполнителям за каждые 100 руб. суммы договора ( или вознаграждения????) за выполненные работы (включая руководителя, выполняющего НИР с оплатой по договорам-подряда)', (SELECT pg_id FROM param_group WHERE pg_name = 'НИР'), 10.0),
  ('Руководство и выполнение договоров (контрактов) по экспорту наукоемкой продукции и услуг (включая проведение научных исследований для зарубежных заказчиков): Руководителю за каждую 1 тыс. долл. США суммы договора на экспорт наукоемкой продукции и услуг', (SELECT pg_id FROM param_group WHERE pg_name = 'НИР'), 200.0),
  ('Руководство и выполнение договоров (контрактов) по экспорту наукоемкой продукции и услуг (включая проведение научных исследований для зарубежных заказчиков): Исполнителям за каждую 1 тыс. долл. США суммы выполненных работ договора на экспорт наукоемкой продукции и услуг (включая руководителя, выполняющего НИР с оплатой по договорам-подряда)', (SELECT pg_id FROM param_group WHERE pg_name = 'НИР'), 100.0),

  ('Получение патента на изобретение', (SELECT pg_id FROM param_group WHERE pg_name = 'Патентнопубликационная активность'), 150.0),
  ('Получение патента на полезную модель ', (SELECT pg_id FROM param_group WHERE pg_name = 'Патентнопубликационная активность'), 50.0),
  ('Издание монографии, авторских справочных изданий (словарей и справочников) (текущий год или прошлый год, но оформленные библиотекой в текущем году)', (SELECT pg_id FROM param_group WHERE pg_name = 'Патентнопубликационная активность'), 350.0),
  ('Научная статья в зарубежном научном журнале, входящем в реферативную базу Scopus или Web of Science (текущий год или IV квартал прошлого года, но оформленные библиотекой в текущем году)', (SELECT pg_id FROM param_group WHERE pg_name = 'Патентнопубликационная активность'), 300.0),
  ('Научная статья в зарубежном научном журнале, не входящем в реферативную базу Scopus или Web of Science (текущий год или IV квартал прошлого года, но оформленные библиотекой в текущем году)', (SELECT pg_id FROM param_group WHERE pg_name = 'Патентнопубликационная активность'), 100.0),
  ('Научная статья в рецензируемых научных изданиях (журналах и сборниках научных трудов) из списка ВАК РБ и в изданиях, приравненных к ним (академические и ведомственные издания), включая научные издания (журналы и сборники научных трудов) из списка РИНЦ с импактфактором РИНЦ менее 0,35 (текущий год или IV квартал прошлого года, но оформленные библиотекой в текущем году)', (SELECT pg_id FROM param_group WHERE pg_name = 'Патентнопубликационная активность'), 70.0),
  ('Цитируемость работ сотрудника: За каждую единицу индекса Хирша сотрудника в базе данных РИНЦ, Google Scholar', (SELECT pg_id FROM param_group WHERE pg_name = 'Патентнопубликационная активность'), 20.0),
  ('Цитируемость работ сотрудника: Дополнительно за каждую единицу индекса Хирша сотрудника в базе данных Scopus, ISI', (SELECT pg_id FROM param_group WHERE pg_name = 'Патентнопубликационная активность'), 50.0),

  ('За каждую готовую к реализации и рекламновыставочной деятельности инновационную разработку, сопровождающуюся рекламным описанием и представленную в зал инновационных разработок университета ', (SELECT pg_id FROM param_group WHERE pg_name = 'Выставочная деятельность'), 30.0),
  ('Получение наград на республиканских научных и научнотехнических выставках', (SELECT pg_id FROM param_group WHERE pg_name = 'Выставочная деятельность'), 50.0),
  ('Получение наград на научных и научнотехнических выставках за рубежом ', (SELECT pg_id FROM param_group WHERE pg_name = 'Выставочная деятельность'), 100.0),
  ('Научному руководителю за каждого студента (магистранта, слушателя), подавшего работу на конкурс', (SELECT pg_id FROM param_group WHERE pg_name = 'Выставочная деятельность'), 30.0),

  ('За руководство деятельностью зарегистрированных студенческих научных кружков (СНК)', (SELECT pg_id FROM param_group WHERE pg_name = 'Работа с талантливой молодёжью'), 50.0),
  ('Руководителю НИОКР за привлечение студентов (магистрантов) к выполнению НИОКР на условиях оплаты по штатному расписанию и договорамподряда', (SELECT pg_id FROM param_group WHERE pg_name = 'Работа с талантливой молодёжью'), 20.0),
  ('Научному руководителю за каждую статью и тезисы докладов  студента (магистранта, слушателя) в научном журнале, сборнике научных трудов (в т.ч. материалов международных конференций) (текущий год)', (SELECT pg_id FROM param_group WHERE pg_name = 'Работа с талантливой молодёжью'), 10.0),

  ('Члену Государственного экспертного совета, экспертного Совета Министерства образования, НАН Беларуси, БРФФИ за выполнение экспертизы каждого научного или инновационного проекта', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 20.0),
  ('За членство в каждом Совете по защите диссертаций', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 50.0),
  ('За членство в экспертном Совете ВАК', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 100.0),
  ('Оппоненту за официальное оппонирование кандидатской и/или докторской диссертации (оппонент)', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 100.0),
  ('Рецензирование монографий и научных статей для журналов, включенных в базы данных Scopus или Web of  Science', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 50.0),
  ('Рецензирование научных статей, представленных для опубликования в журналы «Вестник ВГТУ», «Материалы и технологии»', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 10.0),
  ('Рецензирование материалов и тезисов докладов конференций, проводимых в ВГТУ (кроме студенческих работ)', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 5.0),
  ('Рецензирование материалов и тезисов докладов конференций, проводимых в ВГТУ (студенческих работ)', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 2.0),
  ('Выполнение функций ответственных за НИРС на факультете', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 50.0),
  ('Иные достижения в области научной и инновационной деятельности', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 100.0),
  ('Организация и проведение в университете научных мероприятий различного уровня: За организацию и проведение научного мероприятия международного уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 100.0),
  ('Организация и проведение в университете научных мероприятий различного уровня: За организацию и проведение научного мероприятия республиканского уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 50.0),
  ('Организация и проведение в университете научных мероприятий различного уровня: За организацию и проведение научного мероприятия городского уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 30.0),
  ('Организация и проведение в университете научных мероприятий различного уровня: За организацию и проведение научного мероприятия университетского уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Подтверждение  научной квалификации'), 20.0),

  ('Участие в Республиканской универсиаде: За подготовку каждого студента (команды студентов) – участников универсиады', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 2.0),
  ('За подготовку Мастера спорта международного класса', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 400.0),
  ('За подготовку Мастера спорта, получение лицензии на участие в Олимпийских играх и Чемпионатах мира', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 200.0),
  ('За подготовку каждого студента (команды студентов), ставшего победителем Чемпионатов Республики Беларусь, международных юниорских (студенческих) чемпионатов и турниров', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 180.0),
  ('За подготовку каждого студента (команды студентов), ставшего призером (2,3 места):  Чемпионата Республики Беларусь;  международных юниорских (студенческих) чемпионатов и турниров', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 100.0),
  ('За подготовку каждого студента (команды студентов), ставшего победителем областных и городских спортивных соревнований', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 40.0),
  ('За подготовку каждого студента (команды студентов), ставшего призером (2,3 места) областных и городских спортивных соревнований', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 15.0),
  ('За подготовку каждого студента (команды студентов) ставшего лауреатом (диплом 1 степени) международных конкурсов творческих работ ', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 500.0),
  ('За подготовку каждого студента (команды студентов), ставшего призером (2,3 места) международных конкурсов творческих работ ', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 250.0),
  ('За подготовку каждого студента (команды студентов), ставшего:  победителем международных конкурсов, организованных другими учреждениями с международным участием;  лауреатом (диплом 1 степени) республиканских конкурсов творческих работ', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 200.0),
  ('За получение звания народного коллектива (артиста)', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 100.0),
  ('За подготовку каждого студента (команды студентов), ставшего призером (2,3 места):  республиканских конкурсов творческих работ;  конкурсов, организованных другими учреждениями с международным участием', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 50.0),
  ('За подготовку каждого студента (команды студентов), ставшего лауреатом (диплом 1 степени) областных и городских конкурсов творческих работ', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 30.0),
  ('За подготовку каждого студента (команды студентов), ставшего призером (2,3 места) областных и городских конкурсов творческих работ', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 20.0),
  ('За подготовку каждого студента (команды студентов) – участников универсиады ', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 2.0),
  ('За организацию, проведение и активное участие в одном спортивном мероприятии международного уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 50.0),
  ('За организацию, проведение и активное участие в одном спортивном мероприятии республиканского уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 40.0),
  ('За организацию, проведение и активное участие в одном спортивном мероприятии областного / городского уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 30.0),
  ('За организацию, проведение и активное участие в одном спортивном мероприятии университетского уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Спорт'), 20.0),

  ('Организация участия студентов в государственных общественно значимых мероприятиях университета, города, области, республики Кураторам и зам. декана за одного студента за одно мероприятие', (SELECT pg_id FROM param_group WHERE pg_name = 'Воспитательная деятельность'), 0.4),
  ('Зам. декана по ИВР за наличие уголовных преступлений, совершенных студентами (за каждое преступление)', (SELECT pg_id FROM param_group WHERE pg_name = 'Воспитательная деятельность'), -80.0),
  ('Кураторам за наличие уголовных преступлений, совершенных студентами (за каждое преступление)', (SELECT pg_id FROM param_group WHERE pg_name = 'Воспитательная деятельность'), -120.0),
  ('Зам. декана по ИВР за наличие административных правонарушений, совершенных студентами (за каждое правонарушение)', (SELECT pg_id FROM param_group WHERE pg_name = 'Воспитательная деятельность'), -5.0),
  ('Кураторам за наличие административных правонарушений, совершенных студентами (за каждое правонарушение)', (SELECT pg_id FROM param_group WHERE pg_name = 'Воспитательная деятельность'), -10.0),
  ('Зам. декана по ИВР за наличие правонарушений, совершенных студентами, за которые вынесены дисциплинарные взыскания (за каждое правонарушение)', (SELECT pg_id FROM param_group WHERE pg_name = 'Воспитательная деятельность'), -5.0),
  ('Кураторам за наличие правонарушений, совершенных студентами, за которые вынесены дисциплинарные взыскания (за каждое правонарушение)', (SELECT pg_id FROM param_group WHERE pg_name = 'Воспитательная деятельность'), -15.0),

  ('Благодарность Президента Республики Беларусь, объявленная распоряжением Президента Республики Беларусь, государственные награды (кроме юбилейных и ведомственных), поощрения Совета министров Республики Беларусь', (SELECT pg_id FROM param_group WHERE pg_name = 'Награды'), 300.0),
  ('Поощрения  государственных органов республиканского уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Награды'), 100.0),
  ('Поощрения органов местного управления и самоуправления Республики Беларусь', (SELECT pg_id FROM param_group WHERE pg_name = 'Награды'), 70.0),
  ('Поощрения университета, объявленные приказом ректора: Почетная грамота, Грамота, занесение на Доску Почета', (SELECT pg_id FROM param_group WHERE pg_name = 'Награды'), 40.0),
  ('Поощрения университета, объявленные приказом ректора:  благодарность ректора', (SELECT pg_id FROM param_group WHERE pg_name = 'Награды'), 15.0),
  ('Создание и работа в качестве руководителя спортивной секции, студенческого кружка или иного творческого объединения, студенческого отряда, при условии занятия отряда, кружка, объединения не менее 8 часов в месяц', (SELECT pg_id FROM param_group WHERE pg_name = 'Награды'), 100.0),

  ('Участие в одном республиканском общественнозначимом мероприятии (выступление)', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 40.0),
  ('Участие в одном региональном (городском или областном) общественнозначимом мероприятии (выступление)', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 20.0),
  ('Участие в одном университетском общественнозначимом мероприятии (выступление)', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 5.0),
  ('За организацию, проведение и активное участие в одном мероприятии международного уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 50.0),
  ('За организацию, проведение и активное участие в одном мероприятии республиканского уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 40.0),
  ('За организацию, проведение и активное участие в одном мероприятии областного / городского уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 30.0),
  ('За организацию, проведение и активное участие в одном мероприятии университетского уровня', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 20.0),
  ('Участнику финала республиканского мероприятия идеологического и воспитательного характера за получение диплома лауреата (1 место)', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 200.0),
  ('Участнику финала республиканского мероприятия идеологического и воспитательного характера за получение диплома лауреата (2-3 место)', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 150.0),
  ('Участнику финала регионального мероприятия идеологического и воспитательного характера за получение диплома лауреата (1 место)', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 100.0),
  ('Участнику финала регионального мероприятия идеологического и воспитательного характера за получение диплома лауреата (2-3 место)', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 80.0),
  ('Участнику финала университетского мероприятия идеологического и воспитательного характера за получение диплома лауреата (1 место)', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 50.0),
  ('Участнику финала университетского мероприятия идеологического и воспитательного характера за получение диплома лауреата (2-3 место)', (SELECT pg_id FROM param_group WHERE pg_name = 'Участие в мероприятиях'), 20.0),

  ('За каждый репортаж, публикацию в республиканских СМИ', (SELECT pg_id FROM param_group WHERE pg_name = 'СМИ'), 60.0),
  ('За каждый репортаж, публикацию в региональных СМИ', (SELECT pg_id FROM param_group WHERE pg_name = 'СМИ'), 30.0),

  ('Заместителю декана по ИВР в расчете на 1 привлечённого к работе на общественных началах студента', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 0.25),
  ('Куратору учебной группы в расчете на 1 привлечённого к работе на общественных началах студента', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 7.0),
  ('Куратору учебной группы в расчете на 1 привлечённого к работе на общественных началах иностранного студента', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 11.0),
  ('Члену ИПГ за работу на общественных началах студента', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 20.0),
  ('Председатель избирательной комиссии', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 100.0),
  ('Заместитель председателя избирательной комиссии', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 75.0),
  ('Секретарь избирательной комиссии', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 50.0),
  ('Член избирательной комиссии', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 35.0),
  ('Участие в работе коллегиальных органов управления государственных и/или общественных организаций (объединений), зарегистрированных в установленном порядке в соответствии со статусом организации (На уровне республики)', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 60.0) ,
  ('Участие в работе коллегиальных органов управления государственных и/или общественных организаций (объединений), зарегистрированных в установленном порядке в соответствии со статусом организации (На уровне области)', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 50.0),
  ('Участие в работе коллегиальных органов управления государственных и/или общественных организаций (объединений), зарегистрированных в установленном порядке в соответствии со статусом организации (На уровне города)', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 40.0),
  ('Участие в работе коллегиальных органов управления государственных и/или общественных организаций (объединений), зарегистрированных в установленном порядке в соответствии со статусом организации (На уровне университета)', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 30.0),
  ('Участие в работе коллегиальных органов управления государственных и/или общественных организаций (объединений), зарегистрированных в установленном порядке в соответствии со статусом организации (На уровне факультета)', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 20.0),
  ('По представлению деканов факультетов, проректора по воспитательной работе, первого проректора', (SELECT pg_id FROM param_group WHERE pg_name = 'Дополнительно' AND pg_type = 'OTHER'), 100.0),

  ('За присуждение ученой степени доктора наук работнику кафедры', (SELECT pg_id FROM param_group WHERE pg_name = 'Заведующим кафедрами'), 100.0),
  ('За утверждение решения о присуждении ученой степени кандидата наук работнику кафедры', (SELECT pg_id FROM param_group WHERE pg_name = 'Заведующим кафедрами'), 60.0),
  ('За выполнение плана по распределению выпускников', (SELECT pg_id FROM param_group WHERE pg_name = 'Заведующим кафедрами'), 100.0),
  ('За каждую выпускаемую на кафедре специальность', (SELECT pg_id FROM param_group WHERE pg_name = 'Заведующим кафедрами'), 100.0),
  ('Выполнение на базе кафедры договоров (контрактов) по экспорту наукоемкой и высокотехнологичной продукции и услуг (За каждую 1 тыс. долл. США суммы договора )', (SELECT pg_id FROM param_group WHERE pg_name = 'Заведующим кафедрами'), 100.0),
  ('Выполнение на базе кафедры НИР в рамках хозяйственных договоров, заключённых с предприятиями и организациями (За каждые 100 руб. суммы договора)', (SELECT pg_id FROM param_group WHERE pg_name = 'Заведующим кафедрами'), 10.0),
  ('Организация приемов иностранных специалистов для чтения лекций и обучающихся зарубежных вузов', (SELECT pg_id FROM param_group WHERE pg_name = 'Заведующим кафедрами'), 30.0);