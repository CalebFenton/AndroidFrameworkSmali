.class Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;
.super Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;
.source "VirtualDeviceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceParams$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualSensorCallbackDelegate"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

.field private final blacklist mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

.field private final blacklist mDirectChannelExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$PYJbVHIiubIpRimXmv87MAvG-m4(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onConfigurationChanged$0(Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YY6F5LeY5YGSjx4hnv4k8nAKkuU(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onDirectChannelDestroyed$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dIrr3qBLMrUqUASiibtqUqlKTXE(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/os/SharedMemory;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onDirectChannelCreated$1(ILandroid/os/SharedMemory;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ylTnb01KtlhW-u3svDimJMteqdA(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->lambda$onDirectChannelConfigured$3(ILandroid/companion/virtual/sensor/VirtualSensor;II)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorCallback;Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/companion/virtual/sensor/VirtualSensorCallback;
    .param p3, "directChannelExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "directChannelCallback"    # Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    .line 799
    invoke-direct {p0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;-><init>()V

    .line 800
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 801
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    .line 802
    iput-object p3, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    .line 803
    iput-object p4, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    .line 804
    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationChanged$0(Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V
    .registers 6
    .param p1, "sensor"    # Landroid/companion/virtual/sensor/VirtualSensor;
    .param p2, "enabled"    # Z
    .param p3, "samplingPeriod"    # Ljava/time/Duration;
    .param p4, "batchReportingLatency"    # Ljava/time/Duration;

    .line 813
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/companion/virtual/sensor/VirtualSensorCallback;->onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDirectChannelConfigured$3(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .registers 6
    .param p1, "channelHandle"    # I
    .param p2, "sensor"    # Landroid/companion/virtual/sensor/VirtualSensor;
    .param p3, "rateLevel"    # I
    .param p4, "reportToken"    # I

    .line 840
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;->onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onDirectChannelCreated$1(ILandroid/os/SharedMemory;)V
    .registers 4
    .param p1, "channelHandle"    # I
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 822
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;->onDirectChannelCreated(ILandroid/os/SharedMemory;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDirectChannelDestroyed$2(I)V
    .registers 3
    .param p1, "channelHandle"    # I

    .line 831
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;->onDirectChannelDestroyed(I)V

    return-void
.end method


# virtual methods
.method public blacklist onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V
    .registers 13
    .param p1, "sensor"    # Landroid/companion/virtual/sensor/VirtualSensor;
    .param p2, "enabled"    # Z
    .param p3, "samplingPeriodMicros"    # I
    .param p4, "batchReportLatencyMicros"    # I

    .line 809
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p3

    .line 810
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v6

    .line 811
    .local v6, "samplingPeriod":Ljava/time/Duration;
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p4

    .line 812
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v7

    .line 813
    .local v7, "batchReportingLatency":Ljava/time/Duration;
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    .end local p1    # "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    .end local p2    # "enabled":Z
    .local v4, "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    .local v5, "enabled":Z
    invoke-direct/range {v2 .. v7}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 815
    return-void
.end method

.method public blacklist onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .registers 12
    .param p1, "channelHandle"    # I
    .param p2, "sensor"    # Landroid/companion/virtual/sensor/VirtualSensor;
    .param p3, "rateLevel"    # I
    .param p4, "reportToken"    # I

    .line 838
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_18

    .line 839
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "channelHandle":I
    .end local p2    # "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    .end local p3    # "rateLevel":I
    .end local p4    # "reportToken":I
    .local v3, "channelHandle":I
    .local v4, "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    .local v5, "rateLevel":I
    .local v6, "reportToken":I
    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/companion/virtual/sensor/VirtualSensor;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1c

    .line 838
    .end local v3    # "channelHandle":I
    .end local v4    # "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    .end local v5    # "rateLevel":I
    .end local v6    # "reportToken":I
    .restart local p1    # "channelHandle":I
    .restart local p2    # "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    .restart local p3    # "rateLevel":I
    .restart local p4    # "reportToken":I
    :cond_18
    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 843
    .end local p1    # "channelHandle":I
    .end local p2    # "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    .end local p3    # "rateLevel":I
    .end local p4    # "reportToken":I
    .restart local v3    # "channelHandle":I
    .restart local v4    # "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    .restart local v5    # "rateLevel":I
    .restart local v6    # "reportToken":I
    :goto_1c
    return-void
.end method

.method public blacklist onDirectChannelCreated(ILandroid/os/SharedMemory;)V
    .registers 5
    .param p1, "channelHandle"    # I
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 820
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_12

    .line 821
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/os/SharedMemory;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 825
    :cond_12
    return-void
.end method

.method public blacklist onDirectChannelDestroyed(I)V
    .registers 4
    .param p1, "channelHandle"    # I

    .line 829
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_12

    .line 830
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->mDirectChannelExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 833
    :cond_12
    return-void
.end method
