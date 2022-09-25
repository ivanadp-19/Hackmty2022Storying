CREATE TABLE  users (
    PublicKey varcahr(80) PRIMARY KEY 
); 

CREATE TABLE postLog (
    PostKey var(80) PRIMARY KEY,
    PublicationDate DATE
);

INSERT INTO postLog (PostKey, PublicationDate) VALUES ("6534183436fc589a5b44a09c5d27a9efbafb868d1af3344ac3fe63fa928dc1cb", '2008-11-11');
INSERT INTO postLog (PostKey, PublicationDate) VALUES ("74edb51bb2a5d448b223e4954677fbbc3e9503a48cb78e284ac776cf45440931", '2008-11-12');
INSERT INTO postLog (PostKey, PublicationDate) VALUES ("a0efe5ad2764cd1726a122c1cc59f4108b6ee4d8980ea128d7ac19054f9e53e2", '2008-11-13');
INSERT INTO postLog (PostKey, PublicationDate) VALUES ("ccc2150f9e58e05a0b68063513a0a640ca00b7a757ff58666af48b9677c08093", '2008-11-14');
INSERT INTO postLog (PostKey, PublicationDate) VALUES ("542e6a1418d8d7345994364d891bedcebf3115c4daafbe8be0281a70931d4591", '2008-11-15');


INSERT INTO postLog (PostKey, PublicationDate) VALUES ("77cab41d21c5095a1579f0fd1852b9f3eccef8a76adabc8ea24b44f39c7d0c91", '2022-09-25');
INSERT INTO postLog (PostKey, PublicationDate) VALUES ("77cab41d21c5095a1579f0fd1852b9f3eccef8a76adabc8ea24b44f39c7d0c91", '2008-09-26');
INSERT INTO postLog (PostKey, PublicationDate) VALUES ("3", '2008-11-18');
INSERT INTO postLog (PostKey, PublicationDate) VALUES ("4", '2008-11-19');

SELECT * FROM postLog ORDER BY PublicationDate DESC LIMIT 5;

DELETE FROM postLog WHERE PostKey="f1f9e444fd181145a399a16a0d0e316be4a958db1637d3fb41fe3341d245ff75";


SELECT * FROM postLog;

DROP TABLE postLog;