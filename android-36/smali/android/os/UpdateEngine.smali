.class public Landroid/os/UpdateEngine;
.super Ljava/lang/Object;
.source "UpdateEngine.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UpdateEngine$AllocateSpaceResult;,
        Landroid/os/UpdateEngine$ErrorCodeConstants;,
        Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;,
        Landroid/os/UpdateEngine$UpdateStatusConstants;,
        Landroid/os/UpdateEngine$ErrorCode;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "UpdateEngine"

.field private static final greylist-max-o UPDATE_ENGINE_SERVICE:Ljava/lang/String; = "android.os.UpdateEngineService"


# instance fields
.field private final greylist-max-o mUpdateEngine:Landroid/os/IUpdateEngine;

.field private greylist-max-o mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

.field private final greylist-max-o mUpdateEngineCallbackLock:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    .line 254
    nop

    .line 255
    const-string v0, "android.os.UpdateEngineService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/os/IUpdateEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    .line 256
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    if-eqz v0, :cond_1f

    .line 259
    return-void

    .line 257
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find update_engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist allocateSpace(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/UpdateEngine$AllocateSpaceResult;
    .registers 8
    .param p1, "payloadMetadataFilename"    # Ljava/lang/String;
    .param p2, "headerKeyValuePairs"    # [Ljava/lang/String;

    .line 586
    new-instance v0, Landroid/os/UpdateEngine$AllocateSpaceResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UpdateEngine$AllocateSpaceResult;-><init>(Landroid/os/UpdateEngine-IA;)V

    .line 588
    .local v0, "result":Landroid/os/UpdateEngine$AllocateSpaceResult;
    const-wide/16 v1, 0x0

    :try_start_8
    iget-object v3, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v3, p1, p2}, Landroid/os/IUpdateEngine;->allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;J)V

    .line 591
    invoke-static {v0}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fgetmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_1b

    .line 592
    const/4 v3, 0x0

    goto :goto_1d

    .line 593
    :cond_1b
    const/16 v3, 0x3c

    :goto_1d
    invoke-static {v0, v3}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmErrorCode(Landroid/os/UpdateEngine$AllocateSpaceResult;I)V
    :try_end_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_20} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 594
    return-object v0

    .line 599
    :catch_21
    move-exception v1

    .line 600
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 595
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_27
    move-exception v3

    .line 596
    .local v3, "e":Landroid/os/ServiceSpecificException;
    iget v4, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v0, v4}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmErrorCode(Landroid/os/UpdateEngine$AllocateSpaceResult;I)V

    .line 597
    invoke-static {v0, v1, v2}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;J)V

    .line 598
    return-object v0
.end method

.method public whitelist applyPayload(Landroid/content/res/AssetFileDescriptor;[Ljava/lang/String;)V
    .registers 10
    .param p1, "assetFd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "headerKeyValuePairs"    # [Ljava/lang/String;

    .line 371
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 372
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_17

    .line 371
    move-object v6, p2

    .end local p2    # "headerKeyValuePairs":[Ljava/lang/String;
    .local v6, "headerKeyValuePairs":[Ljava/lang/String;
    :try_start_f
    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngine;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 375
    nop

    .line 376
    return-void

    .line 373
    :catch_14
    move-exception v0

    move-object p2, v0

    goto :goto_1a

    .end local v6    # "headerKeyValuePairs":[Ljava/lang/String;
    .restart local p2    # "headerKeyValuePairs":[Ljava/lang/String;
    :catch_17
    move-exception v0

    move-object v6, p2

    move-object p2, v0

    .line 374
    .restart local v6    # "headerKeyValuePairs":[Ljava/lang/String;
    .local p2, "e":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    .registers 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .param p6, "headerKeyValuePairs"    # [Ljava/lang/String;

    .line 355
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_e

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "offset":J
    .end local p4    # "size":J
    .end local p6    # "headerKeyValuePairs":[Ljava/lang/String;
    .local v1, "url":Ljava/lang/String;
    .local v2, "offset":J
    .local v4, "size":J
    .local v6, "headerKeyValuePairs":[Ljava/lang/String;
    :try_start_6
    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 358
    nop

    .line 359
    return-void

    .line 356
    :catch_b
    move-exception v0

    move-object p1, v0

    goto :goto_14

    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "offset":J
    .end local v4    # "size":J
    .end local v6    # "headerKeyValuePairs":[Ljava/lang/String;
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "offset":J
    .restart local p4    # "size":J
    .restart local p6    # "headerKeyValuePairs":[Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object p1, v0

    .line 357
    .end local p2    # "offset":J
    .end local p4    # "size":J
    .end local p6    # "headerKeyValuePairs":[Ljava/lang/String;
    .restart local v1    # "url":Ljava/lang/String;
    .restart local v2    # "offset":J
    .restart local v4    # "size":J
    .restart local v6    # "headerKeyValuePairs":[Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist bind(Landroid/os/UpdateEngineCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/os/UpdateEngineCallback;

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public whitelist bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z
    .registers 6
    .param p1, "callback"    # Landroid/os/UpdateEngineCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 267
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    new-instance v1, Landroid/os/UpdateEngine$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/os/UpdateEngine$1;-><init>(Landroid/os/UpdateEngine;Landroid/os/Handler;Landroid/os/UpdateEngineCallback;)V

    iput-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    .line 299
    :try_start_a
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    iget-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    invoke-interface {v1, v2}, Landroid/os/IUpdateEngine;->bind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_14
    .catchall {:try_start_a .. :try_end_12} :catchall_1a

    :try_start_12
    monitor-exit v0

    return v1

    .line 300
    :catch_14
    move-exception v1

    .line 301
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/UpdateEngine;
    .end local p1    # "callback":Landroid/os/UpdateEngineCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 303
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/UpdateEngine;
    .restart local p1    # "callback":Landroid/os/UpdateEngineCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist cancel()V
    .registers 3

    .line 389
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->cancel()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 392
    nop

    .line 393
    return-void

    .line 390
    :catch_7
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist cleanupAppliedPayload()I
    .registers 4

    .line 663
    new-instance v0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;-><init>(Landroid/os/UpdateEngine-IA;)V

    .line 665
    .local v0, "callback":Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;
    :try_start_6
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1, v0}, Landroid/os/IUpdateEngine;->cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V

    .line 666
    invoke-static {v0}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->-$$Nest$mgetResult(Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return v1

    .line 667
    :catch_10
    move-exception v1

    .line 668
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist resetShouldSwitchSlotOnReboot()V
    .registers 3

    .line 463
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resetShouldSwitchSlotOnReboot()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 466
    nop

    .line 467
    return-void

    .line 464
    :catch_7
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resetStatus()V
    .registers 3

    .line 430
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resetStatus()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 433
    nop

    .line 434
    return-void

    .line 431
    :catch_7
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resume()V
    .registers 3

    .line 412
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resume()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 415
    nop

    .line 416
    return-void

    .line 413
    :catch_7
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    .registers 4
    .param p1, "payloadMetadataFilename"    # Ljava/lang/String;

    .line 446
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0, p1}, Landroid/os/IUpdateEngine;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 449
    nop

    .line 450
    return-void

    .line 447
    :catch_7
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist suspend()V
    .registers 3

    .line 401
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->suspend()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 404
    nop

    .line 405
    return-void

    .line 402
    :catch_7
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist triggerPostinstall(Ljava/lang/String;)V
    .registers 4
    .param p1, "partition"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 685
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0, p1}, Landroid/os/IUpdateEngine;->triggerPostinstall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 688
    nop

    .line 689
    return-void

    .line 686
    :catch_7
    move-exception v0

    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unbind()Z
    .registers 4

    .line 473
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    if-nez v1, :cond_a

    .line 475
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    const/4 v0, 0x1

    return v0

    .line 478
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    iget-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    invoke-interface {v1, v2}, Landroid/os/IUpdateEngine;->unbind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1

    .line 479
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_17
    .catchall {:try_start_a .. :try_end_15} :catchall_1d

    .line 480
    :try_start_15
    monitor-exit v0

    return v1

    .line 481
    .end local v1    # "result":Z
    :catch_17
    move-exception v1

    .line 482
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/UpdateEngine;
    throw v2

    .line 484
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/UpdateEngine;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist verifyPayloadMetadata(Ljava/lang/String;)Z
    .registers 4
    .param p1, "payloadMetadataFilename"    # Ljava/lang/String;

    .line 498
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0, p1}, Landroid/os/IUpdateEngine;->verifyPayloadApplicable(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 499
    :catch_7
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
