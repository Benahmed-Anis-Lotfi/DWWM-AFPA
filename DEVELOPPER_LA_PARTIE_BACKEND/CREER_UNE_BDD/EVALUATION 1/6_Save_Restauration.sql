-- Séléctionner le fichier où ouvrir le terminal pour créer la sauvegarde et saisir la commande :

mysqldumb -u user -p databases > nom_fichier.sql
mysqldumb -u root -p gescom_afpa > Backup.sql

-- Pour restaurer la sauvegarde, utiliser le même code en supprimant 'dumb' et en inversant le sens du chevron :
mysql -u user -p databases < nom_fichier.sql 
mysql -u root -p gescom_afpa < Backup.sql 