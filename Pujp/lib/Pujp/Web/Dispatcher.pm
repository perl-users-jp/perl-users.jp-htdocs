package Pujp::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::Lite;
use Pujp::PerlFunc;

any '/' => sub {
    my ($c) = @_;
    return $c->render('index.html', {
        perlfunc => [Pujp::PerlFunc->list],
    });
};

get '/products.html' => sub {
    my $c = shift;
    return $c->render('products.html');
};

1;
