USE STUDENTS;

INSERT INTO student VALUES("000000001","dick","around","ing","","FR");
INSERT INTO course VALUES("BUSA120",3,0.0,"FR",0);
INSERT INTO course VALUES("ACCT210",3,0.0,"FR",24);
INSERT INTO course VALUES("ACCT211",3,0.0,"FR",0);
INSERT INTO course VALUES("ACCT324",3,0.0,"FR",0);
INSERT INTO prereqCourse VALUES("ACCT210","ACCT211","C");
INSERT INTO prereqCourse VALUES("ACCT210","ACCT324","C");
INSERT INTO prereqCourse VALUES("BUSA120","ACCT324","C");
INSERT INTO courseInstances VALUES("56789","ACCT324","Clements");
INSERT INTO courseInstances VALUES("56781","BUSA120","Somebody");
INSERT INTO studentCoursesTaken VALUES("000000001","56781","BUSA120",3,"C");