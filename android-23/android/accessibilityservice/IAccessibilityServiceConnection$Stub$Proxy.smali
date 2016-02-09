.class Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
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
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 257
    iput-object p1, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 255
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 296
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 297
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 298
    if-eqz p5, :cond_0

    #@1a
    invoke-interface {p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v3

    #@1e
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 299
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 300
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 301
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v4, 0x2

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    .line 306
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 309
    return v2

    #@3f
    .line 303
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@40
    .restart local v2    # "_result":Z
    goto :goto_0

    #@41
    .line 305
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@42
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 305
    throw v3
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 319
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 320
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 321
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 322
    if-eqz p6, :cond_0

    #@1d
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v3

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 323
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 324
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v4, 0x3

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    .line 329
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 332
    return v2

    #@3f
    .line 326
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@40
    .restart local v2    # "_result":Z
    goto :goto_0

    #@41
    .line 328
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@42
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 328
    throw v3
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewId"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 337
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 340
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 342
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 343
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 344
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 345
    if-eqz p6, :cond_0

    #@1d
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v3

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 346
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 347
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v4, 0x4

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    .line 352
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 355
    return v2

    #@3f
    .line 349
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@40
    .restart local v2    # "_result":Z
    goto :goto_0

    #@41
    .line 351
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@42
    .line 352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 351
    throw v3
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 365
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 366
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 367
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 368
    if-eqz p6, :cond_0

    #@1d
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v3

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 369
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 370
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v4, 0x5

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    .line 375
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 378
    return v2

    #@3f
    .line 372
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@40
    .restart local v2    # "_result":Z
    goto :goto_0

    #@41
    .line 374
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@42
    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 374
    throw v3
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 388
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 389
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 390
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 391
    if-eqz p6, :cond_0

    #@1d
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v3

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 392
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 393
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v4, 0x6

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    .line 398
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 401
    return v2

    #@3f
    .line 395
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@40
    .restart local v2    # "_result":Z
    goto :goto_0

    #@41
    .line 397
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@42
    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 397
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 265
    const-string/jumbo v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@3
    return-object v0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 476
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 479
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 480
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 483
    sget-object v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 490
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 493
    return-object v2

    #@2e
    .line 486
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_0

    #@30
    .line 489
    .end local v2    # "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_0
    move-exception v3

    #@31
    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 489
    throw v3
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 6
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 441
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x8

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 444
    sget-object v3, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 451
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 454
    return-object v2

    #@31
    .line 447
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    goto :goto_0

    #@33
    .line 450
    .end local v2    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v3

    #@34
    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 450
    throw v3
.end method

.method public getWindows()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

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
    .line 462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 463
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x9

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 465
    sget-object v3, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 468
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 471
    return-object v2

    #@26
    .line 467
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catchall_0
    move-exception v3

    #@27
    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 467
    throw v3
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 6
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 406
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 409
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 410
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 411
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 412
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 413
    if-eqz p5, :cond_1

    #@1a
    .line 414
    const/4 v4, 0x1

    #@1b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 415
    const/4 v4, 0x0

    #@1f
    invoke-virtual {p5, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 420
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 421
    if-eqz p7, :cond_0

    #@27
    invoke-interface {p7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@2a
    move-result-object v3

    #@2b
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2e
    .line 422
    invoke-virtual {v0, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    #@31
    .line 423
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@33
    const/4 v4, 0x7

    #@34
    const/4 v5, 0x0

    #@35
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@38
    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3b
    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_2

    #@41
    const/4 v2, 0x1

    #@42
    .line 428
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 431
    return v2

    #@49
    .line 418
    .end local v2    # "_result":Z
    :cond_1
    const/4 v4, 0x0

    #@4a
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 427
    :catchall_0
    move-exception v3

    #@4f
    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@55
    .line 427
    throw v3

    #@56
    .line 425
    :cond_2
    const/4 v2, 0x0

    #@57
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public performGlobalAction(I)Z
    .locals 6
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 503
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 504
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 508
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 511
    return v2

    #@2a
    .line 505
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 507
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 507
    throw v3
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 5
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 517
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 518
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 519
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 520
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0xc

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 513
    return-void

    #@20
    .line 518
    :cond_0
    const/4 v1, 0x0

    #@21
    goto :goto_0

    #@22
    .line 522
    :catchall_0
    move-exception v1

    #@23
    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 522
    throw v1
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 273
    if-eqz p1, :cond_0

    #@10
    .line 274
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 275
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 280
    :goto_0
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 267
    return-void

    #@29
    .line 278
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 283
    :catchall_0
    move-exception v2

    #@2f
    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 283
    throw v2
.end method
