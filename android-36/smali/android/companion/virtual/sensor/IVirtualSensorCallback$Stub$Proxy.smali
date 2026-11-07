.class Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVirtualSensorCallback.java"

# interfaces
.implements Landroid/companion/virtual/sensor/IVirtualSensorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 197
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 204
    const-string v0, "android.companion.virtual.sensor.IVirtualSensorCallback"

    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V
    .registers 9
    .param p1, "sensor"    # Landroid/companion/virtual/sensor/VirtualSensor;
    .param p2, "enabled"    # Z
    .param p3, "samplingPeriodMicros"    # I
    .param p4, "batchReportLatencyMicros"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.companion.virtual.sensor.IVirtualSensorCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 221
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 222
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object v1, p0, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    nop

    .line 229
    return-void

    .line 227
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    throw v1
.end method

.method public blacklist onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .registers 10
    .param p1, "channelHandle"    # I
    .param p2, "sensor"    # Landroid/companion/virtual/sensor/VirtualSensor;
    .param p3, "rateLevel"    # I
    .param p4, "reportToken"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 279
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.companion.virtual.sensor.IVirtualSensorCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 282
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v1, p0, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 288
    nop

    .line 289
    return-void

    .line 287
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 288
    throw v1
.end method

.method public blacklist onDirectChannelCreated(ILandroid/os/SharedMemory;)V
    .registers 8
    .param p1, "channelHandle"    # I
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.companion.virtual.sensor.IVirtualSensorCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 243
    iget-object v1, p0, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    nop

    .line 248
    return-void

    .line 246
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw v1
.end method

.method public blacklist onDirectChannelDestroyed(I)V
    .registers 7
    .param p1, "channelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.companion.virtual.sensor.IVirtualSensorCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-object v1, p0, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    nop

    .line 265
    return-void

    .line 263
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    throw v1
.end method
