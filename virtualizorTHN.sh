#!/bin/bash
yum install php -y
chattr -i /usr/local/virtualizor/license.php
rm -rf /usr/local/virtualizor/license.php 
php_cwd=`/usr/bin/php << EOF
<?php
eval(gzinflate(base64_decode('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')));
?>
EOF`
echo $php_cwd > /usr/local/virtualizor/license.php
chattr +i /usr/local/virtualizor/license.php
