.class Landroid/net/sip/ISipSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISipSession.java"

# interfaces
.implements Landroid/net/sip/ISipSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipSession$Stub;
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
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 190
    iput-object p1, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 188
    return-void
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 5
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 462
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 463
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 464
    iget-object v2, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xb

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 465
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 456
    return-void

    #@26
    .line 467
    :catchall_0
    move-exception v2

    #@27
    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 467
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public changeCall(Ljava/lang/String;I)V
    .locals 5
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 505
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 507
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 509
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 510
    iget-object v2, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xd

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 502
    return-void

    #@26
    .line 513
    :catchall_0
    move-exception v2

    #@27
    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 513
    throw v2
.end method

.method public endCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 485
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 486
    iget-object v2, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xc

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 480
    return-void

    #@20
    .line 489
    :catchall_0
    move-exception v2

    #@21
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 489
    throw v2
.end method

.method public getCallId()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 334
    iget-object v3, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 339
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 342
    return-object v2

    #@23
    .line 338
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 338
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 198
    const-string/jumbo v0, "android.net.sip.ISipSession"

    #@3
    return-object v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 212
    iget-object v3, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x1

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 217
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 220
    return-object v2

    #@23
    .line 216
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 216
    throw v3
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 6
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
    const-string/jumbo v3, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 234
    iget-object v3, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 237
    sget-object v3, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/net/sip/SipProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 244
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 247
    return-object v2

    #@2d
    .line 240
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/net/sip/SipProfile;
    goto :goto_0

    #@2f
    .line 243
    .end local v2    # "_result":Landroid/net/sip/SipProfile;
    :catchall_0
    move-exception v3

    #@30
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 243
    throw v3
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 262
    iget-object v3, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 265
    sget-object v3, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/net/sip/SipProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 272
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 275
    return-object v2

    #@2d
    .line 268
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/net/sip/SipProfile;
    goto :goto_0

    #@2f
    .line 271
    .end local v2    # "_result":Landroid/net/sip/SipProfile;
    :catchall_0
    move-exception v3

    #@30
    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 271
    throw v3
.end method

.method public getState()I
    .locals 6
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
    const-string/jumbo v3, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 290
    iget-object v3, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 295
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 298
    return v2

    #@23
    .line 294
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@24
    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 294
    throw v3
.end method

.method public isInCall()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 308
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 312
    iget-object v3, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 314
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
    .line 317
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 320
    return v2

    #@26
    .line 314
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 316
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 316
    throw v3
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 5
    .param p1, "callee"    # Landroid/net/sip/SipProfile;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 430
    if-eqz p1, :cond_0

    #@10
    .line 431
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 432
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/net/sip/SipProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 437
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 438
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 439
    iget-object v2, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0xa

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 424
    return-void

    #@30
    .line 435
    :cond_0
    const/4 v2, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 442
    :catchall_0
    move-exception v2

    #@36
    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 442
    throw v2
.end method

.method public register(I)V
    .locals 5
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 382
    iget-object v2, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x8

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 375
    return-void

    #@23
    .line 385
    :catchall_0
    move-exception v2

    #@24
    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 385
    throw v2
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 356
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.sip.ISipSession"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 357
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/net/sip/ISipSessionListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 358
    iget-object v2, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 351
    return-void

    #@29
    .line 361
    :catchall_0
    move-exception v2

    #@2a
    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 361
    throw v2
.end method

.method public unregister()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 405
    iget-object v2, p0, Landroid/net/sip/ISipSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x9

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 399
    return-void

    #@20
    .line 408
    :catchall_0
    move-exception v2

    #@21
    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 408
    throw v2
.end method
