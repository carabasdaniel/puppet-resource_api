require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'test_array',
  docs: <<-EOS,
      This type provides Puppet with the capabilities to manage ...
    EOS
  features: [],
  attributes:   {
    ensure:      {
      type:    'Enum[present, absent]',
      desc:    'Whether this resource should be present or absent on the target system.',
      default: 'present',
    },
    name:        {
      type:      'String',
      desc:      'The name of the resource you want to manage.',
      behaviour: :namevar,
    },
    some_array:  {
      type:      'Array[String]',
      desc:      'An array aiding array attestation',
    }
  },
)