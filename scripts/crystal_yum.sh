sudo rpm --import https://dist.crystal-lang.org/rpm/RPM-GPG-KEY

sudo cat > /etc/yum.repos.d/crystal.repo <<END
[crystal]
name = Crystal
baseurl = https://dist.crystal-lang.org/rpm/
END

sudo yum install crystal
