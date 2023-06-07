-- INSERT INTO table_name 
-- (column1, column2, column3, ...)
-- VALUES 
-- (value1, value2, value3, ...)

INSERT INTO address_code
(ADDRESS, ADDRESS_CODE) 
VALUES
('서울시', 'A-01'),
('부산시', 'A-02'),
('경기도', 'A-03'),
('대전시', 'A-03'),
('인천시', 'A-05');

INSERT INTO gender_code
(GENDER, GENDER_CODE)
VALUES
('남', 'G-01'),
('여', 'G-02');

INSERT INTO hobby_code
(HOBBY, HOBBY_CODE) 
VALUES
('요리', 'H-01'),
('등산', 'H-02'),
('음악감상', 'H-03'),
('독서', 'H-04'),
('요가', 'H-05'),
('여행', 'H-06'),
('사진촬영', 'H-07'),
('수영', 'H-08');

INSERT INTO members
(MEMBERS, AGE, TELEPHONE, MEMBERS_CODE, address_code, gender_code) 
VALUES
('홍길동', '30', '010-1234-5678', 'M-01', 'A-01', 'G-01'),
('박영희', '25', '010-9876-5432', 'M-02', 'A-02', 'G-02'),
('김철수', '35', '010-1111-2222', 'M-03', 'A-03', 'G-01'),
('이영미', '28', '010-3333-4444', 'M-03', 'A-04', 'G-02'),
('정민호', '32', '010-5555-6666', 'M-05', 'A-05', 'G-01');

INSERT INTO members_hobby
(MEMBERS_CODE, HOBBY_CODE)
VALUES
('M-01', 'H-01'),
('M-01', 'H-02'),
('M-02', 'H-03'),
('M-02', 'H-04'),
('M-03', 'H-05'),
('M-03', 'H-06'),
('M-04', 'H-07'),
('M-04', 'H-08'),
('M-05', 'H-09'),
('M-05', 'H-010');


INSERT INTO members_login
(login, login_CODE) 
VALUES
('hong@gmail.com', 'E-01'),
('park.younghee@naver.com', 'E-01'),
('kimchulsu@gmail.com', 'E-01'),
('leeyoungmi@naver.com', 'E-01'),
('jmh123@gmail.com', 'E-01');