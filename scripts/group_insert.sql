insert into members (role, userId, groupId) values ('admin', 1, 1);
insert into members (role, userId, groupId) values ('guest', 2, 2);
insert into report (status, subject, solution, membersId, userId) values ('cancelled', 'thing4', 'solved', 1, 1);
insert into report (status, subject, solution, membersId, userId) values ('cancelled', 'thing4', 'deleted', 2, 2);
insert into report (status, subject, solution, membersId, userId) values ('in progress', 'thing4', 'deleted', 1, 1);
insert into report (status, subject, solution, membersId, userId) values ('opened', 'thing3', 'deleted', 2, 2);
insert into report (status, subject, solution, membersId, userId) values ('in progress', 'thing1', 'deleted', 1, 1);
insert into _group (status, description) values ('public', 'ble-ble-ble');
insert into _group (status, description) values ('hidden', 'bla-bla-bla');
