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

create table "Объект" (
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

create table "Меню" (
    "ID" INTEGER NOT NULL,
    "Человек ID" INTEGER NOT NULL,
    "Объект ID" INTEGER NOT NULL,
    primary key ("ID"),
    foreign key ("Человек ID") references "Человек" ("ID"),
    foreign key ("Объект ID") references "Объект" ("ID")
);

insert into "Человек" ("ID", "Имя") VALUES (368311, 'Боумен');

insert into "Назначение" ("ID", "Тип") VALUES (101, 'Хранение');
insert into "Назначение" ("ID", "Тип") VALUES (102, 'Информирование');
insert into "Назначение" ("ID", "Тип") VALUES (103, 'Питание');

insert into "Состояние объекта" ("ID", "Состояние") VALUES (201, 'Твердое');
insert into "Состояние объекта" ("ID", "Состояние") VALUES (202, 'Жидкое');

insert into "Цвет" ("ID", "Цвет") VALUES (301, 'Синий');
insert into "Цвет" ("ID", "Цвет") VALUES (302, 'Прозрачный');

insert into "Объект" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (401, 'Коробка_1', 101, 201);
insert into "Объект" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (402, 'Коробка_2', 101, 201);
insert into "Объект" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (403, 'Коробка_3', 101, 201);

insert into "Объект" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (404, 'Банка_1', 101, 201);
insert into "Объект" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (405, 'Банка_2', 101, 201);
insert into "Объект" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (406, 'Банка_3', 101, 201);

insert into "Объект" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (407, 'Этикетка_1', 102, 201);
insert into "Объект" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (408, 'Этикетка_2', 102, 201);
insert into "Объект" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (409, 'Этикетка_3', 102, 201);

insert into "Объект" ("ID", "Название", "Назначение ID", "Цвет ID") VALUES (410, 'Синее вещество', 103, 301);

insert into "Объект" ("ID", "Название", "Назначение ID", "Состояние ID", "Цвет ID") VALUES (411, 'Вода', 103, 202, 302);
insert into "Объект" ("ID", "Название", "Назначение ID", "Состояние ID") VALUES (412, 'Стакан', 101, 201);

insert into "Меню" ("ID", "Человек ID", "Объект ID") VALUES (501, 368311, 410);
