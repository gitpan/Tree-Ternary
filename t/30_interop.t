#!/usr/local/bin/perl
###########################################################################
# $Id: 30_interop.t,v 1.2 1999/09/21 05:42:24 wendigo Exp $
###########################################################################
#
# Author: Mark Rogaski <wendigo@pobox.com>
# RCS Revision: $Revision: 1.2 $
# Date: $Date: 1999/09/21 05:42:24 $
#
###########################################################################
#
# See README for license information.
#
###########################################################################

use Test;
use Tree::Ternary;

BEGIN { plan tests => 10 }

$ref = new Tree::Ternary;

${$ref->insert("darling")} = "buds";;
ok(${$ref->rsearch("darling")}, "buds");
ok($ref->rsearch("buds"), undef);

${$ref->rinsert("tom")} = "waits";;
ok(${$ref->search("tom")}, "waits");
ok($ref->search("waits"), undef);

ok($ref->rinsert("darling"), undef);
ok(${$ref->search("darling")}, "buds");

ok($ref->insert("tom"), undef);
ok(${$ref->rsearch("tom")}, "waits");

for ($i = 0;$i < 90;$i++) { $big .= chr($i); }
${$ref->insert($big)} = "chief";;
ok(${$ref->rsearch($big)}, "chief");

for ($i = 90;$i >= 0;$i--) { $gib .= chr($i); }
${$ref->rinsert($gib)} = "black";;
ok(${$ref->search($gib)}, "black");


