=begin comment

OEML - REST API

This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::Object::PositionData;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WWW::OpenAPIClient::Object::OrdSide;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#The Position object.
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

OEML - REST API

This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new { 
    my ($class, %args) = @_; 

    my $self = bless {}, $class;

    $self->init(%args);
    
    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'The Position object.',
                                  class => 'PositionData',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'symbol_id_exchange' => {
        datatype => 'string',
        base_name => 'symbol_id_exchange',
        description => 'Exchange symbol.',
        format => '',
        read_only => '',
            },
    'symbol_id_coinapi' => {
        datatype => 'string',
        base_name => 'symbol_id_coinapi',
        description => 'CoinAPI symbol.',
        format => '',
        read_only => '',
            },
    'avg_entry_price' => {
        datatype => 'double',
        base_name => 'avg_entry_price',
        description => 'Calculated average price of all fills on this position.',
        format => '',
        read_only => '',
            },
    'quantity' => {
        datatype => 'double',
        base_name => 'quantity',
        description => 'The current position quantity.',
        format => '',
        read_only => '',
            },
    'side' => {
        datatype => 'OrdSide',
        base_name => 'side',
        description => '',
        format => '',
        read_only => '',
            },
    'unrealized_pnl' => {
        datatype => 'double',
        base_name => 'unrealized_pnl',
        description => 'Unrealised profit or loss (PNL) of this position.',
        format => '',
        read_only => '',
            },
    'leverage' => {
        datatype => 'double',
        base_name => 'leverage',
        description => 'Leverage for this position reported by the exchange.',
        format => '',
        read_only => '',
            },
    'cross_margin' => {
        datatype => 'boolean',
        base_name => 'cross_margin',
        description => 'Is cross margin mode enable for this position?',
        format => '',
        read_only => '',
            },
    'liquidation_price' => {
        datatype => 'double',
        base_name => 'liquidation_price',
        description => 'Liquidation price. If mark price will reach this value, the position will be liquidated.',
        format => '',
        read_only => '',
            },
    'raw_data' => {
        datatype => 'object',
        base_name => 'raw_data',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'symbol_id_exchange' => 'string',
    'symbol_id_coinapi' => 'string',
    'avg_entry_price' => 'double',
    'quantity' => 'double',
    'side' => 'OrdSide',
    'unrealized_pnl' => 'double',
    'leverage' => 'double',
    'cross_margin' => 'boolean',
    'liquidation_price' => 'double',
    'raw_data' => 'object'
} );

__PACKAGE__->attribute_map( {
    'symbol_id_exchange' => 'symbol_id_exchange',
    'symbol_id_coinapi' => 'symbol_id_coinapi',
    'avg_entry_price' => 'avg_entry_price',
    'quantity' => 'quantity',
    'side' => 'side',
    'unrealized_pnl' => 'unrealized_pnl',
    'leverage' => 'leverage',
    'cross_margin' => 'cross_margin',
    'liquidation_price' => 'liquidation_price',
    'raw_data' => 'raw_data'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
