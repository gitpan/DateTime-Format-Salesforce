#!/usr/bin/env perl

# Copyright (C) 2005  Joshua Hoblitt

use strict;
use warnings FATAL => qw( all );

use lib qw( ./lib ./t );

use Test::More;

# example taken from Test::Distribution Pod

BEGIN {
    eval {
        require Test::Distribution;
    };
    if($@) {
        plan skip_all => 'Test::Distribution not installed';
    } else {
        # pod tests have to be disabled because of the Pod test strings in
        # Test::Pod::Tidy
#import Test::Distribution not => qw( pod );
        import Test::Distribution;
    }
}
