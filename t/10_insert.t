#!/usr/local/bin/perl
###########################################################################
# $Id: 10_insert.t,v 1.2 1999/09/21 05:42:22 wendigo Exp $
###########################################################################
#
# Author: Mark Rogaski <wendigo@pobox.com>
# RCS Revision: $Revision: 1.2 $
# Date: $Date: 1999/09/21 05:42:22 $
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

ok(ref($a = $ref->insert("firewater")), 'SCALAR');
ok($ref->nodes(), 9);
ok($ref->terminals(), 1);

ok(ref($a = $ref->insert("firewater")), '');
ok($ref->nodes(), 9);
ok($ref->terminals(), 1);

ok(ref($a = $ref->insert("stereolab")), 'SCALAR');
ok($ref->nodes(), 18);
ok($ref->terminals(), 2);

ok(ref($a = $ref->insert("tirewater")), 'SCALAR');
ok($ref->nodes(), 27);
ok($ref->terminals(), 3);

ok(ref($a = $ref->insert("tidewater")), 'SCALAR');
ok($ref->nodes(), 34);
ok($ref->terminals(), 4);

ok(ref($a = $ref->insert("tidewader")), 'SCALAR');
ok($ref->nodes(), 37);
ok($ref->terminals(), 5);

ok(ref($a = $ref->insert("firewater")), '');
ok($ref->nodes(), 37);
ok($ref->terminals(), 5);

ok(ref($a = $ref->insert("")), 'SCALAR');
ok($ref->nodes(), 37);
ok($ref->terminals(), 6);

ok(ref($a = $ref->insert("stereo")), 'SCALAR');
ok($ref->nodes(), 37);
ok($ref->terminals(), 7);

ok(ref($a = $ref->insert("")), '');
ok($ref->nodes(), 37);
ok($ref->terminals(), 7);

for ($i = 0;$i < 256;$i++) { $big .= chr($i); }
ok(ref($a = $ref->insert($big)), 'SCALAR');
ok($ref->nodes(), 293);
ok($ref->terminals(), 8);

ok(ref($a = $ref->insert($big)), '');
ok($ref->nodes(), 293);
ok($ref->terminals(), 8);


