#!/usr/local/bin/perl
###########################################################################
# $Id: 02_new.t,v 1.2 1999/09/21 05:42:21 wendigo Exp $
###########################################################################
#
# Author: Mark Rogaski <wendigo@pobox.com>
# RCS Revision: $Revision: 1.2 $
# Date: $Date: 1999/09/21 05:42:21 $
#
###########################################################################
#
# See README for license information.
#
###########################################################################

use Test;
use Tree::Ternary;

BEGIN { plan tests => 2 }

ok($ref = new Tree::Ternary);
ok(ref($ref), 'Tree::Ternary');

