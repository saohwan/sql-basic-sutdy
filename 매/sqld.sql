
-- DDL(������ ���Ǿ�)
-- CREATE TABLE
CREATE TABLE BOARD (
    BNO NUMBER(10), /*NOT NULL UNIQUE,*/ -- �۹�ȣ�� ��������� �ȵǰ� ����ũ�ؾ��Ѵ�.
    TITLE VARCHAR2(200) NOT NULL, /*������200���� ����*/
    CONTENT VARCHAR2(3000), /*NOT NULL �� �Ⱦ��� �ڵ����� NULL �� ����*/ 
    WRITER VARCHAR2(50) NOT NULL,
    REG_DATE DATE NOT NULL --��¥�� �ʼ������� 
);

-- PK ����
ALTER TABLE BOARD ADD CONSTRAINT pk_board_bno PRIMARY KEY (BNO);
 /*���������� �߰��մϴ� */
--bno ���� �������� PK�� �Ǵ�.

-- CREATE TABLE
CREATE TABLE REPLY (
    REPLY_NO NUMBER(10),
    REPLY_CONTENT VARCHAR2(500) NOT NULL,
    REPLY_WRITE VARCHAR(50) NOT NULL,
    BNO NUMBER(10)
);

-- PK ����
ALTER TABLE REPLY ADD CONSTRAINT pk_reply_reply PRIMARY KEY (REPLY_NO); 

-- FK ����
ALTER TABLE REPLY ADD CONSTRAINT fk_reply_bno FOREIGN KEY (BNO) REFERENCES BOARD (BNO); /*--��� ���̺� �ִ� BNO�� FK�� ���� */

--�÷� ����
/*����Ŭ�� ADD �÷��� �ƴ϶� �׳� ADD*/
ALTER TABLE REPLY ADD (REPLY_REG_DATE DATE NOT NULL);
ALTER TABLE REPLY DROP COLUMN REPLY_REG_DATE;

SELECT * FROM REPLY;
