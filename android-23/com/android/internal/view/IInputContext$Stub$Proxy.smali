.class Lcom/android/internal/view/IInputContext$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputContext.java"

# interfaces
.implements Lcom/android/internal/view/IInputContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContext$Stub;
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
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 305
    iput-object p1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 303
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public beginBatchEdit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 519
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 520
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xe

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 515
    return-void

    #@17
    .line 522
    :catchall_0
    move-exception v1

    #@18
    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 522
    throw v1
.end method

.method public clearMetaKeyStates(I)V
    .locals 5
    .param p1, "states"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 571
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 572
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 573
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x12

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 567
    return-void

    #@1a
    .line 575
    :catchall_0
    move-exception v1

    #@1b
    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 575
    throw v1
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 5
    .param p1, "completion"    # Landroid/view/inputmethod/CompletionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 446
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 447
    if-eqz p1, :cond_0

    #@c
    .line 448
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 449
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/CompletionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 454
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0x9

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 442
    return-void

    #@21
    .line 452
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
    .line 456
    :catchall_0
    move-exception v1

    #@27
    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 456
    throw v1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 5
    .param p1, "correction"    # Landroid/view/inputmethod/CorrectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 464
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 465
    if-eqz p1, :cond_0

    #@c
    .line 466
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 467
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/CorrectionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 472
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0xa

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 460
    return-void

    #@21
    .line 470
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
    .line 474
    :catchall_0
    move-exception v1

    #@27
    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 474
    throw v1
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 427
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 428
    if-eqz p1, :cond_0

    #@c
    .line 429
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 430
    const/4 v1, 0x0

    #@11
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@14
    .line 435
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 436
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0x8

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 423
    return-void

    #@24
    .line 433
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
    .line 438
    :catchall_0
    move-exception v1

    #@2a
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 438
    throw v1
.end method

.method public deleteSurroundingText(II)V
    .locals 5
    .param p1, "leftLength"    # I
    .param p2, "rightLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 384
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 386
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 387
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 380
    return-void

    #@1c
    .line 389
    :catchall_0
    move-exception v1

    #@1d
    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 389
    throw v1
.end method

.method public endBatchEdit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 530
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 531
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 526
    return-void

    #@17
    .line 533
    :catchall_0
    move-exception v1

    #@18
    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 533
    throw v1
.end method

.method public finishComposingText()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 416
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 417
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 412
    return-void

    #@16
    .line 419
    :catchall_0
    move-exception v1

    #@17
    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 419
    throw v1
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 5
    .param p1, "reqModes"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputContext"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 351
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 352
    if-eqz p3, :cond_0

    #@13
    invoke-interface {p3}, Lcom/android/internal/view/IInputContextCallback;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 353
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v2, 0x3

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 345
    return-void

    #@26
    .line 355
    :catchall_0
    move-exception v1

    #@27
    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 355
    throw v1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .locals 5
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 363
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputContext"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 364
    if-eqz p1, :cond_1

    #@d
    .line 365
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 366
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/ExtractedTextRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 371
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 372
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 373
    if-eqz p4, :cond_0

    #@1d
    invoke-interface {p4}, Lcom/android/internal/view/IInputContextCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v1

    #@21
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 374
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v2, 0x4

    #@27
    const/4 v3, 0x0

    #@28
    const/4 v4, 0x1

    #@29
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 359
    return-void

    #@30
    .line 369
    :cond_1
    const/4 v2, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 376
    :catchall_0
    move-exception v1

    #@36
    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 376
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 313
    const-string/jumbo v0, "com.android.internal.view.IInputContext"

    #@3
    return-object v0
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 615
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputContext"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 617
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 618
    if-eqz p3, :cond_0

    #@13
    invoke-interface {p3}, Lcom/android/internal/view/IInputContextCallback;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 619
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v2, 0x15

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x1

    #@20
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 611
    return-void

    #@27
    .line 621
    :catchall_0
    move-exception v1

    #@28
    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 621
    throw v1
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 334
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputContext"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 337
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 338
    if-eqz p4, :cond_0

    #@16
    invoke-interface {p4}, Lcom/android/internal/view/IInputContextCallback;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1d
    .line 339
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v2, 0x2

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x1

    #@22
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 330
    return-void

    #@29
    .line 341
    :catchall_0
    move-exception v1

    #@2a
    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 341
    throw v1
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 319
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputContext"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 321
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 322
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 323
    if-eqz p4, :cond_0

    #@16
    invoke-interface {p4}, Lcom/android/internal/view/IInputContextCallback;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1d
    .line 324
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v2, 0x1

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x1

    #@22
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 315
    return-void

    #@29
    .line 326
    :catchall_0
    move-exception v1

    #@2a
    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 326
    throw v1
.end method

.method public performContextMenuAction(I)V
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 507
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 509
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 503
    return-void

    #@1a
    .line 511
    :catchall_0
    move-exception v1

    #@1b
    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 511
    throw v1
.end method

.method public performEditorAction(I)V
    .locals 5
    .param p1, "actionCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 495
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 497
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0xc

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 491
    return-void

    #@1a
    .line 499
    :catchall_0
    move-exception v1

    #@1b
    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 499
    throw v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 583
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 585
    if-eqz p2, :cond_0

    #@f
    .line 586
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 587
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 592
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0x13

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 579
    return-void

    #@24
    .line 590
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
    .line 594
    :catchall_0
    move-exception v1

    #@2a
    .line 595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 594
    throw v1
.end method

.method public reportFullscreenMode(Z)V
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
    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 541
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputContext"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 542
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 543
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x10

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 537
    return-void

    #@1d
    .line 542
    :cond_0
    const/4 v1, 0x0

    #@1e
    goto :goto_0

    #@1f
    .line 545
    :catchall_0
    move-exception v1

    #@20
    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 545
    throw v1
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 5
    .param p1, "cursorUpdateMode"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 629
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputContext"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 631
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 632
    if-eqz p3, :cond_0

    #@13
    invoke-interface {p3}, Lcom/android/internal/view/IInputContextCallback;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 633
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v2, 0x16

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x1

    #@20
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 625
    return-void

    #@27
    .line 635
    :catchall_0
    move-exception v1

    #@28
    .line 636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 635
    throw v1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 553
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 554
    if-eqz p1, :cond_0

    #@c
    .line 555
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 556
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 561
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0x11

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 549
    return-void

    #@21
    .line 559
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
    .line 563
    :catchall_0
    move-exception v1

    #@27
    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 563
    throw v1
.end method

.method public setComposingRegion(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 602
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 603
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 604
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 605
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x14

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 598
    return-void

    #@1d
    .line 607
    :catchall_0
    move-exception v1

    #@1e
    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 607
    throw v1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 397
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 398
    if-eqz p1, :cond_0

    #@c
    .line 399
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 400
    const/4 v1, 0x0

    #@11
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@14
    .line 405
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 406
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x6

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 393
    return-void

    #@23
    .line 403
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 408
    :catchall_0
    move-exception v1

    #@29
    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 408
    throw v1
.end method

.method public setSelection(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 482
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 484
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 485
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xb

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 478
    return-void

    #@1d
    .line 487
    :catchall_0
    move-exception v1

    #@1e
    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 487
    throw v1
.end method
