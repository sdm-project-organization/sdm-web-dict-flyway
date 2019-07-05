/*CREATE TABLE DICT_PLATFORM_TB
(
  platform_sq SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT, -- PK 6만개
  disp_nm VARCHAR(64),
  disp_ord SMALLINT UNSIGNED,
  created_dt DATETIME NOT NULL , -- [Format] yyyy-MM-dd hh:mm:ss
  updated_dt DATETIME, -- [Format] yyyy-MM-dd hh:mm:ss
  active_fl TINYINT NOT NULL DEFAULT 1, -- 1-true, 2-false
  enable_fl TINYINT NOT NULL DEFAULT 1, -- 1-true, 2-false
  writer VARCHAR(16) NOT NULL ,
  editor VARCHAR(16),
  `desc` VARCHAR(256),
  PRIMARY KEY(platform_sq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;*/

CREATE TABLE DICT_PARTITION_TB
(
partition_sq INT UNSIGNED NOT NULL AUTO_INCREMENT,
service_sq INT UNSIGNED NOT NULL,
export_type TINYINT UNSIGNED, -- 256개
export_url VARCHAR(100),
disp_nm TINYTEXT,
disp_ord INT,
created_dt DATETIME NOT NULL, -- [Format] yyyy-MM-dd hh:mm:ss
updated_dt DATETIME, -- [Format] yyyy-MM-dd hh:mm:ss
active_fl TINYINT NOT NULL DEFAULT 1, -- 1-true, 2-false
enable_fl TINYINT NOT NULL DEFAULT 1, -- 1-true, 2-false
writer VARCHAR(16)NOT NULL,
editor VARCHAR(16),
`desc` VARCHAR(256),
PRIMARY KEY(partition_sq)
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE DICT_TREE_TB
(
tree_sq INT UNSIGNED NOT NULL AUTO_INCREMENT, -- PK 40억개
partition_sq INT UNSIGNED NOT NULL, -- FK 6만개
tree_cd MEDIUMINT UNSIGNED, -- 1600만개
tree_path VARCHAR(256),
tree_level TINYINT UNSIGNED, -- 256
disp_nm TINYTEXT,
disp_ord INT,
created_dt DATETIME NOT NULL, -- [Format] yyyy-MM-dd hh:mm:ss
updated_dt DATETIME, -- [Format] yyyy-MM-dd hh:mm:ss
active_fl TINYINT NOT NULL DEFAULT 1, -- 1-true, 2-false
enable_fl TINYINT NOT NULL DEFAULT 1, -- 1-true, 2-false
writer VARCHAR(16)NOT NULL,
editor VARCHAR(16),
`desc` VARCHAR(256),
PRIMARY KEY(tree_sq),
FOREIGN KEY(partition_sq)
REFERENCES DICT_PARTITION_TB(partition_sq)
  ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
CREATE INDEX DICT_TREE_IDX01 ON DICT_TREE_TB(partition_sq, tree_level, tree_path);

CREATE TABLE DICT_NODE_TB
(
node_sq INT UNSIGNED NOT NULL AUTO_INCREMENT, -- PK 40억
partition_sq INT UNSIGNED NOT NULL, -- (?) 필요할지
tree_sq INT UNSIGNED NOT NULL,
txt0 VARCHAR(256),
txt1 VARCHAR(256),
txt2 VARCHAR(256),
txt3 VARCHAR(256),
txt4 VARCHAR(256),
txt5 VARCHAR(256),
txt6 VARCHAR(256),
txt7 VARCHAR(256),
txt8 VARCHAR(256),
txt9 VARCHAR(256),
disp_nm TINYTEXT,
disp_ord INT,
created_dt DATETIME NOT NULL, -- [Format] yyyy-MM-dd hh:mm:ss
updated_dt DATETIME, -- [Format] yyyy-MM-dd hh:mm:ss
active_fl TINYINT NOT NULL DEFAULT 1, -- 1-true, 2-false
enable_fl TINYINT NOT NULL DEFAULT 1, -- 1-true, 2-false
writer VARCHAR(16)NOT NULL,
editor VARCHAR(16),
`desc` VARCHAR(256),
PRIMARY KEY(node_sq),
FOREIGN KEY(partition_sq)
REFERENCES DICT_PARTITION_TB(partition_sq)
  ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY(tree_sq)
REFERENCES DICT_TREE_TB(tree_sq)
  ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;