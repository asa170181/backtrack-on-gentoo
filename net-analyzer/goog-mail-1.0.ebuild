# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils

DESCRIPTION="Google mail enum"
HOMEPAGE="http://www.koders.com/python/fid7E5CF7E69960B5B2C69F0541F01BE0E238A974A1.aspx?s=google"
SRC_URI="http://backtrack-on-gentoo.googlecode.com/files/goog-mail.py"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

S="${WORKDIR}"/"${PN}"
src_unpack() {
	cp "${DISTDIR}"/${PN}.py "${WORKDIR}"/ || die
}
src_compile() {
	elog "Nothing to compile"
}

src_install() {
	dobin "${PN}".py || die
}
