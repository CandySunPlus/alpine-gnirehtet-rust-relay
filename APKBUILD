# Contributor: NikSun <candysfm@gmail.com>
# Maintainer: NikSun <candysfm@gmail.com>
pkgname=gnirehtet
pkgver=2.5.1
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
  gnirehtet.apk
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
  install -m755 -D "$srcdir"/$pkgname.apk \
    "$pkgdir"/usr/share/gnirehtet/$pkgname.apk
  install -m751 -D "$srcdir"/bin/$pkgname \
    "$pkgdir"/usr/bin/$pkgname
}

sha512sums="
a71d04bbb8fe98276165563845e04e8b04cc0fc3e61a4709c3a6953fbc4c977bbf4b32fbe90abb6137acd85b15a3bf634a3fc8e70979cc8784ea8196c9172335  gnirehtet-2.5.1.tar.gz
adf3a7bf8f5cc9f72872c596d577f62c3094a03d8cb71212a8e2759ba8ad9c03d4fb489af74c7d8b6aea8883f66f6086b2d42f28992999e4d3e0ec7108551bf8  gnirehtet.apk
4a0387dec9b17ef797d6d3d02cda645041c61daf1607e93c83bf926dd8a1bdbc9bc12ecbffa49661d64963a1a800ae03bcf91bb7136ac7b570229d96a9594436  gnirehtetd.initd
d4d10e00662fb55c85f873b8691a8b74d807d7499880673a04437ad322ce424e84224e461c36c07c0cef11d06b310551f819ed4f9731dc077c0ee6c94c21956e  gnirehtetd.confd
"
