# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils

DESCRIPTION="Google search on cli"
HOMEPAGE="http://inessential.com/2009/01/30/trigger_google_search_from_command-line_"
SRC_URI="http://backtrack-on-gentoo.googlecode.com/files/gs.py"

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