.class Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
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
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 254
    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 252
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 5
    .param p1, "accessibilityNodeId"    # J
    .param p3, "bounds"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 268
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 269
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@e
    .line 270
    if-eqz p3, :cond_1

    #@10
    .line 271
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 272
    const/4 v2, 0x0

    #@15
    invoke-virtual {p3, v0, v2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 277
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 278
    if-eqz p5, :cond_0

    #@1d
    invoke-interface {p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v1

    #@21
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 279
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 280
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 281
    invoke-virtual {v0, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    #@2d
    .line 282
    if-eqz p10, :cond_2

    #@2f
    .line 283
    const/4 v1, 0x1

    #@30
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 284
    const/4 v1, 0x0

    #@34
    invoke-virtual {p10, v0, v1}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    #@37
    .line 289
    :goto_1
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@39
    const/4 v2, 0x1

    #@3a
    const/4 v3, 0x0

    #@3b
    const/4 v4, 0x1

    #@3c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 264
    return-void

    #@43
    .line 275
    :cond_1
    const/4 v2, 0x0

    #@44
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    goto :goto_0

    #@48
    .line 291
    :catchall_0
    move-exception v1

    #@49
    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 291
    throw v1

    #@4d
    .line 287
    :cond_2
    const/4 v1, 0x0

    #@4e
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
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
    move-result-object v2

    #@4
    .line 331
    .local v2, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@7
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 332
    invoke-virtual {v2, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 333
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 334
    if-eqz p4, :cond_0

    #@12
    .line 335
    const/4 v3, 0x1

    #@13
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 336
    const/4 v3, 0x0

    #@17
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 341
    :goto_0
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 342
    if-eqz p6, :cond_1

    #@1f
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v3

    #@23
    :goto_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@26
    .line 343
    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 344
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 345
    move-wide/from16 v0, p9

    #@2e
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@31
    .line 346
    if-eqz p11, :cond_2

    #@33
    .line 347
    const/4 v3, 0x1

    #@34
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 348
    const/4 v3, 0x0

    #@38
    move-object/from16 v0, p11

    #@3a
    invoke-virtual {v0, v2, v3}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    #@3d
    .line 353
    :goto_2
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3f
    const/4 v4, 0x3

    #@40
    const/4 v5, 0x0

    #@41
    const/4 v6, 0x1

    #@42
    invoke-interface {v3, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 356
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 327
    return-void

    #@49
    .line 339
    :cond_0
    const/4 v3, 0x0

    #@4a
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 355
    :catchall_0
    move-exception v3

    #@4f
    .line 356
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 355
    throw v3

    #@53
    .line 342
    :cond_1
    const/4 v3, 0x0

    #@54
    goto :goto_1

    #@55
    .line 351
    :cond_2
    const/4 v3, 0x0

    #@56
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    goto :goto_2
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v2

    #@4
    .line 299
    .local v2, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@7
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 300
    invoke-virtual {v2, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 301
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 302
    if-eqz p4, :cond_0

    #@12
    .line 303
    const/4 v3, 0x1

    #@13
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 304
    const/4 v3, 0x0

    #@17
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 309
    :goto_0
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 310
    if-eqz p6, :cond_1

    #@1f
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v3

    #@23
    :goto_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@26
    .line 311
    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 312
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 313
    move-wide/from16 v0, p9

    #@2e
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@31
    .line 314
    if-eqz p11, :cond_2

    #@33
    .line 315
    const/4 v3, 0x1

    #@34
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 316
    const/4 v3, 0x0

    #@38
    move-object/from16 v0, p11

    #@3a
    invoke-virtual {v0, v2, v3}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    #@3d
    .line 321
    :goto_2
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3f
    const/4 v4, 0x2

    #@40
    const/4 v5, 0x0

    #@41
    const/4 v6, 0x1

    #@42
    invoke-interface {v3, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 324
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 295
    return-void

    #@49
    .line 307
    :cond_0
    const/4 v3, 0x0

    #@4a
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 323
    :catchall_0
    move-exception v3

    #@4f
    .line 324
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 323
    throw v3

    #@53
    .line 310
    :cond_1
    const/4 v3, 0x0

    #@54
    goto :goto_1

    #@55
    .line 319
    :cond_2
    const/4 v3, 0x0

    #@56
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    goto :goto_2
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v2

    #@4
    .line 363
    .local v2, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@7
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 364
    invoke-virtual {v2, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 365
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 366
    if-eqz p4, :cond_0

    #@12
    .line 367
    const/4 v3, 0x1

    #@13
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 368
    const/4 v3, 0x0

    #@17
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 373
    :goto_0
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 374
    if-eqz p6, :cond_1

    #@1f
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v3

    #@23
    :goto_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@26
    .line 375
    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 376
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 377
    move-wide/from16 v0, p9

    #@2e
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@31
    .line 378
    if-eqz p11, :cond_2

    #@33
    .line 379
    const/4 v3, 0x1

    #@34
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 380
    const/4 v3, 0x0

    #@38
    move-object/from16 v0, p11

    #@3a
    invoke-virtual {v0, v2, v3}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    #@3d
    .line 385
    :goto_2
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3f
    const/4 v4, 0x4

    #@40
    const/4 v5, 0x0

    #@41
    const/4 v6, 0x1

    #@42
    invoke-interface {v3, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 388
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 359
    return-void

    #@49
    .line 371
    :cond_0
    const/4 v3, 0x0

    #@4a
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 387
    :catchall_0
    move-exception v3

    #@4f
    .line 388
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 387
    throw v3

    #@53
    .line 374
    :cond_1
    const/4 v3, 0x0

    #@54
    goto :goto_1

    #@55
    .line 383
    :cond_2
    const/4 v3, 0x0

    #@56
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    goto :goto_2
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v2

    #@4
    .line 395
    .local v2, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@7
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 396
    invoke-virtual {v2, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 397
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 398
    if-eqz p4, :cond_0

    #@12
    .line 399
    const/4 v3, 0x1

    #@13
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 400
    const/4 v3, 0x0

    #@17
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 405
    :goto_0
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 406
    if-eqz p6, :cond_1

    #@1f
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v3

    #@23
    :goto_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@26
    .line 407
    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 408
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 409
    move-wide/from16 v0, p9

    #@2e
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@31
    .line 410
    if-eqz p11, :cond_2

    #@33
    .line 411
    const/4 v3, 0x1

    #@34
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 412
    const/4 v3, 0x0

    #@38
    move-object/from16 v0, p11

    #@3a
    invoke-virtual {v0, v2, v3}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    #@3d
    .line 417
    :goto_2
    iget-object v3, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@3f
    const/4 v4, 0x5

    #@40
    const/4 v5, 0x0

    #@41
    const/4 v6, 0x1

    #@42
    invoke-interface {v3, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 420
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 391
    return-void

    #@49
    .line 403
    :cond_0
    const/4 v3, 0x0

    #@4a
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 419
    :catchall_0
    move-exception v3

    #@4f
    .line 420
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 419
    throw v3

    #@53
    .line 406
    :cond_1
    const/4 v3, 0x0

    #@54
    goto :goto_1

    #@55
    .line 415
    :cond_2
    const/4 v3, 0x0

    #@56
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    goto :goto_2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 262
    const-string/jumbo v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@3
    return-object v0
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 5
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 427
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 428
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@e
    .line 429
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 430
    if-eqz p4, :cond_1

    #@13
    .line 431
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 432
    const/4 v2, 0x0

    #@18
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 437
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 438
    if-eqz p6, :cond_0

    #@20
    invoke-interface {p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v1

    #@24
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27
    .line 439
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 440
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 441
    invoke-virtual {v0, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    #@30
    .line 442
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@32
    const/4 v2, 0x6

    #@33
    const/4 v3, 0x0

    #@34
    const/4 v4, 0x1

    #@35
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 423
    return-void

    #@3c
    .line 435
    :cond_1
    const/4 v2, 0x0

    #@3d
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    goto :goto_0

    #@41
    .line 444
    :catchall_0
    move-exception v1

    #@42
    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 444
    throw v1
.end method
