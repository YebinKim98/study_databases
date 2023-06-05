
CREATE TABLE CARS
(
  COMPANY_NAME_ID VARCHAR NOT NULL COMMENT '회사이름_ID',
  CARS YEAR_ID    VARCHAR NOT NULL COMMENT '연식_ID',
  CARS_NAME_ID    VARCHAR NOT NULL COMMENT '자동차 이름_ID',
  CARS_ID         VARCHAR NOT NULL COMMENT '유니크_ID',
  PRIMARY KEY (CARS_ID)
);

CREATE TABLE CARS YEAR
(
  CARS YEAR    VARCHAR NULL     COMMENT '자동차 연식',
  CARS YEAR_ID VARCHAR NOT NULL COMMENT '연식_ID',
  PRIMARY KEY (CARS YEAR_ID)
) COMMENT '연식';

CREATE TABLE CARS_NAME
(
  CARS NAME    VARCHAR NULL     COMMENT '자동차이름',
  CARS_NAME_ID VARCHAR NOT NULL COMMENT '자동차 이름_ID',
  PRIMARY KEY (CARS_NAME_ID)
) COMMENT '자동차 이름';

CREATE TABLE CARS_OPTION
(
  OPTION_CODE    VARCHAR NOT NULL COMMENT '옵션_ID',
  CARS_OPTION_ID VARCHAR NOT NULL COMMENT '자동차 옵션_ID'
);

CREATE TABLE COMPANY NAME
(
  COMPANY NAME    VARCHAR NOT NULL COMMENT '회사이름',
  COMPANY_NAME_ID VARCHAR NOT NULL COMMENT '회사이름_ID',
  PRIMARY KEY (COMPANY_NAME_ID)
) COMMENT '회사이름';

CREATE TABLE OPTION_CODE
(
  OPTION NAME VARCHAR NULL     COMMENT '옵션명',
  OPTION_CODE VARCHAR NOT NULL COMMENT '옵션_ID',
  PRIMARY KEY (OPTION_CODE)
) COMMENT '옵션 코드';

ALTER TABLE CARS_OPTION
  ADD CONSTRAINT FK_OPTION_CODE_TO_CARS_OPTION
    FOREIGN KEY (OPTION_CODE)
    REFERENCES OPTION_CODE (OPTION_CODE);

ALTER TABLE CARS
  ADD CONSTRAINT FK_COMPANY NAME_TO_CARS
    FOREIGN KEY (COMPANY_NAME_ID)
    REFERENCES COMPANY NAME (COMPANY_NAME_ID);

ALTER TABLE CARS
  ADD CONSTRAINT FK_CARS YEAR_TO_CARS
    FOREIGN KEY (CARS YEAR_ID)
    REFERENCES CARS YEAR (CARS YEAR_ID);

ALTER TABLE CARS
  ADD CONSTRAINT FK_CARS_NAME_TO_CARS
    FOREIGN KEY (CARS_NAME_ID)
    REFERENCES CARS_NAME (CARS_NAME_ID);

ALTER TABLE CARS_OPTION
  ADD CONSTRAINT FK_CARS_TO_CARS_OPTION
    FOREIGN KEY (CARS_OPTION_ID)
    REFERENCES CARS (CARS_ID);
