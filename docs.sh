#!/usr/local/bin/bash # This is not the default version of bash
                      # MacOS ships with an older version of bash
                      # this one was installed with homebrew

# cookbook filename: embedded_documentation
# April 2018, transcribed by Alan Yamada
# This script simply shows how to document a shell script, this should also
# translate to regular code projects.

echo 'Shell script code goes here'
# Use a : NOOP and here document to embed documentation,

exit 0      # put exit 0 right before the documenation so the script
            # exits rather than parsing each documentation line
: <<'END_OF_DOCS'

Embedded documentation such as Perl's Plain Old Documentation (POD),
or even plain text here.

Any accurate documentation is better than none at all.

Sample documentation in Perl's Plain Old Documentation (POD) format adapted  from
CODE/ch07/Ch07.001_Best_Ex7.1 and 7.2 in Perl Best Practices.

=head1 Title of the documentation

docs.sh--Demonstration of shell documentation

=head1 SYNOPSIS

docs.sh [OPTIONS] <file>

=head1 OPTIONS

     -h = This usage.
     -v = Be verbose.
     -V = Show version, copyright and license information.

=head1 DESCRIPTION

This is just a demonstration of how to document a bunch of code, using POD markdown.

# To read on-screen, automatically paginated
$ perldoc docs.sh

# Just the "usage" sections
$ pod2usage docs.sh

# Create an HTML version
$ pod2html docs.sh > docs.html

# Create a man page
$ pod2man docs.sh > docs.1

=head1 LICENSE AND COPYRIGHT

=cut

END_OF_DOCS
