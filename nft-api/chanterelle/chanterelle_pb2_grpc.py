# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

import chanterelle_pb2 as chanterelle__pb2
from google.protobuf import empty_pb2 as google_dot_protobuf_dot_empty__pb2


class ChanterelleStub(object):
    """Missing associated documentation comment in .proto file."""

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.CAPrinter = channel.unary_unary(
                '/Chanterelle/CAPrinter',
                request_serializer=google_dot_protobuf_dot_empty__pb2.Empty.SerializeToString,
                response_deserializer=chanterelle__pb2.CA.FromString,
                )


class ChanterelleServicer(object):
    """Missing associated documentation comment in .proto file."""

    def CAPrinter(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_ChanterelleServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CAPrinter': grpc.unary_unary_rpc_method_handler(
                    servicer.CAPrinter,
                    request_deserializer=google_dot_protobuf_dot_empty__pb2.Empty.FromString,
                    response_serializer=chanterelle__pb2.CA.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'Chanterelle', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))


 # This class is part of an EXPERIMENTAL API.
class Chanterelle(object):
    """Missing associated documentation comment in .proto file."""

    @staticmethod
    def CAPrinter(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/Chanterelle/CAPrinter',
            google_dot_protobuf_dot_empty__pb2.Empty.SerializeToString,
            chanterelle__pb2.CA.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)
