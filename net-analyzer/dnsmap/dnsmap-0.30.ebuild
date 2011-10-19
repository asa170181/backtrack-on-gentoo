# Copyright 1999-2010 pagvac (gnucitizen.org)
# Distributed under the terms of the GNU General Public License v2
# $Header: /

EAPI="3"
inherit eutils

SRC_URI="http://dnsmap.googlecode.com/files/$PN-$PVR.tar.gz"


DESCRIPTION="Passive DNS network mapper a.k.a. subdomains bruteforcer"
HOMEPAGE="http://code.google.com/p/dnsmap/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ipv6"
CATEGORY="net-analyzer"

DEPEND=""
RDEPEND=""

src_compile() {
	$(tc-getCC) $CFLAGS -Wall dnsmap.c -o dnsmap || die
}


src_install() {
	dobin dnsmap || die
}
