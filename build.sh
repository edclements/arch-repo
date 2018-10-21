cd pkg/hedaleth-base
extra-x86_64-build -c
cd ../..
repo-add hedaleth.db.tar.xz pkg/hedaleth-base/hedaleth-base-1-1-x86_64.pkg.tar.xz
cd pkg/dwm
extra-x86_64-build -c
cd ../..
repo-add hedaleth.db.tar.xz pkg/dwm/dwm-6.1-4-x86_64.pkg.tar.xz
s3cmd sync --acl-public pkg/hedaleth-base/hedaleth-base-1-1-x86_64.pkg.tar.xz s3://arch.hedaleth.net
s3cmd sync --acl-public pkg/dwm/dwm-6.1-4-x86_64.pkg.tar.xz s3://arch.hedaleth.net
s3cmd sync --acl-public hedaleth.*.tar.xz s3://arch.hedaleth.net
s3cmd sync --acl-public index.html s3://arch.hedaleth.net
