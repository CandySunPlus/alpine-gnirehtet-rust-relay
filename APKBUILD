# Contributor: NikSun <candysfm@gmail.com>
# Maintainer: NikSun <candysfm@gmail.com>
pkgname=gnirehtet
pkgver=2.5.0
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
  https://github.com/Genymobile/gnirehtet/archive/refs/tags/v$_ver.tar.gz
  https://github.com/Genymobile/gnirehtet/releases/download/v$_ver/gnirehtet-rust-linux64-v$_ver.zip
	gnirehtetd.initd
	gnirehtetd.confd
  "
builddir="$srcdir/$pkgname-$_ver/relay-rust"

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
  install -m755 -D "$srcdir"/gnirehtet-rust-linux64/$pkgname.apk \
    "$pkgdir"/usr/share/gnirehtet/$pkgname.apk
  install -m751 -D "$srcdir"/bin/$pkgname \
    "$pkgdir"/usr/bin/$pkgname
}

sha512sums="
83feeb37385aef06bae2fcfd5b8832fad54dfbc6da0951815dea7ad10579a7ea75648320127fd888ffb318a08efa85e0d6b63adbc1c35c69e479ef2928f86eeb  v2.5.tar.gz
1ef2debc8ddb0b51b1b95e3c9d6f69697a96ac4acfd95ef2f9a96809cd426c1eca2fc31022254838ed766519dfdec2262d98b04ab1c53bbbe8b11bbea9414b75  gnirehtet-rust-linux64-v2.5.zip
4a0387dec9b17ef797d6d3d02cda645041c61daf1607e93c83bf926dd8a1bdbc9bc12ecbffa49661d64963a1a800ae03bcf91bb7136ac7b570229d96a9594436  gnirehtetd.initd
f11f0d192cd7823307c2ce4ddc7b3fff5190f72d3f65a5524b487021a95a222aca1fd36ab1eb58ed533e7acd555bfb70f0c8a13db20338ea31527f3151fd2bd7  gnirehtetd.confd
"
