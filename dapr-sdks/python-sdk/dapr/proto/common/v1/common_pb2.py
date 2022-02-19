# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: dapr/proto/common/v1/common.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from google.protobuf import any_pb2 as google_dot_protobuf_dot_any__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='dapr/proto/common/v1/common.proto',
  package='dapr.proto.common.v1',
  syntax='proto3',
  serialized_options=b'\n\nio.dapr.v1B\014CommonProtosZ/github.com/dapr/dapr/pkg/proto/common/v1;common\252\002\033Dapr.Client.Autogen.Grpc.v1',
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n!dapr/proto/common/v1/common.proto\x12\x14\x64\x61pr.proto.common.v1\x1a\x19google/protobuf/any.proto\"\xd0\x01\n\rHTTPExtension\x12\x36\n\x04verb\x18\x01 \x01(\x0e\x32(.dapr.proto.common.v1.HTTPExtension.Verb\x12\x13\n\x0bquerystring\x18\x02 \x01(\t\"r\n\x04Verb\x12\x08\n\x04NONE\x10\x00\x12\x07\n\x03GET\x10\x01\x12\x08\n\x04HEAD\x10\x02\x12\x08\n\x04POST\x10\x03\x12\x07\n\x03PUT\x10\x04\x12\n\n\x06\x44\x45LETE\x10\x05\x12\x0b\n\x07\x43ONNECT\x10\x06\x12\x0b\n\x07OPTIONS\x10\x07\x12\t\n\x05TRACE\x10\x08\x12\t\n\x05PATCH\x10\t\"\x96\x01\n\rInvokeRequest\x12\x0e\n\x06method\x18\x01 \x01(\t\x12\"\n\x04\x64\x61ta\x18\x02 \x01(\x0b\x32\x14.google.protobuf.Any\x12\x14\n\x0c\x63ontent_type\x18\x03 \x01(\t\x12;\n\x0ehttp_extension\x18\x04 \x01(\x0b\x32#.dapr.proto.common.v1.HTTPExtension\"J\n\x0eInvokeResponse\x12\"\n\x04\x64\x61ta\x18\x01 \x01(\x0b\x32\x14.google.protobuf.Any\x12\x14\n\x0c\x63ontent_type\x18\x02 \x01(\t\"\xf8\x01\n\tStateItem\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x0c\x12(\n\x04\x65tag\x18\x03 \x01(\x0b\x32\x1a.dapr.proto.common.v1.Etag\x12?\n\x08metadata\x18\x04 \x03(\x0b\x32-.dapr.proto.common.v1.StateItem.MetadataEntry\x12\x33\n\x07options\x18\x05 \x01(\x0b\x32\".dapr.proto.common.v1.StateOptions\x1a/\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x15\n\x04\x45tag\x12\r\n\x05value\x18\x01 \x01(\t\"\xef\x02\n\x0cStateOptions\x12H\n\x0b\x63oncurrency\x18\x01 \x01(\x0e\x32\x33.dapr.proto.common.v1.StateOptions.StateConcurrency\x12H\n\x0b\x63onsistency\x18\x02 \x01(\x0e\x32\x33.dapr.proto.common.v1.StateOptions.StateConsistency\"h\n\x10StateConcurrency\x12\x1b\n\x17\x43ONCURRENCY_UNSPECIFIED\x10\x00\x12\x1b\n\x17\x43ONCURRENCY_FIRST_WRITE\x10\x01\x12\x1a\n\x16\x43ONCURRENCY_LAST_WRITE\x10\x02\"a\n\x10StateConsistency\x12\x1b\n\x17\x43ONSISTENCY_UNSPECIFIED\x10\x00\x12\x18\n\x14\x43ONSISTENCY_EVENTUAL\x10\x01\x12\x16\n\x12\x43ONSISTENCY_STRONG\x10\x02\"\xba\x01\n\x11\x43onfigurationItem\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t\x12\x0f\n\x07version\x18\x03 \x01(\t\x12G\n\x08metadata\x18\x04 \x03(\x0b\x32\x35.dapr.proto.common.v1.ConfigurationItem.MetadataEntry\x1a/\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42i\n\nio.dapr.v1B\x0c\x43ommonProtosZ/github.com/dapr/dapr/pkg/proto/common/v1;common\xaa\x02\x1b\x44\x61pr.Client.Autogen.Grpc.v1b\x06proto3'
  ,
  dependencies=[google_dot_protobuf_dot_any__pb2.DESCRIPTOR,])



_HTTPEXTENSION_VERB = _descriptor.EnumDescriptor(
  name='Verb',
  full_name='dapr.proto.common.v1.HTTPExtension.Verb',
  filename=None,
  file=DESCRIPTOR,
  create_key=_descriptor._internal_create_key,
  values=[
    _descriptor.EnumValueDescriptor(
      name='NONE', index=0, number=0,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='GET', index=1, number=1,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='HEAD', index=2, number=2,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='POST', index=3, number=3,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='PUT', index=4, number=4,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='DELETE', index=5, number=5,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='CONNECT', index=6, number=6,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='OPTIONS', index=7, number=7,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='TRACE', index=8, number=8,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='PATCH', index=9, number=9,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
  ],
  containing_type=None,
  serialized_options=None,
  serialized_start=181,
  serialized_end=295,
)
_sym_db.RegisterEnumDescriptor(_HTTPEXTENSION_VERB)

_STATEOPTIONS_STATECONCURRENCY = _descriptor.EnumDescriptor(
  name='StateConcurrency',
  full_name='dapr.proto.common.v1.StateOptions.StateConcurrency',
  filename=None,
  file=DESCRIPTOR,
  create_key=_descriptor._internal_create_key,
  values=[
    _descriptor.EnumValueDescriptor(
      name='CONCURRENCY_UNSPECIFIED', index=0, number=0,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='CONCURRENCY_FIRST_WRITE', index=1, number=1,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='CONCURRENCY_LAST_WRITE', index=2, number=2,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
  ],
  containing_type=None,
  serialized_options=None,
  serialized_start=965,
  serialized_end=1069,
)
_sym_db.RegisterEnumDescriptor(_STATEOPTIONS_STATECONCURRENCY)

_STATEOPTIONS_STATECONSISTENCY = _descriptor.EnumDescriptor(
  name='StateConsistency',
  full_name='dapr.proto.common.v1.StateOptions.StateConsistency',
  filename=None,
  file=DESCRIPTOR,
  create_key=_descriptor._internal_create_key,
  values=[
    _descriptor.EnumValueDescriptor(
      name='CONSISTENCY_UNSPECIFIED', index=0, number=0,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='CONSISTENCY_EVENTUAL', index=1, number=1,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='CONSISTENCY_STRONG', index=2, number=2,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
  ],
  containing_type=None,
  serialized_options=None,
  serialized_start=1071,
  serialized_end=1168,
)
_sym_db.RegisterEnumDescriptor(_STATEOPTIONS_STATECONSISTENCY)


_HTTPEXTENSION = _descriptor.Descriptor(
  name='HTTPExtension',
  full_name='dapr.proto.common.v1.HTTPExtension',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='verb', full_name='dapr.proto.common.v1.HTTPExtension.verb', index=0,
      number=1, type=14, cpp_type=8, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='querystring', full_name='dapr.proto.common.v1.HTTPExtension.querystring', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
    _HTTPEXTENSION_VERB,
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=87,
  serialized_end=295,
)


_INVOKEREQUEST = _descriptor.Descriptor(
  name='InvokeRequest',
  full_name='dapr.proto.common.v1.InvokeRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='method', full_name='dapr.proto.common.v1.InvokeRequest.method', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='data', full_name='dapr.proto.common.v1.InvokeRequest.data', index=1,
      number=2, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='content_type', full_name='dapr.proto.common.v1.InvokeRequest.content_type', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='http_extension', full_name='dapr.proto.common.v1.InvokeRequest.http_extension', index=3,
      number=4, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=298,
  serialized_end=448,
)


_INVOKERESPONSE = _descriptor.Descriptor(
  name='InvokeResponse',
  full_name='dapr.proto.common.v1.InvokeResponse',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='data', full_name='dapr.proto.common.v1.InvokeResponse.data', index=0,
      number=1, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='content_type', full_name='dapr.proto.common.v1.InvokeResponse.content_type', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=450,
  serialized_end=524,
)


_STATEITEM_METADATAENTRY = _descriptor.Descriptor(
  name='MetadataEntry',
  full_name='dapr.proto.common.v1.StateItem.MetadataEntry',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='key', full_name='dapr.proto.common.v1.StateItem.MetadataEntry.key', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='value', full_name='dapr.proto.common.v1.StateItem.MetadataEntry.value', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=b'8\001',
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=728,
  serialized_end=775,
)

_STATEITEM = _descriptor.Descriptor(
  name='StateItem',
  full_name='dapr.proto.common.v1.StateItem',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='key', full_name='dapr.proto.common.v1.StateItem.key', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='value', full_name='dapr.proto.common.v1.StateItem.value', index=1,
      number=2, type=12, cpp_type=9, label=1,
      has_default_value=False, default_value=b"",
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='etag', full_name='dapr.proto.common.v1.StateItem.etag', index=2,
      number=3, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='metadata', full_name='dapr.proto.common.v1.StateItem.metadata', index=3,
      number=4, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='options', full_name='dapr.proto.common.v1.StateItem.options', index=4,
      number=5, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[_STATEITEM_METADATAENTRY, ],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=527,
  serialized_end=775,
)


_ETAG = _descriptor.Descriptor(
  name='Etag',
  full_name='dapr.proto.common.v1.Etag',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='value', full_name='dapr.proto.common.v1.Etag.value', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=777,
  serialized_end=798,
)


_STATEOPTIONS = _descriptor.Descriptor(
  name='StateOptions',
  full_name='dapr.proto.common.v1.StateOptions',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='concurrency', full_name='dapr.proto.common.v1.StateOptions.concurrency', index=0,
      number=1, type=14, cpp_type=8, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='consistency', full_name='dapr.proto.common.v1.StateOptions.consistency', index=1,
      number=2, type=14, cpp_type=8, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
    _STATEOPTIONS_STATECONCURRENCY,
    _STATEOPTIONS_STATECONSISTENCY,
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=801,
  serialized_end=1168,
)


_CONFIGURATIONITEM_METADATAENTRY = _descriptor.Descriptor(
  name='MetadataEntry',
  full_name='dapr.proto.common.v1.ConfigurationItem.MetadataEntry',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='key', full_name='dapr.proto.common.v1.ConfigurationItem.MetadataEntry.key', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='value', full_name='dapr.proto.common.v1.ConfigurationItem.MetadataEntry.value', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=b'8\001',
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=728,
  serialized_end=775,
)

_CONFIGURATIONITEM = _descriptor.Descriptor(
  name='ConfigurationItem',
  full_name='dapr.proto.common.v1.ConfigurationItem',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='key', full_name='dapr.proto.common.v1.ConfigurationItem.key', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='value', full_name='dapr.proto.common.v1.ConfigurationItem.value', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='version', full_name='dapr.proto.common.v1.ConfigurationItem.version', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='metadata', full_name='dapr.proto.common.v1.ConfigurationItem.metadata', index=3,
      number=4, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[_CONFIGURATIONITEM_METADATAENTRY, ],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=1171,
  serialized_end=1357,
)

_HTTPEXTENSION.fields_by_name['verb'].enum_type = _HTTPEXTENSION_VERB
_HTTPEXTENSION_VERB.containing_type = _HTTPEXTENSION
_INVOKEREQUEST.fields_by_name['data'].message_type = google_dot_protobuf_dot_any__pb2._ANY
_INVOKEREQUEST.fields_by_name['http_extension'].message_type = _HTTPEXTENSION
_INVOKERESPONSE.fields_by_name['data'].message_type = google_dot_protobuf_dot_any__pb2._ANY
_STATEITEM_METADATAENTRY.containing_type = _STATEITEM
_STATEITEM.fields_by_name['etag'].message_type = _ETAG
_STATEITEM.fields_by_name['metadata'].message_type = _STATEITEM_METADATAENTRY
_STATEITEM.fields_by_name['options'].message_type = _STATEOPTIONS
_STATEOPTIONS.fields_by_name['concurrency'].enum_type = _STATEOPTIONS_STATECONCURRENCY
_STATEOPTIONS.fields_by_name['consistency'].enum_type = _STATEOPTIONS_STATECONSISTENCY
_STATEOPTIONS_STATECONCURRENCY.containing_type = _STATEOPTIONS
_STATEOPTIONS_STATECONSISTENCY.containing_type = _STATEOPTIONS
_CONFIGURATIONITEM_METADATAENTRY.containing_type = _CONFIGURATIONITEM
_CONFIGURATIONITEM.fields_by_name['metadata'].message_type = _CONFIGURATIONITEM_METADATAENTRY
DESCRIPTOR.message_types_by_name['HTTPExtension'] = _HTTPEXTENSION
DESCRIPTOR.message_types_by_name['InvokeRequest'] = _INVOKEREQUEST
DESCRIPTOR.message_types_by_name['InvokeResponse'] = _INVOKERESPONSE
DESCRIPTOR.message_types_by_name['StateItem'] = _STATEITEM
DESCRIPTOR.message_types_by_name['Etag'] = _ETAG
DESCRIPTOR.message_types_by_name['StateOptions'] = _STATEOPTIONS
DESCRIPTOR.message_types_by_name['ConfigurationItem'] = _CONFIGURATIONITEM
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

HTTPExtension = _reflection.GeneratedProtocolMessageType('HTTPExtension', (_message.Message,), {
  'DESCRIPTOR' : _HTTPEXTENSION,
  '__module__' : 'dapr.proto.common.v1.common_pb2'
  # @@protoc_insertion_point(class_scope:dapr.proto.common.v1.HTTPExtension)
  })
_sym_db.RegisterMessage(HTTPExtension)

InvokeRequest = _reflection.GeneratedProtocolMessageType('InvokeRequest', (_message.Message,), {
  'DESCRIPTOR' : _INVOKEREQUEST,
  '__module__' : 'dapr.proto.common.v1.common_pb2'
  # @@protoc_insertion_point(class_scope:dapr.proto.common.v1.InvokeRequest)
  })
_sym_db.RegisterMessage(InvokeRequest)

InvokeResponse = _reflection.GeneratedProtocolMessageType('InvokeResponse', (_message.Message,), {
  'DESCRIPTOR' : _INVOKERESPONSE,
  '__module__' : 'dapr.proto.common.v1.common_pb2'
  # @@protoc_insertion_point(class_scope:dapr.proto.common.v1.InvokeResponse)
  })
_sym_db.RegisterMessage(InvokeResponse)

StateItem = _reflection.GeneratedProtocolMessageType('StateItem', (_message.Message,), {

  'MetadataEntry' : _reflection.GeneratedProtocolMessageType('MetadataEntry', (_message.Message,), {
    'DESCRIPTOR' : _STATEITEM_METADATAENTRY,
    '__module__' : 'dapr.proto.common.v1.common_pb2'
    # @@protoc_insertion_point(class_scope:dapr.proto.common.v1.StateItem.MetadataEntry)
    })
  ,
  'DESCRIPTOR' : _STATEITEM,
  '__module__' : 'dapr.proto.common.v1.common_pb2'
  # @@protoc_insertion_point(class_scope:dapr.proto.common.v1.StateItem)
  })
_sym_db.RegisterMessage(StateItem)
_sym_db.RegisterMessage(StateItem.MetadataEntry)

Etag = _reflection.GeneratedProtocolMessageType('Etag', (_message.Message,), {
  'DESCRIPTOR' : _ETAG,
  '__module__' : 'dapr.proto.common.v1.common_pb2'
  # @@protoc_insertion_point(class_scope:dapr.proto.common.v1.Etag)
  })
_sym_db.RegisterMessage(Etag)

StateOptions = _reflection.GeneratedProtocolMessageType('StateOptions', (_message.Message,), {
  'DESCRIPTOR' : _STATEOPTIONS,
  '__module__' : 'dapr.proto.common.v1.common_pb2'
  # @@protoc_insertion_point(class_scope:dapr.proto.common.v1.StateOptions)
  })
_sym_db.RegisterMessage(StateOptions)

ConfigurationItem = _reflection.GeneratedProtocolMessageType('ConfigurationItem', (_message.Message,), {

  'MetadataEntry' : _reflection.GeneratedProtocolMessageType('MetadataEntry', (_message.Message,), {
    'DESCRIPTOR' : _CONFIGURATIONITEM_METADATAENTRY,
    '__module__' : 'dapr.proto.common.v1.common_pb2'
    # @@protoc_insertion_point(class_scope:dapr.proto.common.v1.ConfigurationItem.MetadataEntry)
    })
  ,
  'DESCRIPTOR' : _CONFIGURATIONITEM,
  '__module__' : 'dapr.proto.common.v1.common_pb2'
  # @@protoc_insertion_point(class_scope:dapr.proto.common.v1.ConfigurationItem)
  })
_sym_db.RegisterMessage(ConfigurationItem)
_sym_db.RegisterMessage(ConfigurationItem.MetadataEntry)


DESCRIPTOR._options = None
_STATEITEM_METADATAENTRY._options = None
_CONFIGURATIONITEM_METADATAENTRY._options = None
# @@protoc_insertion_point(module_scope)