.class Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAltitudeService.java"

# interfaces
.implements Landroid/frameworks/location/altitude/IAltitudeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/frameworks/location/altitude/IAltitudeService$Stub;
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

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mCachedVersion:I

    .line 163
    const-string v0, "-1"

    iput-object v0, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 161
    return-void
.end method


# virtual methods
.method public blacklist addMslAltitudeToLocation(Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;)Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    .registers 7
    .param p1, "request"    # Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 180
    iget-object v3, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 181
    .local v2, "_status":Z
    if-eqz v2, :cond_31

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 185
    sget-object v3, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_39

    .line 188
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    nop

    .line 191
    return-object v3

    .line 182
    .end local v3    # "_result":Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    .restart local v2    # "_status":Z
    :cond_31
    :try_start_31
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method addMslAltitudeToLocation is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;
    .end local p1    # "request":Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;
    throw v3
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 188
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;
    .restart local p1    # "request":Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getGeoidHeight(Landroid/frameworks/location/altitude/GetGeoidHeightRequest;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    .registers 7
    .param p1, "request"    # Landroid/frameworks/location/altitude/GetGeoidHeightRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 196
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 201
    iget-object v3, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 202
    .local v2, "_status":Z
    if-eqz v2, :cond_31

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 206
    sget-object v3, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_39

    .line 209
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    nop

    .line 212
    return-object v3

    .line 203
    .end local v3    # "_result":Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    .restart local v2    # "_status":Z
    :cond_31
    :try_start_31
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getGeoidHeight is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;
    .end local p1    # "request":Landroid/frameworks/location/altitude/GetGeoidHeightRequest;
    throw v3
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 209
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;
    .restart local p1    # "request":Landroid/frameworks/location/altitude/GetGeoidHeightRequest;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 170
    sget-object v0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 233
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 234
    invoke-virtual {p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 235
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 237
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 239
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 242
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    goto :goto_3e

    .line 242
    .end local p0    # "this":Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    throw v2

    .line 246
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 232
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

    .line 216
    iget v0, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 217
    invoke-virtual {p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 218
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 220
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 222
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 225
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    goto :goto_38

    .line 225
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    throw v2

    .line 229
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/frameworks/location/altitude/IAltitudeService$Stub$Proxy;->mCachedVersion:I

    return v0
.end method
