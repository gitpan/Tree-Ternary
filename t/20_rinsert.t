#!/usr/local/bin/perl
###########################################################################
# $Id: 20_rinsert.t,v 1.2 1999/09/21 05:42:23 wendigo Exp $
###########################################################################
#
# Author: Mark Rogaski <wendigo@pobox.com>
# RCS Revision: $Revision: 1.2 $
# Date: $Date: 1999/09/21 05:42:23 $
#
###########################################################################
#
# See README for license information.
#
###########################################################################

use Test;
use Tree::Ternary;

BEGIN { plan tests => 38 }

$ref = new Tree::Ternary;

ok($ref->nodes(), 0);
ok($ref->terminals(), 0);

ok(ref($a = $ref->rinsert("firewater")), 'SCALAR');
ok($ref->nodes(), 9);
ok($ref->terminals(), 1);

ok(ref($a = $ref->rinsert("firewater")), '');
ok($ref->nodes(), 9);
ok($ref->terminals(), 1);

ok(ref($a = $ref->rinsert("stereolab")), 'SCALAR');
ok($ref->nodes(), 18);
ok($ref->terminals(), 2);

ok(ref($a = $ref->rinsert("tirewater")), 'SCALAR');
ok($ref->nodes(), 27);
ok($ref->terminals(), 3);

ok(ref($a = $ref->rinsert("tidewater")), 'SCALAR');
ok($ref->nodes(), 34);
ok($ref->terminals(), 4);

ok(ref($a = $ref->rinsert("tidewader")), 'SCALAR');
ok($ref->nodes(), 37);
ok($ref->terminals(), 5);

ok(ref($a = $ref->rinsert("firewater")), '');
ok($ref->nodes(), 37);
ok($ref->terminals(), 5);

ok(ref($a = $ref->rinsert("")), 'SCALAR');
ok($ref->nodes(), 37);
ok($ref->terminals(), 6);

ok(ref($a = $ref->rinsert("stereo")), 'SCALAR');
ok($ref->nodes(), 37);
ok($ref->terminals(), 7);

ok(ref($a = $ref->rinsert("")), '');
ok($ref->nodes(), 37);
ok($ref->terminals(), 7);

for ($i = 0;$i < 90;$i++) { $big .= chr($i); }
ok(ref($a = $ref->rinsert($big)), 'SCALAR');
ok($ref->nodes(), 127);
ok($ref->terminals(), 8);

ok(ref($a = $ref->rinsert($big)), '');
ok($ref->nodes(), 127);
ok($ref->terminals(), 8);


