.class Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IThermalChangedCallback.java"

# interfaces
.implements Landroid/hardware/thermal/IThermalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/IThermalChangedCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mCachedVersion:I

    .line 157
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 154
    iput-object p1, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 155
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 164
    sget-object v0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 215
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 216
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 217
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 219
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 221
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 224
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    goto :goto_3e

    .line 224
    .end local p0    # "this":Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    throw v2

    .line 228
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 214
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    iget v0, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 199
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 200
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 202
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 204
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 207
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 209
    goto :goto_38

    .line 207
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 209
    throw v2

    .line 211
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist notifyThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V
    .registers 7
    .param p1, "threshold"    # Landroid/hardware/thermal/TemperatureThreshold;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 185
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    iget-object v1, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 188
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 193
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    nop

    .line 195
    return-void

    .line 189
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method notifyThresholdChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;
    .end local p1    # "threshold":Landroid/hardware/thermal/TemperatureThreshold;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 193
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;
    .restart local p1    # "threshold":Landroid/hardware/thermal/TemperatureThreshold;
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    throw v1
.end method

.method public blacklist notifyThrottling(Landroid/hardware/thermal/Temperature;)V
    .registers 6
    .param p1, "temperature"    # Landroid/hardware/thermal/Temperature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 172
    iget-object v1, p0, Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 173
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 178
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    nop

    .line 180
    return-void

    .line 174
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method notifyThrottling is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;
    .end local p1    # "temperature":Landroid/hardware/thermal/Temperature;
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 178
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/thermal/IThermalChangedCallback$Stub$Proxy;
    .restart local p1    # "temperature":Landroid/hardware/thermal/Temperature;
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    throw v1
.end method
