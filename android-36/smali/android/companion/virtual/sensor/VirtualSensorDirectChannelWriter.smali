.class public final Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;
.super Ljava/lang/Object;
.source "VirtualSensorDirectChannelWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;,
        Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VirtualSensorWriter"

.field private static final blacklist UINT32_MAX:J = 0xffffffffL


# instance fields
.field private final blacklist mChannels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mChannelsLock:Ljava/lang/Object;

.field private final blacklist mConfiguredChannels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannels:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannelsLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mConfiguredChannels:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public whitelist addChannel(ILandroid/os/SharedMemory;)V
    .registers 7
    .param p1, "channelHandle"    # I
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannelsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannels:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 123
    const-string v1, "VirtualSensorWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel with handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already added."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 125
    :cond_2a
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannels:Landroid/util/SparseArray;

    new-instance v2, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;

    .line 126
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SharedMemory;

    invoke-direct {v2, v3}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;-><init>(Landroid/os/SharedMemory;)V

    .line 125
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    :goto_3a
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 103
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannelsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannels:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 105
    iget-object v2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannels:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;

    invoke-virtual {v2}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->close()V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 107
    .end local v1    # "i":I
    :cond_1a
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannels:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 108
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mConfiguredChannels:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public whitelist configureChannel(ILandroid/companion/virtual/sensor/VirtualSensor;II)Z
    .registers 12
    .param p1, "channelHandle"    # I
    .param p2, "sensor"    # Landroid/companion/virtual/sensor/VirtualSensor;
    .param p3, "rateLevel"    # I
    .param p4, "reportToken"    # I

    .line 160
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannelsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mConfiguredChannels:Landroid/util/SparseArray;

    .line 162
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/sensor/VirtualSensor;

    invoke-virtual {v2}, Landroid/companion/virtual/sensor/VirtualSensor;->getHandle()I

    move-result v2

    .line 161
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 163
    .local v1, "configs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_44

    .line 164
    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_22

    goto :goto_24

    .line 169
    :cond_22
    monitor-exit v0

    return v3

    .line 165
    :cond_24
    :goto_24
    const-string v3, "VirtualSensorWriter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Channel configuration failed - channel with handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    monitor-exit v0

    return v2

    .line 172
    :cond_44
    if-nez v1, :cond_55

    .line 173
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v4

    .line 174
    iget-object v4, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mConfiguredChannels:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/companion/virtual/sensor/VirtualSensor;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    :cond_55
    iget-object v4, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannels:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;

    .line 178
    .local v4, "sharedMemoryWrapper":Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;
    if-nez v4, :cond_7f

    .line 179
    const-string v3, "VirtualSensorWriter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Channel configuration failed - channel with handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    monitor-exit v0

    return v2

    .line 183
    :cond_7f
    new-instance v2, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;

    .line 184
    invoke-virtual {p2}, Landroid/companion/virtual/sensor/VirtualSensor;->getType()I

    move-result v5

    invoke-direct {v2, p4, v5, v4}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;-><init>(IILandroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;)V

    .line 183
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    monitor-exit v0

    return v3

    .line 186
    .end local v1    # "configs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;>;"
    .end local v4    # "sharedMemoryWrapper":Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;
    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public whitelist removeChannel(I)V
    .registers 6
    .param p1, "channelHandle"    # I

    .line 138
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannelsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannels:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;

    .line 140
    .local v1, "sharedMemoryWrapper":Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;
    if-eqz v1, :cond_10

    .line 141
    invoke-virtual {v1}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->close()V

    .line 143
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    iget-object v3, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mConfiguredChannels:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 144
    iget-object v3, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mConfiguredChannels:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 146
    .end local v1    # "sharedMemoryWrapper":Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;
    .end local v2    # "i":I
    :cond_27
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public whitelist writeSensorEvent(Landroid/companion/virtual/sensor/VirtualSensor;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    .registers 8
    .param p1, "sensor"    # Landroid/companion/virtual/sensor/VirtualSensor;
    .param p2, "event"    # Landroid/companion/virtual/sensor/VirtualSensorEvent;

    .line 198
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mChannelsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_6
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;->mConfiguredChannels:Landroid/util/SparseArray;

    .line 201
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/sensor/VirtualSensor;

    invoke-virtual {v2}, Landroid/companion/virtual/sensor/VirtualSensor;->getHandle()I

    move-result v2

    .line 200
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 202
    .local v1, "configs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;>;"
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_3d

    .line 208
    :cond_21
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 209
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/sensor/VirtualSensorEvent;

    invoke-virtual {v3, v4}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->write(Landroid/companion/virtual/sensor/VirtualSensorEvent;)V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 211
    .end local v1    # "configs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;>;"
    .end local v2    # "i":I
    :cond_3a
    monitor-exit v0

    .line 212
    const/4 v0, 0x1

    return v0

    .line 203
    .restart local v1    # "configs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;>;"
    :cond_3d
    :goto_3d
    const-string v2, "VirtualSensorWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor event write failed - no direct sensor channels configured for sensor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    invoke-virtual {p1}, Landroid/companion/virtual/sensor/VirtualSensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 211
    .end local v1    # "configs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;>;"
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_6 .. :try_end_5e} :catchall_5c

    throw v1
.end method
