use strict;
use warnings;
use Test::More;
use Test::Exception;
use Catmandu::Importer::DBI;

my %attrs = (
        dsn => 'dbi:mysql:fedora3' ,
        user => 'root' ,
        password => '1q2w3e4r' ,
        query => 'select * from dcDates'
);

my $importer = Catmandu::Importer::DBI->new(%attrs);

isa_ok($importer, 'Catmandu::Importer::DBI');

use Data::Dumper;
$importer->each(sub {
    print Dumper($_[0]);
});

done_testing;
