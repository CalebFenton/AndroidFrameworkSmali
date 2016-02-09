.class Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGeofenceHardware.java"

# interfaces
.implements Landroid/hardware/location/IGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IGeofenceHardware$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 171
    iput-object p1, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 169
    return-void
.end method


# virtual methods
.method public addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 6
    .param p1, "monitoringType"    # I
    .param p2, "request"    # Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .param p3, "callback"    # Landroid/hardware/location/IGeofenceHardwareCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.location.IGeofenceHardware"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 254
    if-eqz p2, :cond_1

    #@14
    .line 255
    const/4 v4, 0x1

    #@15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 256
    const/4 v4, 0x0

    #@19
    invoke-virtual {p2, v0, v4}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c
    .line 261
    :goto_0
    if-eqz p3, :cond_0

    #@1e
    invoke-interface {p3}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v3

    #@22
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@25
    .line 262
    iget-object v3, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v4, 0x5

    #@28
    const/4 v5, 0x0

    #@29
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_2

    #@35
    const/4 v2, 0x1

    #@36
    .line 267
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 270
    return v2

    #@3d
    .line 259
    .end local v2    # "_result":Z
    :cond_1
    const/4 v4, 0x0

    #@3e
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 266
    :catchall_0
    move-exception v3

    #@43
    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 266
    throw v3

    #@4a
    .line 264
    :cond_2
    const/4 v2, 0x0

    #@4b
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 179
    const-string/jumbo v0, "android.hardware.location.IGeofenceHardware"

    #@3
    return-object v0
.end method

.method public getMonitoringTypes()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 214
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IGeofenceHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 218
    iget-object v3, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 223
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 226
    return-object v2

    #@23
    .line 222
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@24
    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 222
    throw v3
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 6
    .param p1, "monitoringType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 231
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IGeofenceHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 236
    iget-object v3, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 241
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 244
    return v2

    #@26
    .line 240
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 240
    throw v3
.end method

.method public pauseGeofence(II)Z
    .locals 6
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 294
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 297
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IGeofenceHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 299
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 300
    iget-object v3, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x7

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    const/4 v2, 0x1

    #@25
    .line 305
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 308
    return v2

    #@2c
    .line 302
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2d
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2e
    .line 304
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2f
    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 304
    throw v3
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 6
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 333
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 336
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.location.IGeofenceHardware"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 338
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 339
    iget-object v3, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x9

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    const/4 v2, 0x1

    #@2d
    .line 344
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 347
    return v2

    #@34
    .line 341
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@35
    .restart local v2    # "_result":Z
    goto :goto_0

    #@36
    .line 343
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@37
    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 343
    throw v3
.end method

.method public removeGeofence(II)Z
    .locals 6
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IGeofenceHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 280
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 281
    iget-object v3, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x6

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    const/4 v2, 0x1

    #@25
    .line 286
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 289
    return v2

    #@2c
    .line 283
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2d
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2e
    .line 285
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2f
    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 285
    throw v3
.end method

.method public resumeGeofence(III)Z
    .locals 6
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransitions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IGeofenceHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 319
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 320
    iget-object v3, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x8

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 321
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    const/4 v2, 0x1

    #@29
    .line 325
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 328
    return v2

    #@30
    .line 322
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@31
    .restart local v2    # "_result":Z
    goto :goto_0

    #@32
    .line 324
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@33
    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 324
    throw v3
.end method

.method public setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    .locals 5
    .param p1, "service"    # Landroid/location/IFusedGeofenceHardware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IGeofenceHardware"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 202
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/IFusedGeofenceHardware;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 203
    iget-object v2, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 196
    return-void

    #@29
    .line 206
    :catchall_0
    move-exception v2

    #@2a
    .line 207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 206
    throw v2
.end method

.method public setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V
    .locals 5
    .param p1, "service"    # Landroid/location/IGpsGeofenceHardware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IGeofenceHardware"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 187
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/location/IGpsGeofenceHardware;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 188
    iget-object v2, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 181
    return-void

    #@29
    .line 191
    :catchall_0
    move-exception v2

    #@2a
    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 191
    throw v2
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 6
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 355
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.location.IGeofenceHardware"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 357
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 358
    iget-object v3, p0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0xa

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    const/4 v2, 0x1

    #@2d
    .line 363
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 366
    return v2

    #@34
    .line 360
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@35
    .restart local v2    # "_result":Z
    goto :goto_0

    #@36
    .line 362
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@37
    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 362
    throw v3
.end method
