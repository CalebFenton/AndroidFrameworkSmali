.class Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;
.super Ljava/lang/Object;
.source "IActivityRecognitionHardware.java"

# interfaces
.implements Landroid/hardware/location/IActivityRecognitionHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IActivityRecognitionHardware$Stub;
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
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 131
    iput-object p1, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 129
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public disableActivityEvent(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "activityType"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IActivityRecognitionHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 258
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 259
    iget-object v3, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x6

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 261
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
    .line 264
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 267
    return v2

    #@2c
    .line 261
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2d
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2e
    .line 263
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2f
    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 263
    throw v3
.end method

.method public enableActivityEvent(Ljava/lang/String;IJ)Z
    .locals 7
    .param p1, "activityType"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "reportLatencyNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IActivityRecognitionHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 236
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 237
    iget-object v3, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v4, 0x5

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    const/4 v2, 0x1

    #@28
    .line 242
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 245
    return v2

    #@2f
    .line 239
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@30
    .restart local v2    # "_result":Z
    goto :goto_0

    #@31
    .line 241
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@32
    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 241
    throw v3
.end method

.method public flush()Z
    .locals 6
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
    const-string/jumbo v3, "android.hardware.location.IActivityRecognitionHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 279
    iget-object v3, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 281
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
    .line 284
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 287
    return v2

    #@26
    .line 281
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 283
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 283
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 139
    const-string/jumbo v0, "android.hardware.location.IActivityRecognitionHardware"

    #@3
    return-object v0
.end method

.method public getSupportedActivities()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 147
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 150
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IActivityRecognitionHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 151
    iget-object v3, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 156
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 159
    return-object v2

    #@23
    .line 155
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 155
    throw v3
.end method

.method public isActivitySupported(Ljava/lang/String;)Z
    .locals 6
    .param p1, "activityType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 167
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 170
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IActivityRecognitionHardware"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 172
    iget-object v3, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x2

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 174
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
    .line 177
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 180
    return v2

    #@29
    .line 174
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 176
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 176
    throw v3
.end method

.method public registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .locals 6
    .param p1, "sink"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 188
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.location.IActivityRecognitionHardware"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 192
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/location/IActivityRecognitionHardwareSink;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 193
    iget-object v3, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x3

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    .line 198
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 201
    return v2

    #@30
    .line 195
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@31
    .restart local v2    # "_result":Z
    goto :goto_0

    #@32
    .line 197
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@33
    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 197
    throw v3
.end method

.method public unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .locals 6
    .param p1, "sink"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 209
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.location.IActivityRecognitionHardware"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 213
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/location/IActivityRecognitionHardwareSink;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 214
    iget-object v3, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x4

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    .line 219
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 222
    return v2

    #@30
    .line 216
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@31
    .restart local v2    # "_result":Z
    goto :goto_0

    #@32
    .line 218
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@33
    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 218
    throw v3
.end method
