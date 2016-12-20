use strict;
use warnings;
use Test::More tests => 1;
use PkgConfig::LibPkgConf::Client;

diag '';
diag '';
diag '';

if(PkgConfig::LibPkgConf::Client->can('dir_list'))
{
  diag "[pkg-config search path]";
  foreach my $dir (PkgConfig::LibPkgConf::Client->new->env->dir_list)
  {
    diag $dir;
  }

  diag '';
  diag '';
}

diag '[impl]';
diag $PkgConfig::LibPkgConf::impl;

diag '';
diag '';
diag '';


ok 1;
done_testing;
