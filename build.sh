cd pkg/hedalth-base
extra-x86_64-build -c
cd ../..
repo-add hedalth.db.tar.xz pkg/hedalth-base/hedalth-base-1-1-x86_64.pkg.tar.xz
cd pkg/dwm
extra-x86_64-build -c
cd ../..
repo-add hedalth.db.tar.xz pkg/dwm/dwm-6.1-4-x86_64.pkg.tar.xz
s3cmd sync --acl-public pkg/hedalth-base/hedalth-base-1-1-x86_64.pkg.tar.xz s3://arch.hedalth.net
s3cmd sync --acl-public pkg/dwm/dwm-6.1-4-x86_64.pkg.tar.xz s3://arch.hedalth.net
s3cmd sync --acl-public hedalth.*.tar.xz s3://arch.hedalth.net
s3cmd sync --acl-public index.html s3://arch.hedalth.net
