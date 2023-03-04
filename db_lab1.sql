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

create table "Состав" (
    "ID" INTEGER NOT NULL,
    "Материал" VARCHAR NOT NULL,
    primary key ("ID")
);

create table "Объект" (
    "ID" INTEGER NOT NULL,
    "Название" VARCHAR NOT NULL,
    "Назначение ID" INTEGER NOT NULL,
    "Состояние ID" INTEGER NOT NULL,
    "Состав ID" INTEGER,
    "Цвет ID" INTEGER,
    primary key ("ID"),
    foreign key ("Назначение ID") references "Назначение" ("ID"),
    foreign key ("Состояние ID") references "Состояние объекта" ("ID"),
    foreign key ("Состав ID") references "Состав" ("ID"),
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
