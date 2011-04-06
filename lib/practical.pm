package practical;
our $VERSION = '0.02';

sub import {
    require strict;
    strict->import;

    require warnings;
    warnings->import;

    require utf8;
    utf8->import;

    require feature;
    feature->import('switch', 'say', 'state');
}
1;

__END__

=head1 NAME

practical - practical pragma

=head1 SYNOPSIS

  use practical;

  # is the same as:

  use strict;
  use warnings;
  use utf8;
  use feature qw(switch say state);

=head1 DESCRIPTION

C<practical> is practical pragma.

This module is written for people who are tired of typing hackneyed expressions.
Many people write following code on the top of scripts.

  use strict;
  use warnings;
  use utf8;
  use feature qw(switch say state);

Assuming that it is true, what we should do about it is shorten it.

=head1 NAMING

`perldoc perl` (5.10.0) says perl is Practical Extraction and Report Language.
This pragma makes perl more practical.

=head1 CAUTION

As of today, we can use C<feature> pragma. In contrast, ancient perl (< 5.10) cannot use it.
(If you know the way to use C<feature> pragma in 5.8.9, let me know how to do it.)

Hence I recommend for you to use C<practical> pragma in your script.
If you do not want to support perl version before 5.10 in your CPAN modules, go on ahead!

=head1 THERE IS NO C<no practical>!

Did you write many C<no> like below?

  no strict;
  no warnings;
  no utf8;
  no feature;

=head1 AUTHOR

punytan E<lt>punytan@gmail.comE<gt>

=head1 SEE ALSO

L<Modern::Perl>, L<common::sense>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
