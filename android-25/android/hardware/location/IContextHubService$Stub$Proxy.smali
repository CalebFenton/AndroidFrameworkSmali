.class Landroid/hardware/location/IContextHubService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IContextHubService.java"

# interfaces
.implements Landroid/hardware/location/IContextHubService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubService$Stub;
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
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 169
    iput-object p1, p0, Landroid/hardware/location/IContextHubService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 167
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 6
    .param p1, "hubHandle"    # I
    .param p2, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 310
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 313
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IContextHubService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 315
    if-eqz p2, :cond_0

    #@13
    .line 316
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 317
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/hardware/location/NanoAppFilter;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 322
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/IContextHubService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x7

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v2

    #@29
    .line 327
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 330
    return-object v2

    #@30
    .line 320
    .end local v2    # "_result":[I
    :cond_0
    const/4 v3, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 326
    :catchall_0
    move-exception v3

    #@36
    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 326
    throw v3
.end method

.method public getContextHubHandles()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IContextHubService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 204
    iget-object v3, p0, Landroid/hardware/location/IContextHubService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 209
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 212
    return-object v2

    #@23
    .line 208
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@24
    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 208
    throw v3
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 6
    .param p1, "contextHubHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IContextHubService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 224
    iget-object v3, p0, Landroid/hardware/location/IContextHubService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 227
    sget-object v3, Landroid/hardware/location/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/hardware/location/ContextHubInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 234
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 237
    return-object v2

    #@30
    .line 230
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/hardware/location/ContextHubInfo;
    goto :goto_0

    #@32
    .line 233
    .end local v2    # "_result":Landroid/hardware/location/ContextHubInfo;
    :catchall_0
    move-exception v3

    #@33
    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 233
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 177
    const-string/jumbo v0, "android.hardware.location.IContextHubService"

    #@3
    return-object v0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 6
    .param p1, "nanoAppInstanceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 290
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IContextHubService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 292
    iget-object v3, p0, Landroid/hardware/location/IContextHubService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 295
    sget-object v3, Landroid/hardware/location/NanoAppInstanceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/hardware/location/NanoAppInstanceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 302
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 305
    return-object v2

    #@30
    .line 298
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/hardware/location/NanoAppInstanceInfo;
    goto :goto_0

    #@32
    .line 301
    .end local v2    # "_result":Landroid/hardware/location/NanoAppInstanceInfo;
    :catchall_0
    move-exception v3

    #@33
    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 301
    throw v3
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 6
    .param p1, "hubHandle"    # I
    .param p2, "app"    # Landroid/hardware/location/NanoApp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 242
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 245
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IContextHubService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 247
    if-eqz p2, :cond_0

    #@13
    .line 248
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 249
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/hardware/location/NanoApp;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 254
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/IContextHubService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x4

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v2

    #@29
    .line 259
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 262
    return v2

    #@30
    .line 252
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 258
    :catchall_0
    move-exception v3

    #@36
    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 258
    throw v3
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .locals 6
    .param p1, "callback"    # Landroid/hardware/location/IContextHubCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 185
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.location.IContextHubService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 186
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/hardware/location/IContextHubCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 187
    iget-object v3, p0, Landroid/hardware/location/IContextHubService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x1

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 192
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 195
    return v2

    #@2d
    .line 191
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 191
    throw v3
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 6
    .param p1, "hubHandle"    # I
    .param p2, "nanoAppHandle"    # I
    .param p3, "msg"    # Landroid/hardware/location/ContextHubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IContextHubService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 341
    if-eqz p3, :cond_0

    #@16
    .line 342
    const/4 v3, 0x1

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 343
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p3, v0, v3}, Landroid/hardware/location/ContextHubMessage;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 348
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/IContextHubService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0x8

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v2

    #@2d
    .line 353
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 356
    return v2

    #@34
    .line 346
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 352
    :catchall_0
    move-exception v3

    #@3a
    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 352
    throw v3
.end method

.method public unloadNanoApp(I)I
    .locals 6
    .param p1, "nanoAppInstanceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 267
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.location.IContextHubService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 272
    iget-object v3, p0, Landroid/hardware/location/IContextHubService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x5

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 277
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 280
    return v2

    #@26
    .line 276
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 276
    throw v3
.end method
