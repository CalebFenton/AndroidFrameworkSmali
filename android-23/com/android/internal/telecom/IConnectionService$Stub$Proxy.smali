.class Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService$Stub;
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
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 237
    iput-object p1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 235
    return-void
.end method


# virtual methods
.method public abort(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 303
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 305
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x4

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 299
    return-void

    #@19
    .line 307
    :catchall_0
    move-exception v1

    #@1a
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 307
    throw v1
.end method

.method public addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 251
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 252
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 253
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x1

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 247
    return-void

    #@20
    .line 255
    :catchall_0
    move-exception v1

    #@21
    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 255
    throw v1
.end method

.method public answer(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 328
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 330
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x6

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 324
    return-void

    #@19
    .line 332
    :catchall_0
    move-exception v1

    #@1a
    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 332
    throw v1
.end method

.method public answerVideo(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 315
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 317
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 318
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x5

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 311
    return-void

    #@1c
    .line 320
    :catchall_0
    move-exception v1

    #@1d
    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 320
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "conferenceCallId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 432
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 434
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 435
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xe

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 428
    return-void

    #@1d
    .line 437
    :catchall_0
    move-exception v1

    #@1e
    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 437
    throw v1
.end method

.method public createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 5
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 275
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telecom.IConnectionService"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 276
    if-eqz p1, :cond_0

    #@e
    .line 277
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 278
    const/4 v3, 0x0

    #@13
    invoke-virtual {p1, v0, v3}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 283
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 284
    if-eqz p3, :cond_1

    #@1b
    .line 285
    const/4 v3, 0x1

    #@1c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 286
    const/4 v3, 0x0

    #@20
    invoke-virtual {p3, v0, v3}, Landroid/telecom/ConnectionRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@23
    .line 291
    :goto_1
    if-eqz p4, :cond_2

    #@25
    move v3, v1

    #@26
    :goto_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 292
    if-eqz p5, :cond_3

    #@2b
    :goto_3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 293
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@30
    const/4 v2, 0x3

    #@31
    const/4 v3, 0x0

    #@32
    const/4 v4, 0x1

    #@33
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 271
    return-void

    #@3a
    .line 281
    :cond_0
    const/4 v3, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 295
    :catchall_0
    move-exception v1

    #@40
    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 295
    throw v1

    #@44
    .line 289
    :cond_1
    const/4 v3, 0x0

    #@45
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    goto :goto_1

    #@49
    :cond_2
    move v3, v2

    #@4a
    .line 291
    goto :goto_2

    #@4b
    :cond_3
    move v1, v2

    #@4c
    .line 292
    goto :goto_3
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 352
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 354
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x8

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 348
    return-void

    #@1a
    .line 356
    :catchall_0
    move-exception v1

    #@1b
    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 356
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 245
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    #@3
    return-object v0
.end method

.method public hold(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 364
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 366
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x9

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 360
    return-void

    #@1a
    .line 368
    :catchall_0
    move-exception v1

    #@1b
    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 368
    throw v1
.end method

.method public mergeConference(Ljava/lang/String;)V
    .locals 5
    .param p1, "conferenceCallId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 457
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 459
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x10

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 453
    return-void

    #@1a
    .line 461
    :catchall_0
    move-exception v1

    #@1b
    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 461
    throw v1
.end method

.method public onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 5
    .param p1, "activeCallId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 388
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 390
    if-eqz p2, :cond_0

    #@f
    .line 391
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 392
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/telecom/CallAudioState;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 397
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0xb

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 384
    return-void

    #@24
    .line 395
    :cond_0
    const/4 v1, 0x0

    #@25
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 399
    :catchall_0
    move-exception v1

    #@2a
    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 399
    throw v1
.end method

.method public onPostDialContinue(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 481
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 482
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 483
    if-eqz p2, :cond_0

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 484
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0x12

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 477
    return-void

    #@20
    .line 483
    :cond_0
    const/4 v1, 0x0

    #@21
    goto :goto_0

    #@22
    .line 486
    :catchall_0
    move-exception v1

    #@23
    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 486
    throw v1
.end method

.method public playDtmfTone(Ljava/lang/String;C)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 407
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 409
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 410
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xc

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 403
    return-void

    #@1d
    .line 412
    :catchall_0
    move-exception v1

    #@1e
    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 412
    throw v1
.end method

.method public reject(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 340
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 342
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x7

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 336
    return-void

    #@19
    .line 344
    :catchall_0
    move-exception v1

    #@1a
    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 344
    throw v1
.end method

.method public removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 264
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 265
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x2

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 259
    return-void

    #@20
    .line 267
    :catchall_0
    move-exception v1

    #@21
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 267
    throw v1
.end method

.method public splitFromConference(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 445
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 447
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0xf

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 441
    return-void

    #@1a
    .line 449
    :catchall_0
    move-exception v1

    #@1b
    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 449
    throw v1
.end method

.method public stopDtmfTone(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 420
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 422
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0xd

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 416
    return-void

    #@1a
    .line 424
    :catchall_0
    move-exception v1

    #@1b
    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 424
    throw v1
.end method

.method public swapConference(Ljava/lang/String;)V
    .locals 5
    .param p1, "conferenceCallId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 469
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 470
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 471
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x11

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 465
    return-void

    #@1a
    .line 473
    :catchall_0
    move-exception v1

    #@1b
    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 473
    throw v1
.end method

.method public unhold(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 376
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 378
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0xa

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 372
    return-void

    #@1a
    .line 380
    :catchall_0
    move-exception v1

    #@1b
    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 380
    throw v1
.end method
