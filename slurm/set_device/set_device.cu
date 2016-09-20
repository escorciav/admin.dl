#include <stdio.h>

__global__ void hello()
{
        printf("hello world, Im thread %d on block %d\n", threadIdx.x, blockIdx.x);
}

int main(int argc, char *argv[]) {
    int deviceId, nDevices, taskID;
    cudaError_t err;
    cudaDeviceProp prop;

    if( argc == 3 ) {
        printf("The argument supplied are device-ID: %s and task-ID: %s\n",
               argv[1], argv[2]);
        deviceId = atoi(argv[1]);
        taskID = atoi(argv[2]);
    } else {
        printf("Usage: set_device.o device-id-integer n-taks-integer\n");
        return 1;
    }

    err = cudaSetDevice(deviceId);
    if (err != cudaSuccess) {
        printf("API error %s:%d Returned:%d\n", __FILE__, __LINE__, err);
        return 1;
    }

    printf("Task id: %d - Desired DeviceId: %d\n", taskID, deviceId);
    cudaGetDeviceCount(&nDevices);
    printf("Number of devices available: %d\n", nDevices);
    cudaGetDeviceProperties(&prop, deviceId);
    printf("Device Number: %d\n", deviceId);
    printf("  Device name: %s\n", prop.name);
    printf("  Memory Clock Rate (KHz): %d\n", prop.memoryClockRate);
    printf("  Memory Bus Width (bits): %d\n", prop.memoryBusWidth);
    printf("  Peak Memory Bandwidth (GB/s): %f\n\n",
           2.0*prop.memoryClockRate*(prop.memoryBusWidth/8)/1.0e6);
    printf("Finally...");
    int num_threads = 2;
    int num_blocks = 2;
    hello<<<num_blocks,num_threads>>>();
    cudaDeviceSynchronize();
    return 0;
}
