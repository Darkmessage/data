#User that customers will use
CREATE USER 'client'@'localhost' IDENTIFIED BY 'thereisonlyonekinginthenorth';
CREATE USER 'client'@'127.0.0.1' IDENTIFIED BY 'thereisonlyonekinginthenorth';

GRANT SELECT
ON gwentapi.abilities
TO 'client'@'localhost';

GRANT SELECT
ON gwentapi.factions
TO 'client'@'localhost';

GRANT SELECT
ON gwentapi.glyphs
TO 'client'@'localhost';

GRANT SELECT
ON gwentapi.illustrators
TO 'client'@'localhost';

GRANT SELECT
ON gwentapi.patches
TO 'client'@'localhost';

GRANT SELECT
ON gwentapi.rarities
TO 'client'@'localhost';

GRANT SELECT
ON gwentapi.rows
TO 'client'@'localhost';

GRANT SELECT
ON gwentapi.types
TO 'client'@'localhost';


GRANT SELECT
ON gwentapi.abilities
TO 'client'@'127.0.0.1';

GRANT SELECT
ON gwentapi.factions
TO 'client'@'127.0.0.1';

GRANT SELECT
ON gwentapi.glyphs
TO 'client'@'127.0.0.1';

GRANT SELECT
ON gwentapi.illustrators
TO 'client'@'127.0.0.1';

GRANT SELECT
ON gwentapi.patches
TO 'client'@'127.0.0.1';

GRANT SELECT
ON gwentapi.rarities
TO 'client'@'127.0.0.1';

GRANT SELECT
ON gwentapi.rows
TO 'client'@'127.0.0.1';

GRANT SELECT
ON gwentapi.types
TO 'client'@'127.0.0.1';


#User for backup purposes
CREATE USER 'dump'@'localhost' IDENTIFIED BY 'thenightisdarkandfullofterror';
CREATE USER 'dump'@'127.0.0.1' IDENTIFIED BY 'thenightisdarkandfullofterror';

GRANT SELECT, LOCK TABLES, TRIGGER, SHOW VIEW
ON `gwentapi`.*
TO 'dump'@'localhost';

GRANT SELECT, LOCK TABLES, TRIGGER, SHOW VIEW
ON `gwentapi`.*
TO 'dump'@'127.0.0.1';


FLUSH PRIVILEGES;