# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: state_service.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x13state_service.proto\x12\x05state\"\x11\n\x0fGetStateRequest\"\x16\n\x05State\x12\r\n\x05value\x18\x01 \x01(\t2G\n\x0cStateService\x12\x37\n\x0bStreamState\x12\x16.state.GetStateRequest\x1a\x0c.state.State(\x01\x30\x01\x62\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'state_service_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  DESCRIPTOR._options = None
  _globals['_GETSTATEREQUEST']._serialized_start=30
  _globals['_GETSTATEREQUEST']._serialized_end=47
  _globals['_STATE']._serialized_start=49
  _globals['_STATE']._serialized_end=71
  _globals['_STATESERVICE']._serialized_start=73
  _globals['_STATESERVICE']._serialized_end=144
# @@protoc_insertion_point(module_scope)
