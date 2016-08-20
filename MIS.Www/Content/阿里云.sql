

--�û���Ϣ
CREATE TABLE UserInfo(
ID UNIQUEIDENTIFIER PRIMARY KEY,--����
NickName NVARCHAR(50),--�ǳ�
RealName NVARCHAR(50),--����
Sex bit ,--�Ա� 1 �� 0Ů
MobilePhone NCHAR(11),--�ƶ��绰
TelePhone NVARCHAR(20),--�̶��绰
Eamil NVARCHAR(50),--Eamil
ContactAddress NVARCHAR(100),--��ϵסַ
FKDepartmentID INT ,--�������ţ���������ID
Birthday DATETIME,--����
[Status]BIT ,--״̬ 1 ���� 0����
CreateDateTime DATETIME,
UpdaeDateTime DATETIME
)

GO

--������Ϣ
CREATE TABLE DepartmentInfo
(
ID INT IDENTITY(1,1) PRIMARY KEY,--����
DepartmentName NVARCHAR(50) NOT NULL,--��������
ParentDepartmentID INT ,--�ϼ�����
[Status] BIT ,--״̬ 1��Ч 0����
FKUserInfoID UNIQUEIDENTIFIER,--������ID
LeadPeople NVARCHAR(50),--����������
Tel NVARCHAR(20),--��ϵ�绰
ContactAddress NVARCHAR(100),--��ϵ��ַ
CreateDateTime DATETIME DEFAULT GETDATE(),
UpdateDateTime DATETIME
)
go

--�˵���Ϣ
CREATE TABLE MenuInfo(
ID INT IDENTITY(1,1) PRIMARY KEY,--����
MenuName NVARCHAR(50),--�˵�����
ParentMenuID INT ,--�����˵�ID
Uri NVARCHAR(500),--����·��
Grade INT,--��С����
Remark NVARCHAR(500),--��ע
Icon NVARCHAR(500),--ͼ��
CreateDateTime DATETIME DEFAULT GETDATE(),--����ʱ��
UpdateDateTime DATETIME   --����ʱ��
)