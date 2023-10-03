create table Customer_behavior
(
    Contract      varchar(100)  not  null,
    RelaxDuration int         null,
    MovieDuration int         null,
    ChildDuration int         null,
    SportDuration int         null,
    TvDuration    int         null,
    TotalDuration int         null,
    Most_watch    varchar(20) null,
    Tase          varchar(50) null,
    Activeness    int         null,
    Date          date        null,
primary key (Contract)
);
