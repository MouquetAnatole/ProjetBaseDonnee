\! echo '\033[0;32;40m   INIT :  \033[0,36;40m Creation des tables\033[0m'
\i TableSupression.sql
\i fonction/dropAll.sql


\! echo '\033[0;32;40m   INIT :  \033[0,36;40m Creation des tables\033[0m'
\i TableCreation.sql
\i trigger.sql

\! echo '\033[0;32;40m   INIT :  \033[0,36;40m Remplissages des tables\033[0m'
\i Insert.sql

\! echo '\033[0;32;40m   INIT :  \033[0,36;40m Creation des Fonctions\033[0m'
\i fonction/fct_RegionEnglobantes.sql
\i fonction/fct_isRegionIn.sql
\i fonction/fct_totalSub.sql

\! echo '\033[0;32;40m   INIT :  \033[0,36;40m Creation des Vues\033[0m'
\i view/vw_prixLocal_Liquide.sql
\i view/vw_subLocal_Liquide.sql
