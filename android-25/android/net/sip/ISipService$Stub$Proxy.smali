.class Landroid/net/sip/ISipService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISipService.java"

# interfaces
.implements Landroid/net/sip/ISipService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipService$Stub;
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
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 186
    iput-object p1, p0, Landroid/net/sip/ISipService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 184
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/net/sip/ISipService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public close(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.sip.ISipService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 255
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 256
    iget-object v2, p0, Landroid/net/sip/ISipService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x3

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 248
    return-void

    #@25
    .line 259
    :catchall_0
    move-exception v2

    #@26
    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 259
    throw v2
.end method

.method public createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;
    .locals 6
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.sip.ISipService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 326
    if-eqz p1, :cond_1

    #@11
    .line 327
    const/4 v4, 0x1

    #@12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 328
    const/4 v4, 0x0

    #@16
    invoke-virtual {p1, v0, v4}, Landroid/net/sip/SipProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 333
    :goto_0
    if-eqz p2, :cond_0

    #@1b
    invoke-interface {p2}, Landroid/net/sip/ISipSessionListener;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v3

    #@1f
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    .line 334
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 335
    iget-object v3, p0, Landroid/net/sip/ISipService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v4, 0x7

    #@28
    const/4 v5, 0x0

    #@29
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@32
    move-result-object v3

    #@33
    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result-object v2

    #@37
    .line 340
    .local v2, "_result":Landroid/net/sip/ISipSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 343
    return-object v2

    #@3e
    .line 331
    .end local v2    # "_result":Landroid/net/sip/ISipSession;
    :cond_1
    const/4 v4, 0x0

    #@3f
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 339
    :catchall_0
    move-exception v3

    #@44
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 339
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "android.net.sip.ISipService"

    #@3
    return-object v0
.end method

.method public getListOfProfiles(Ljava/lang/String;)[Landroid/net/sip/SipProfile;
    .locals 6
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 367
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 372
    iget-object v3, p0, Landroid/net/sip/ISipService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 374
    sget-object v3, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Landroid/net/sip/SipProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 377
    .local v2, "_result":[Landroid/net/sip/SipProfile;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 380
    return-object v2

    #@2b
    .line 376
    .end local v2    # "_result":[Landroid/net/sip/SipProfile;
    :catchall_0
    move-exception v3

    #@2c
    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 376
    throw v3
.end method

.method public getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 348
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 353
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 354
    iget-object v3, p0, Landroid/net/sip/ISipService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x8

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22
    move-result-object v3

    #@23
    invoke-static {v3}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v2

    #@27
    .line 359
    .local v2, "_result":Landroid/net/sip/ISipSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 362
    return-object v2

    #@2e
    .line 358
    .end local v2    # "_result":Landroid/net/sip/ISipSession;
    :catchall_0
    move-exception v3

    #@2f
    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 358
    throw v3
.end method

.method public isOpened(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
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
    const-string/jumbo v3, "android.net.sip.ISipService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 272
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 273
    iget-object v3, p0, Landroid/net/sip/ISipService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x4

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 275
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
    .line 278
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 281
    return v2

    #@2c
    .line 275
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2d
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2e
    .line 277
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2f
    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 277
    throw v3
.end method

.method public isRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 286
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 292
    iget-object v3, p0, Landroid/net/sip/ISipService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x5

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 294
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
    .line 297
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 300
    return v2

    #@2c
    .line 294
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2d
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2e
    .line 296
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2f
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 296
    throw v3
.end method

.method public open(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.sip.ISipService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 202
    if-eqz p1, :cond_0

    #@10
    .line 203
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 204
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/sip/SipProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 209
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 210
    iget-object v2, p0, Landroid/net/sip/ISipService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x1

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 196
    return-void

    #@2c
    .line 207
    :cond_0
    const/4 v2, 0x0

    #@2d
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 213
    :catchall_0
    move-exception v2

    #@32
    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 213
    throw v2
.end method

.method public open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    .locals 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 223
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 224
    if-eqz p1, :cond_1

    #@11
    .line 225
    const/4 v3, 0x1

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 226
    const/4 v3, 0x0

    #@16
    invoke-virtual {p1, v0, v3}, Landroid/net/sip/SipProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 231
    :goto_0
    if-eqz p2, :cond_2

    #@1b
    .line 232
    const/4 v3, 0x1

    #@1c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 233
    const/4 v3, 0x0

    #@20
    invoke-virtual {p2, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@23
    .line 238
    :goto_1
    if-eqz p3, :cond_0

    #@25
    invoke-interface {p3}, Landroid/net/sip/ISipSessionListener;->asBinder()Landroid/os/IBinder;

    #@28
    move-result-object v2

    #@29
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2c
    .line 239
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 240
    iget-object v2, p0, Landroid/net/sip/ISipService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@31
    const/4 v3, 0x2

    #@32
    const/4 v4, 0x0

    #@33
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 218
    return-void

    #@40
    .line 229
    :cond_1
    const/4 v3, 0x0

    #@41
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 243
    :catchall_0
    move-exception v2

    #@46
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 243
    throw v2

    #@4d
    .line 236
    :cond_2
    const/4 v3, 0x0

    #@4e
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1
.end method

.method public setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    .locals 5
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 305
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 309
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/net/sip/ISipSessionListener;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 310
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 311
    iget-object v2, p0, Landroid/net/sip/ISipService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x6

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 302
    return-void

    #@2f
    .line 314
    :catchall_0
    move-exception v2

    #@30
    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 314
    throw v2
.end method
