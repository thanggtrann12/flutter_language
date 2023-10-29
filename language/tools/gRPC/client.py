import grpc
import state_service_pb2
import state_service_pb2_grpc
import asyncio


def handling_gesture(gesture):
    if gesture == "UP":
        print("scrolling down")
    elif gesture == "DOWN":
        print("scrolling up")
    elif gesture == "LEFT":
        print("previous page")
    elif gesture == "RIGHT":
        print("next page")
    elif gesture == "CLOCKWISE":
        print("increase")
    elif gesture == "ANTI-CLOCKWISE":
        print("decrease")
    elif gesture == "FORWARD":
        print("zoom in")
    elif gesture == "BACKWARD":
        print("zoom out")
    elif gesture == "WAVE":
        print("idk")


async def get_sensor_data_updates():
    async with grpc.aio.insecure_channel('localhost:50051') as channel:
        stub = state_service_pb2_grpc.StateServiceStub(channel)
        request_iterator = iter([state_service_pb2.GetStateRequest()])

        async for response in stub.StreamState(request_iterator):
            handling_gesture(response.value)


if __name__ == '__main__':
    loop = asyncio.get_event_loop()
    loop.run_until_complete(get_sensor_data_updates())
