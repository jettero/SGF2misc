
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'         => 'Games::Go::SGF2misc',
    'VERSION_FROM' => 'SGF2misc.pm',
    'PREREQ_PM'    => {

        'Parse::Lex'     => 0, 
        'Data::Dumper'   => 0, 
        'Compress::Zlib' => 0,

        'CGI' => 0,

        'Unix::Process'  => 0,
        'Devel::Size'    => 0, 
        'Number::Format' => 0, 
        'Time::HiRes'    => 0,

        ($ENV{SKIP_GD} ? (): ('GD' => 2.12)),
    },

    ($ExtUtils::MakeMaker::VERSION ge '6.48'? 
        (MIN_PERL_VERSION => 5.006001,
            META_MERGE => {
                keywords => ['go', 'sgf'],
                resources=> { repository => 'http://github.com/jettero/SGF2misc' },
            },

        LICENSE	=> 'GPL',
    ) : ()),
);
