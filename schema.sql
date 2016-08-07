DROP table if EXISTS account_holder;
CREATE TABLE account_holder (
    id integer primary key autoincrement,
    name text not null,
    warning text not null,
    phone text not null
);
