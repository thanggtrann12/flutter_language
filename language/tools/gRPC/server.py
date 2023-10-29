import grpc
import state_service_pb2
import state_service_pb2_grpc
import asyncio
from Gesture import PAJ7620U2

sensor = None


def initGesture():
    global sensor
    retryCnt = 0
    print("\nGesture Sensor Test Program ...\n")
    while (retryCnt < 3):
        try:
            sensor = PAJ7620U2()
        except Exception as e:
            retryCnt += 1
            pass
        if (sensor):
            break


class StateService(state_service_pb2_grpc.StateServiceServicer):
    async def StreamState(self, request_iterator, context):
        while True:
            try:
                sensor_data = read_sensor_data()
                if sensor_data:
                    yield state_service_pb2.State(value=sensor_data)
                await asyncio.sleep(1)
            except asyncio.CancelledError:
                return


def read_sensor_data():
    return sensor.check_gesture()


def serve():
    server = grpc.aio.server()
    state_service_pb2_grpc.add_StateServiceServicer_to_server(
        StateService(), server)
    server.add_insecure_port('[::]:50051')
    loop = asyncio.get_event_loop()
    loop.run_until_complete(server.start())
    loop.run_forever()


if __name__ == '__main__':
    initGesture()
    serve()
