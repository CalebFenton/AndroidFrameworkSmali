.class Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService$Stub;
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
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 204
    iput-object p1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 202
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 236
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.policy.IKeyguardService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 237
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 238
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 232
    return-void

    #@20
    .line 240
    :catchall_0
    move-exception v1

    #@21
    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 240
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public dismiss()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 273
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x5

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 269
    return-void

    #@16
    .line 276
    :catchall_0
    move-exception v1

    #@17
    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 276
    throw v1
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 422
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 423
    if-eqz p1, :cond_0

    #@c
    .line 424
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 425
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 430
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0x10

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 418
    return-void

    #@21
    .line 428
    :cond_0
    const/4 v1, 0x0

    #@22
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 432
    :catchall_0
    move-exception v1

    #@27
    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 432
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 212
    const-string/jumbo v0, "com.android.internal.policy.IKeyguardService"

    #@3
    return-object v0
.end method

.method public keyguardDone(ZZ)V
    .locals 5
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.policy.IKeyguardService"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 261
    if-eqz p1, :cond_0

    #@e
    move v3, v1

    #@f
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 262
    if-eqz p2, :cond_1

    #@14
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x4

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 256
    return-void

    #@23
    :cond_0
    move v3, v2

    #@24
    .line 261
    goto :goto_0

    #@25
    :cond_1
    move v1, v2

    #@26
    .line 262
    goto :goto_1

    #@27
    .line 265
    :catchall_0
    move-exception v1

    #@28
    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 265
    throw v1
.end method

.method public onActivityDrawn()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 487
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 488
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x14

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 483
    return-void

    #@17
    .line 490
    :catchall_0
    move-exception v1

    #@18
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 490
    throw v1
.end method

.method public onBootCompleted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 452
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 453
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x12

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 448
    return-void

    #@17
    .line 455
    :catchall_0
    move-exception v1

    #@18
    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 455
    throw v1
.end method

.method public onDreamingStarted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 284
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x6

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 280
    return-void

    #@16
    .line 287
    :catchall_0
    move-exception v1

    #@17
    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 287
    throw v1
.end method

.method public onDreamingStopped()V
    .locals 5
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
    .line 295
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 296
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x7

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 291
    return-void

    #@16
    .line 298
    :catchall_0
    move-exception v1

    #@17
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 298
    throw v1
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 330
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 332
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 326
    return-void

    #@1a
    .line 334
    :catchall_0
    move-exception v1

    #@1b
    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 334
    throw v1
.end method

.method public onScreenTurnedOff()V
    .locals 5
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
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 389
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xd

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 384
    return-void

    #@17
    .line 391
    :catchall_0
    move-exception v1

    #@18
    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 391
    throw v1
.end method

.method public onScreenTurnedOn()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 374
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 375
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xc

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 370
    return-void

    #@17
    .line 377
    :catchall_0
    move-exception v1

    #@18
    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 377
    throw v1
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 359
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.policy.IKeyguardService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 360
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 361
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0xb

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 355
    return-void

    #@21
    .line 363
    :catchall_0
    move-exception v1

    #@22
    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 363
    throw v1
.end method

.method public onStartedGoingToSleep(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 312
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 313
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 308
    return-void

    #@1a
    .line 316
    :catchall_0
    move-exception v1

    #@1b
    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 316
    throw v1
.end method

.method public onStartedWakingUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 345
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 346
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xa

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 341
    return-void

    #@17
    .line 348
    :catchall_0
    move-exception v1

    #@18
    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 348
    throw v1
.end method

.method public onSystemReady()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 411
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 412
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xf

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 407
    return-void

    #@17
    .line 414
    :catchall_0
    move-exception v1

    #@18
    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 414
    throw v1
.end method

.method public setCurrentUser(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 440
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 442
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 436
    return-void

    #@1a
    .line 444
    :catchall_0
    move-exception v1

    #@1b
    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 444
    throw v1
.end method

.method public setKeyguardEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 399
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.policy.IKeyguardService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 400
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 395
    return-void

    #@1d
    .line 400
    :cond_0
    const/4 v1, 0x0

    #@1e
    goto :goto_0

    #@1f
    .line 403
    :catchall_0
    move-exception v1

    #@20
    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 403
    throw v1
.end method

.method public setOccluded(Z)V
    .locals 5
    .param p1, "isOccluded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 224
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.policy.IKeyguardService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 225
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 226
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 220
    return-void

    #@1c
    .line 225
    :cond_0
    const/4 v1, 0x0

    #@1d
    goto :goto_0

    #@1e
    .line 228
    :catchall_0
    move-exception v1

    #@1f
    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 228
    throw v1
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 5
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 470
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 471
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 472
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    .line 473
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x13

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 466
    return-void

    #@1d
    .line 475
    :catchall_0
    move-exception v1

    #@1e
    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 475
    throw v1
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 248
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.policy.IKeyguardService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 249
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardExitCallback;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x3

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 244
    return-void

    #@20
    .line 252
    :catchall_0
    move-exception v1

    #@21
    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 252
    throw v1
.end method
