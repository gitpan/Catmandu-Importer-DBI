use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name => 'Catmandu::Importer::DBI' ,
    license => 'perl',
    dist_author => [
            'Patrick Hochstenbach <patrick.hochstenbach@ugent.be>'
    ],
    dist_version_from => 'lib/Catmandu/Importer/DBI.pm' ,
    build_requires => {
            'Software::License' => 0,
            'Test::Exception' => 0,
            'Test::More' => 0,
    },
    requires => {
           'perl' => '5.10.1',
           'Catmandu' => '0.8005',
           'DBI'  => '1.630' ,
           'Moo'  => '1.000003',
    },
    create_makefile_pl => 'traditional',
    create_license => 1,
    meta_merge => {
        resources => {
            repository => 'https://github.com/LibreCat/Catmandu-Importer-DBI',
            bugtracker => 'https://github.com/LibreCat/Catmandu-Importer-DBI/issues',
        }
    },
);

$builder->create_build_script;
