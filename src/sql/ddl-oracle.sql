create table crm.activity_log (
                                  id integer not null,
                                  user_id varchar2(50),
                                  activity_type varchar2(50),
                                  created DATE
);

alter table crm.activity_log add constraint al_idx01 primary key(id);
create sequence crm.activity_seq start with 1 increment by 1 nomaxvalue;