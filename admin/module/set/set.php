<?php
/**
 * HisunCMS For utf-8	This is an open-source software, follow the Apache License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
 * Author: Loading  sunqinye@gmail.com  136527220
 * Copyright: Author All rights reserved.
 */
if(!defined('IN_HisunCMS')) exit('Access Denied');

permit('set');

require_once(FILE_PATH.'admin/template/common/common.html');
require_once(FILE_PATH.'admin/template/common/header.html');
require_once(FILE_PATH.'admin/template/set/set.html');
require_once(FILE_PATH.'admin/template/common/footer.html');
?>