.class Landroid/location/IGpsGeofenceHardware$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGpsGeofenceHardware.java"

# interfaces
.implements Landroid/location/IGpsGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsGeofenceHardware$Stub;
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
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 122
    iput-object p1, p0, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 120
    return-void
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .locals 8
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransition"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 152
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 155
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.location.IGpsGeofenceHardware"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 156
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 157
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    #@14
    .line 158
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeDouble(D)V

    #@17
    .line 159
    invoke-virtual {v1, p6, p7}, Landroid/os/Parcel;->writeDouble(D)V

    #@1a
    .line 160
    move/from16 v0, p8

    #@1c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 161
    move/from16 v0, p9

    #@21
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 162
    move/from16 v0, p10

    #@26
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 163
    move/from16 v0, p11

    #@2b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 164
    iget-object v4, p0, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@30
    const/4 v5, 0x2

    #@31
    const/4 v6, 0x0

    #@32
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@35
    .line 165
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@38
    .line 166
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_0

    #@3e
    const/4 v3, 0x1

    #@3f
    .line 169
    .local v3, "_result":Z
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 172
    return v3

    #@46
    .line 166
    .end local v3    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@47
    .restart local v3    # "_result":Z
    goto :goto_0

    #@48
    .line 168
    .end local v3    # "_result":Z
    :catchall_0
    move-exception v4

    #@49
    .line 169
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 168
    throw v4
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
    const-string/jumbo v0, "android.location.IGpsGeofenceHardware"

    #@3
    return-object v0
.end method

.method public isHardwareGeofenceSupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.IGpsGeofenceHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 139
    iget-object v3, p0, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 144
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 147
    return v2

    #@26
    .line 141
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 143
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 143
    throw v3
.end method

.method public pauseHardwareGeofence(I)Z
    .locals 6
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 195
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 198
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.IGpsGeofenceHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 200
    iget-object v3, p0, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    const/4 v2, 0x1

    #@22
    .line 205
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 208
    return v2

    #@29
    .line 202
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 204
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 204
    throw v3
.end method

.method public removeHardwareGeofence(I)Z
    .locals 6
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.IGpsGeofenceHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 182
    iget-object v3, p0, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    const/4 v2, 0x1

    #@22
    .line 187
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 190
    return v2

    #@29
    .line 184
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 186
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 186
    throw v3
.end method

.method public resumeHardwareGeofence(II)Z
    .locals 6
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 216
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.location.IGpsGeofenceHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 217
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 218
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 219
    iget-object v3, p0, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x5

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 221
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
    .line 224
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 227
    return v2

    #@2c
    .line 221
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2d
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2e
    .line 223
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2f
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 223
    throw v3
.end method
