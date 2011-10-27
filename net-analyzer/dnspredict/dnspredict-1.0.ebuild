# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils

DESCRIPTION="DNS predict"
HOMEPAGE="http://www.koders.com/perl/fid6FFEF28F1CD653FDDD57189A5E1229CB6368766C.aspx?s=split"
SRC_URI="http://backtrack-on-gentoo.googlecode.com/files/dnspredict.pl"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

S="${WORKDIR}"/"${PN}"
src_unpack() {
	cp "${DISTDIR}"/${PN}.pl "${WORKDIR}"/ || die
}

src_compile() {
	elog "Nothing to compile"
}

src_install() {
	dobin "${PN}".pl || die
}