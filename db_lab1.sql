create table "Человек" (
    "ID" INTEGER NOT NULL,
    "Имя" VARCHAR NOT NULL,
    primary key ("ID")
);

create table "Назначение" (
    "ID" INTEGER NOT NULL,
    "Тип" VARCHAR NOT NULL,
    primary key ("ID")
);

create table "Состояние объекта" (
    "ID" INTEGER NOT NULL,
    "Состояние" VARCHAR NOT NULL,
    primary key ("ID")
);

create table "Цвет" (
    "ID" INTEGER NOT NULL,
    "Цвет" VARCHAR NOT NULL,
    primary key ("ID")
);

create table "Вкус" (
    "ID" INTEGER NOT NULL,
    "Вкус" VARCHAR NOT NULL,
    primary key ("ID")
);

create table "Вещь" (
    "ID" INTEGER NOT NULL,
    "Название" VARCHAR NOT NULL,
    "Назначение ID" INTEGER NOT NULL,
    "Состояние ID" INTEGER,
    "Цвет ID" INTEGER,
    primary key ("ID"),
    foreign key ("Назначение ID") references "Назначение" ("ID"),
    foreign key ("Состояние ID") references "Состояние объекта" ("ID"),
    foreign key ("Цвет ID") references "Цвет" ("ID")
);

create table "Еда" (
    "ID" INTEGER NOT NULL,
    "Вкус ID" INTEGER,
    "Состояние ID" INTEGER,
    "Название" VARCHAR NOT NULL,
    "Цвет ID" INTEGER,
    primary key ("ID"),
    foreign key ("Состояние ID") references "Состояние объекта" ("ID"),
    foreign key ("Вкус ID") references "Вкус" ("ID"),
    foreign key ("Цвет ID") references "Цвет" ("ID")
);
create table "Меню" (
    "Человек ID" INTEGER NOT NULL,
    "Еда ID" INTEGER NOT NULL,
    foreign key ("Человек ID") references "Человек" ("ID"),
    foreign key ("Еда ID") references "Еда" ("ID")
);

create table "Действие" (
    "ID" INTEGER NOT NULL,
    "Название" VARCHAR NOT NULL,
    primary key ("ID")
);

create table "Взаимодействие" (
    "Человек ID" INTEGER NOT NULL,
    "Цель ID" INTEGER NOT NULL,
    "Действие ID" INTEGER NOT NULL,
    foreign key ("Человек ID") references "Человек" ("ID"),
    foreign key ("Цель ID") references "Вещь" ("ID"),
    foreign key ("Действие ID") references "Действие" ("ID")
);

insert into "Человек" ("ID", "Имя") VALUES (368311, 'Боумен');
insert into "Человек" ("ID", "Имя") VALUES (222567, 'Человек1');
insert into "Человек" ("ID", "Имя") VALUES (777777, 'Чипполино');

insert into "Назначение" ("ID", "Тип") VALUES (101, 'Хранение');
insert into "Назначение" ("ID", "Тип") VALUES (102, 'Информирование');
insert into "Назначение" ("ID", "Тип") VALUES (103, 'Сантехника');
insert into "Назначение" ("ID", "Тип") VALUES (104, 'Интерьер');
insert into "Назначение" ("ID", "Тип") VALUES (105, 'Кухонная утварь');

insert into "Состояние объекта" ("ID", "Состояние") VALUES (201, 'Твердое');
insert into "Состояние объекта" ("ID", "Состояние") VALUES (202, 'Жидкое');
insert into "Состояние объекта" ("ID", "Состояние") VALUES (203, 'Газ');

insert into "Цвет" ("ID", "Цвет") VALUES (301, 'Синий');
insert into "Цвет" ("ID", "Цвет") VALUES (302, 'Прозрачный');
insert into "Цвет" ("ID", "Цвет") VALUES (303, 'Коричневый');
insert into "Цвет" ("ID", "Цвет") VALUES (304, 'Зеленый');
insert into "Цвет" ("ID", "Цвет") VALUES (305, 'Красный');

insert into "Вкус" ("ID", "Вкус") VALUES (601, 'Отвратительный');
insert into "Вкус" ("ID", "Вкус") VALUES (602, 'Соленый');
insert into "Вкус" ("ID", "Вкус") VALUES (603, 'Приятный');

insert into "Действие" ("ID", "Название") VALUES (901, 'Открыть');
insert into "Действие" ("ID", "Название") VALUES (902, 'Сломать');
insert into "Действие" ("ID", "Название") VALUES (903, 'Поставить');
insert into "Действие" ("ID", "Название") VALUES (904, 'Использовать по назначению');

insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (401, 'Коробка_1', 101, 201);
insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (402, 'Коробка_2', 101, 201);
insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID", "Цвет ID") VALUES (403, 'Коробка_3', 101, 201, 303);

insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (404, 'Банка_1', 101, 201);
insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (405, 'Банка_2', 101, 201);
insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (406, 'Банка_3', 101, 201);

insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (407, 'Этикетка_1', 102, 201);
insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (408, 'Этикетка_2', 102, 201);
insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (409, 'Этикетка_3', 102, 201);

insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (410, 'Кран', 103, 201);

insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (411, 'Стакан', 101, 201);

insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID", "Цвет ID") VALUES (412, 'Ваза', 101, 201, 302);

insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID", "Цвет ID") VALUES (413, 'Нож', 101, 201, 304);
insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID", "Цвет ID") VALUES (414, 'Разделочная доска', 101, 201, 305);

insert into "Вещь" ("ID", "Название", "Назначение ID", "Состояние ID", "Цвет ID") VALUES (415, 'Стол', 101, 201, 305);

insert into "Взаимодействие" ("Человек ID", "Цель ID", "Действие ID") values (368311, 410, 901);
insert into "Взаимодействие" ("Человек ID", "Цель ID", "Действие ID") values (368311, 412, 903);
insert into "Взаимодействие" ("Человек ID", "Цель ID", "Действие ID") values (368311, 413, 904);
insert into "Взаимодействие" ("Человек ID", "Цель ID", "Действие ID") values (368311, 414, 904);
insert into "Взаимодействие" ("Человек ID", "Цель ID", "Действие ID") values (777777, 415, 902);

insert into "Еда" ("ID", "Название", "Цвет ID") VALUES (701, 'Синее вещество', 301);
insert into "Еда" ("ID", "Вкус ID", "Название", "Цвет ID") VALUES (702, 601, 'Вода', 302);
insert into "Еда" ("ID", "Вкус ID", "Название", "Цвет ID") VALUES (703, 603, 'Бургер>', 302);
insert into "Еда" ("ID", "Вкус ID", "Название", "Цвет ID") VALUES (704, 603, 'Шаверма', 302);
insert into "Еда" ("ID", "Вкус ID", "Название", "Цвет ID") VALUES (705, 601, 'Пиво', 302);
insert into "Еда" ("ID", "Вкус ID", "Название", "Цвет ID") VALUES (706, 602, 'Рататуй', 302);

insert into "Меню" ("Человек ID", "Еда ID") VALUES (368311, 701);
insert into "Меню" ("Человек ID", "Еда ID") VALUES (368311, 702);
insert into "Меню" ("Человек ID", "Еда ID") VALUES (777777, 702);
insert into "Меню" ("Человек ID", "Еда ID") VALUES (777777, 703);
insert into "Меню" ("Человек ID", "Еда ID") VALUES (777777, 705);
insert into "Меню" ("Человек ID", "Еда ID") VALUES (222567, 706);
insert into "Меню" ("Человек ID", "Еда ID") VALUES (222567, 704);
