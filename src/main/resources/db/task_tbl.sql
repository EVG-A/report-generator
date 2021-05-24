CREATE TABLE "SYSTEM"."TASK"
(
    "ID"        NUMBER(10, 0) NOT NULL PRIMARY KEY ,
    "STATUS"    VARCHAR2(255 CHAR),
    "DATE_FROM" TIMESTAMP(6),
    "DATE_TO"   TIMESTAMP(6),
    CONSTRAINT "TASK_PK" PRIMARY KEY ("ID")
);