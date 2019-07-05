-- INSERT DICT_PLATFORM_TB (Without PK)
-- INSERT INTO DICT.DICT_PLATFORM_TB (disp_nm, disp_ord, created_dt, updated_dt, active_fl, enable_fl, writer, editor, `desc`) VALUES
-- ("platformA", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", "");

-- INSERT DICT_SERVICE (Without PK)
INSERT INTO DICT.DICT_PARTITION_TB(service_sq, export_type, export_url, disp_nm, disp_ord, created_dt, updated_dt,
active_fl, enable_fl, writer, editor, `desc`)
VALUES (1, 1, "http://google.com/repository", "partitionA", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 1, "http://google.com/repository", "partitionB", 2, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 1, "http://google.com/repository", "partitionC", 3, NOW(), NOW(), 1, 1, "sdm", "sdm", "");

-- -- INSERT DICT_TREE_TB (Without PK)
INSERT INTO DICT.DICT_TREE_TB(partition_sq, tree_cd, tree_path, tree_level, disp_nm, disp_ord, created_dt, updated_dt,
active_fl, enable_fl, writer, editor, `desc`)
VALUES (1, 1, "1", 1, "treeA", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 2, "2", 1, "treeB", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 3, "1.3", 2, "treeC", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 4, "1.4", 2, "treeD", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 5, "2.5", 2, "treeE", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 6, "2.6", 2, "treeF", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 7, "1.3.7", 3, "treeG", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 8, "1.3.8", 3, "treeH", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 9, "1.4.9", 3, "treeI", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 10, "1.4.10", 3, "treeJ", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 11, "2.5.11", 3, "treeK", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 12, "2.5.12", 3, "treeL", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 13, "2.6.13", 3, "treeM", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 14, "2.6.14", 3, "treeN", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 15, "2.6.15", 3, "treeA", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", "");

-- -- INSERT DICT_node_TB (Without PK)
INSERT INTO DICT.DICT_NODE_TB(partition_sq, tree_sq, txt0, txt1, txt2, txt3, txt4, txt5, txt6, txt7, txt8, txt9, disp_nm
, disp_ord, created_dt, updated_dt, active_fl, enable_fl, writer, editor, `desc`)
VALUES (1, 7, "node1", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeA", 1, NOW(), NOW(), 1, 1, "sdm", "sdm",
""),
(1, 7, "node2", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeB", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 8, "node3", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeC", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 8, "node4", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeD", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 9, "node5", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeE", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 9, "node6", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeF", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 10, "node7", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeG", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 10, "node8", "한국어", "English", "日本", "中国", "", "", "", "", "e ", "nodeH", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 11, "node9", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeI", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 11, "node10", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeJ", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 12, "node11", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeK", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 12, "node12", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeL", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 13, "node13", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeM", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 13, "node14", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeN", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 14, "node15", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeO", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", ""),
(1, 14, "node16", "한국어", "English", "日本", "中国", "", "", "", "", "", "nodeP", 1, NOW(), NOW(), 1, 1, "sdm", "sdm", "");
