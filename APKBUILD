# Contributor: NikSun <candysfm@gmail.com>
# Maintainer: NikSun <candysfm@gmail.com>
pkgname=gnirehtet
pkgver=2.5.2
_ver=${pkgver%.*}
pkgrel=0
pkgdesc="Reverse tethering tool for Android"
url="https://github.com/Genymobile/gnirehtet"
arch="all"
license="Apache-2.0"
depends=""
makedepends="rust cargo"
checkdepends=""
install="$pkgname.pre-install $pkgname.post-install"
subpackages=""
daemon_name="$pkgname"d
source="
  $pkgname-$pkgver.tar.gz::https://github.com/CandySunPlus/gnirehtet/archive/refs/tags/v$pkgver.tar.gz
	gnirehtetd.initd
	gnirehtetd.confd
  "
builddir="$srcdir/$pkgname-$pkgver/relay-rust"

build() {
	# Replace with proper build command(s)
  cargo install --locked --root $srcdir --path .
}

check() {
	# Replace with proper check command(s)
  $srcdir/bin/gnirehtet
}

package() {
	# Replace with proper package command(s)
	install -m755 -D "$srcdir"/$daemon_name.initd \
		"$pkgdir"/etc/init.d/$daemon_name
	install -m644 -D "$srcdir"/$daemon_name.confd \
		"$pkgdir"/etc/conf.d/$daemon_name
  install -m751 -D "$srcdir"/bin/$pkgname \
    "$pkgdir"/usr/bin/$pkgname
}

sha512sums="
0a56d10f6e68edad65d4b6795b416f632606feab72155e76c17dbad0872d3b71966475db69f705c682887a5a1f321705c2f26f6480dc2e5161ed940f8c4cb2f2  gnirehtet-2.5.2.tar.gz
7c0fd80602e97a5dfc7dd392b0ebd40e455caf32f3467a532e9d065713bfa6c51e209263981cb319f257442a33e2ed5944ddf0627d319a3d08b4a182c8982315  gnirehtetd.initd
d4d10e00662fb55c85f873b8691a8b74d807d7499880673a04437ad322ce424e84224e461c36c07c0cef11d06b310551f819ed4f9731dc077c0ee6c94c21956e  gnirehtetd.confd
"
