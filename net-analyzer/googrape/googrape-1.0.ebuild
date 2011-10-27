# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils

DESCRIPTION="Google rape"
HOMEPAGE="http://www.koders.com/python/fidCFABEB4D89600CF6E21BF42A955EC449D240AB40.aspx?s=google"
SRC_URI="http://backtrack-on-gentoo.googlecode.com/files/googrape.py"

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