#!/usr/local/bin/perl
###########################################################################
# $Id: 04_attrib.t,v 1.2 1999/09/21 05:42:22 wendigo Exp $
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
use Tree::Ternary qw( :attrib );

BEGIN { plan tests => 18 }

ok($ref = new Tree::Ternary);
ok(ref($ref), 'Tree::Ternary');

ok(defined(SPLIT_CHAR));
ok(defined(LO_KID));
ok(defined(EQ_KID));
ok(defined(HI_KID));
ok(defined(PAYLOAD));
ok(defined(NODE_COUNT));
ok(defined(TERMINAL_COUNT));

ok(! defined($ref->[SPLIT_CHAR]));
ok(! defined($ref->[LO_KID]));
ok(! defined($ref->[EQ_KID]));
ok(! defined($ref->[HI_KID]));
ok(! defined($ref->[PAYLOAD]));
ok($ref->[NODE_COUNT], 0);
ok($ref->[TERMINAL_COUNT], 0);

ok($ref->nodes(), 0);
ok($ref->terminals(), 0);

