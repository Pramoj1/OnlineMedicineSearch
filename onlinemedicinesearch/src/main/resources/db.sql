create table user_logging_dtl
(
user_id  varchar2(50),
loging_time date default sysdate,
CONSTRAINT user_logging_dtl_fk FOREIGN KEY (user_id) REFERENCES user_details (user_id)
);

create table user_details
(
user_id  varchar2(50),
org_name varchar2(100),
area     varchar2(100),
address  varchar2(100),
city     varchar2(100),
contactphones varchar2(100),
user_role varchar2(100),
ogr_id number,
CONSTRAINT user_details_pk PRIMARY KEY (user_id)
);

create table password_mgm
(
user_id  varchar2(50),
password varchar2(50),
comfrom_pass varchar2(50),
squestion varchar2(500) default 'what is your pet name?',
ans varchar2(500)
);

ALTER TABLE password_mgm
ADD CONSTRAINT password_mgm_fk
   FOREIGN KEY (user_id)
   REFERENCES user_details (user_id);




