package practical;
our $VERSION = '0.01';

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

C<practical> is a practical pragma.

This module is written for people who are tired of typing hackneyed expressions.
Many people write following code on the top of scripts.

  use strict;
  use warnings;
  use utf8;
  use feature qw(switch say state);

Assuming that it is true, what we should do about it is shorten it.

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
