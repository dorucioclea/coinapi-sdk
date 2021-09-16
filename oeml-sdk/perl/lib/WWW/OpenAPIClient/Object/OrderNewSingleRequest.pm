=begin comment

OEML - REST API

This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 

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
package WWW::OpenAPIClient::Object::OrderNewSingleRequest;

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
use WWW::OpenAPIClient::Object::OrdType;
use WWW::OpenAPIClient::Object::TimeInForce;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#The new order message.
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

OEML - REST API

This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 

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



__PACKAGE__->class_documentation({description => 'The new order message.',
                                  class => 'OrderNewSingleRequest',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'exchange_id' => {
        datatype => 'string',
        base_name => 'exchange_id',
        description => 'Exchange identifier used to identify the routing destination.',
        format => '',
        read_only => '',
            },
    'client_order_id' => {
        datatype => 'string',
        base_name => 'client_order_id',
        description => 'The unique identifier of the order assigned by the client.',
        format => '',
        read_only => '',
            },
    'symbol_id_exchange' => {
        datatype => 'string',
        base_name => 'symbol_id_exchange',
        description => 'Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order.',
        format => '',
        read_only => '',
            },
    'symbol_id_coinapi' => {
        datatype => 'string',
        base_name => 'symbol_id_coinapi',
        description => 'CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order.',
        format => '',
        read_only => '',
            },
    'amount_order' => {
        datatype => 'double',
        base_name => 'amount_order',
        description => 'Order quantity.',
        format => '',
        read_only => '',
            },
    'price' => {
        datatype => 'double',
        base_name => 'price',
        description => 'Order price.',
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
    'order_type' => {
        datatype => 'OrdType',
        base_name => 'order_type',
        description => '',
        format => '',
        read_only => '',
            },
    'time_in_force' => {
        datatype => 'TimeInForce',
        base_name => 'time_in_force',
        description => '',
        format => '',
        read_only => '',
            },
    'expire_time' => {
        datatype => 'DateTime',
        base_name => 'expire_time',
        description => 'Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;.',
        format => '',
        read_only => '',
            },
    'exec_inst' => {
        datatype => 'ARRAY[string]',
        base_name => 'exec_inst',
        description => 'Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; ',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'exchange_id' => 'string',
    'client_order_id' => 'string',
    'symbol_id_exchange' => 'string',
    'symbol_id_coinapi' => 'string',
    'amount_order' => 'double',
    'price' => 'double',
    'side' => 'OrdSide',
    'order_type' => 'OrdType',
    'time_in_force' => 'TimeInForce',
    'expire_time' => 'DateTime',
    'exec_inst' => 'ARRAY[string]'
} );

__PACKAGE__->attribute_map( {
    'exchange_id' => 'exchange_id',
    'client_order_id' => 'client_order_id',
    'symbol_id_exchange' => 'symbol_id_exchange',
    'symbol_id_coinapi' => 'symbol_id_coinapi',
    'amount_order' => 'amount_order',
    'price' => 'price',
    'side' => 'side',
    'order_type' => 'order_type',
    'time_in_force' => 'time_in_force',
    'expire_time' => 'expire_time',
    'exec_inst' => 'exec_inst'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
