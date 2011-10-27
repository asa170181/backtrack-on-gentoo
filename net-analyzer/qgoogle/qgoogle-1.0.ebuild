# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils

DESCRIPTION="Query Google Api"
HOMEPAGE="http://www.koders.com/python/fidDF5DB81B27EBE812CEBA0A185A428221A021D2E2.aspx?s=google"
SRC_URI="http://backtrack-on-gentoo.googlecode.com/files/qgoogle.py"

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