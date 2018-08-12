# Copyright 2004-2018 Sabayon
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils

DESCRIPTION="Gentoo BuildKit"
HOMEPAGE="http://www.gentoo.org"
SRC_URI="https://github.com/gentoo-build-service/buildkit/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~arm"
IUSE=""
S="${WORKDIR}/buildkit-${PV}"
DEPEND=""
RDEPEND="app-misc/pax-utils
	app-portage/eix
	app-portage/layman
	app-portage/gentoolkit
	app-portage/portage-utils
	app-portage/repoman
	dev-lang/perl
	sys-apps/gentoo-functions"

src_install() {
	emake DESTDIR="${D}" install
}
