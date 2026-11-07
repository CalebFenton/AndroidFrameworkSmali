.class public Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
.super Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceCallbacks"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2374
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    return-void
.end method

.method private blacklist readMetadata([Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .registers 13
    .param p1, "srcPhysicalResults"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    .line 2534
    array-length v0, p1

    new-array v0, v0, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    .line 2536
    .local v0, "retVal":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    const/4 v1, 0x0

    .line 2537
    .local v1, "i":I
    const-wide/16 v2, 0x0

    .line 2538
    .local v2, "fmqSize":J
    array-length v4, p1

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_44

    aget-object v6, p1, v5

    .line 2539
    .local v6, "srcPhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    const/4 v7, 0x0

    .line 2540
    .local v7, "physicalCameraMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraMetadataInfo()Landroid/hardware/camera2/CameraMetadataInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraMetadataInfo;->getTag()I

    move-result v8

    if-nez v8, :cond_2f

    .line 2542
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraMetadataInfo()Landroid/hardware/camera2/CameraMetadataInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraMetadataInfo;->getFmqSize()J

    move-result-wide v2

    .line 2543
    new-instance v8, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFMQReader(Landroid/hardware/camera2/impl/CameraDeviceImpl;)J

    move-result-wide v9

    .line 2544
    invoke-static {v9, v10, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$smnativeReadResultMetadata(JJ)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(J)V

    .end local v7    # "physicalCameraMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v8, "physicalCameraMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_33

    .line 2546
    .end local v8    # "physicalCameraMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v7    # "physicalCameraMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_2f
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v8

    .line 2548
    .end local v7    # "physicalCameraMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v8    # "physicalCameraMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_33
    new-instance v7, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    .line 2550
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, v8}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 2551
    .local v7, "physicalResultInfo":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    aput-object v7, v0, v1

    .line 2552
    nop

    .end local v6    # "srcPhysicalResult":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v7    # "physicalResultInfo":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v8    # "physicalCameraMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    add-int/lit8 v1, v1, 0x1

    .line 2538
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 2554
    :cond_44
    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 2378
    return-object p0
.end method

.method public greylist-max-o onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .registers 27
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J

    .line 2434
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v11

    .line 2435
    .local v11, "requestId":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v6

    .line 2436
    .local v6, "frameNumber":J
    nop

    .line 2437
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedRegularFrameNumber()J

    move-result-wide v13

    .line 2438
    .local v13, "lastCompletedRegularFrameNumber":J
    nop

    .line 2439
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedReprocessFrameNumber()J

    move-result-wide v15

    .line 2440
    .local v15, "lastCompletedReprocessFrameNumber":J
    nop

    .line 2441
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedZslFrameNumber()J

    move-result-wide v17

    .line 2442
    .local v17, "lastCompletedZslFrameNumber":J
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp()Z

    move-result v8

    .line 2443
    .local v8, "hasReadoutTimestamp":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getReadoutTimestamp()J

    move-result-wide v9

    .line 2455
    .local v9, "readoutTimestamp":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2456
    :try_start_26
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_ab

    if-nez v0, :cond_36

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_30

    return-void

    .line 2530
    :catchall_30
    move-exception v0

    :goto_31
    move-object v12, v2

    move/from16 v21, v11

    goto/16 :goto_af

    .line 2461
    :cond_36
    :try_start_36
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_ab

    if-eqz v0, :cond_57

    .line 2462
    :try_start_3e
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v0
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_51

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    :try_start_4c
    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    .line 2464
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_30

    return-void

    .line 2530
    :catchall_51
    move-exception v0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    goto :goto_31

    .line 2470
    :cond_57
    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    :try_start_5b
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static/range {v12 .. v18}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mremoveCompletedCallbackHolderLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;JJJ)V

    .line 2474
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :try_end_6c
    .catchall {:try_start_5b .. :try_end_6c} :catchall_ab

    move-object v12, v0

    .line 2476
    .local v12, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    if-nez v12, :cond_71

    .line 2477
    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_30

    return-void

    .line 2480
    :cond_71
    :try_start_71
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_ab

    if-eqz v0, :cond_7b

    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_30

    return-void

    .line 2483
    :cond_7b
    :try_start_7b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_ab

    .line 2485
    .local v19, "ident":J
    :try_start_7f
    invoke-virtual {v12}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    move-object/from16 v21, v0

    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_a1

    move-object/from16 v22, v12

    move-object v12, v2

    move-object v2, v3

    move-object/from16 v3, v22

    move-object/from16 v22, v21

    move/from16 v21, v11

    move-object/from16 v11, v22

    .end local v11    # "requestId":I
    .end local v12    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v3, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v21, "requestId":I
    :try_start_93
    invoke-direct/range {v0 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/impl/CaptureCallbackHolder;JJZJ)V

    invoke-interface {v11, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_99
    .catchall {:try_start_93 .. :try_end_99} :catchall_9f

    .line 2528
    :try_start_99
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2529
    nop

    .line 2530
    .end local v19    # "ident":J
    monitor-exit v12

    .line 2531
    return-void

    .line 2528
    .restart local v19    # "ident":J
    :catchall_9f
    move-exception v0

    goto :goto_a6

    .end local v3    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v21    # "requestId":I
    .restart local v11    # "requestId":I
    .restart local v12    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :catchall_a1
    move-exception v0

    move/from16 v21, v11

    move-object v3, v12

    move-object v12, v2

    .end local v11    # "requestId":I
    .end local v12    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v3    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v21    # "requestId":I
    :goto_a6
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2529
    nop

    .end local v6    # "frameNumber":J
    .end local v8    # "hasReadoutTimestamp":Z
    .end local v9    # "readoutTimestamp":J
    .end local v13    # "lastCompletedRegularFrameNumber":J
    .end local v15    # "lastCompletedReprocessFrameNumber":J
    .end local v17    # "lastCompletedZslFrameNumber":J
    .end local v21    # "requestId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .end local p1    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local p2    # "timestamp":J
    throw v0

    .line 2530
    .end local v3    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v19    # "ident":J
    .restart local v6    # "frameNumber":J
    .restart local v8    # "hasReadoutTimestamp":Z
    .restart local v9    # "readoutTimestamp":J
    .restart local v11    # "requestId":I
    .restart local v13    # "lastCompletedRegularFrameNumber":J
    .restart local v15    # "lastCompletedReprocessFrameNumber":J
    .restart local v17    # "lastCompletedZslFrameNumber":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .restart local p1    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .restart local p2    # "timestamp":J
    :catchall_ab
    move-exception v0

    move-object v12, v2

    move/from16 v21, v11

    .end local v11    # "requestId":I
    .restart local v21    # "requestId":I
    :goto_af
    monitor-exit v12
    :try_end_b0
    .catchall {:try_start_99 .. :try_end_b0} :catchall_b1

    throw v0

    :catchall_b1
    move-exception v0

    goto :goto_af
.end method

.method public blacklist onClientSharedAccessPriorityChanged(Z)V
    .registers 3
    .param p1, "primaryClient"    # Z

    .line 2760
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->onClientSharedAccessPriorityChanged(Z)V

    .line 2761
    return-void
.end method

.method public greylist-max-o onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 2383
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 2384
    return-void
.end method

.method public greylist-max-o onDeviceIdle()V
    .registers 2

    .line 2429
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->onDeviceIdle()V

    .line 2430
    return-void
.end method

.method public greylist-max-o onPrepared(I)V
    .registers 7
    .param p1, "streamId"    # I

    .line 2772
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2775
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 2776
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onPrepared(I)V

    .line 2777
    monitor-exit v0

    return-void

    .line 2780
    :cond_1c
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmConfiguredOutputs(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 2781
    .local v1, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v2

    .line 2782
    .local v2, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_59

    .line 2784
    if-nez v2, :cond_32

    return-void

    .line 2786
    :cond_32
    if-nez v1, :cond_40

    .line 2787
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "onPrepared invoked for unknown output Surface"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    return-void

    .line 2790
    :cond_40
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v0

    .line 2791
    .local v0, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 2792
    .local v4, "surface":Landroid/view/Surface;
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onSurfacePrepared(Landroid/view/Surface;)V

    .line 2793
    .end local v4    # "surface":Landroid/view/Surface;
    goto :goto_48

    .line 2794
    :cond_58
    return-void

    .line 2782
    .end local v0    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v1    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v2    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public greylist-max-o onRepeatingRequestError(JI)V
    .registers 10
    .param p1, "lastFrameNumber"    # J
    .param p3, "repeatingRequestId"    # I

    .line 2393
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2395
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_54

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ne v1, v3, :cond_18

    goto :goto_54

    .line 2411
    :cond_18
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 2412
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onRepeatingRequestError(JI)V

    .line 2414
    monitor-exit v0

    return-void

    .line 2417
    :cond_2f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I

    move-result-object v5

    invoke-static {v1, v4, p1, p2, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mcheckEarlyTriggerSequenceCompleteLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ[I)V

    .line 2420
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ne v1, p3, :cond_52

    .line 2421
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V

    .line 2422
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V

    .line 2424
    :cond_52
    monitor-exit v0

    .line 2425
    return-void

    .line 2396
    :cond_54
    :goto_54
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ne v1, p3, :cond_a9

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I

    move-result-object v1

    if-eqz v1, :cond_a9

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 2398
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resuming stop of failed repeating request with id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I

    move-result-object v5

    invoke-static {v1, v4, p1, p2, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mcheckEarlyTriggerSequenceCompleteLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ[I)V

    .line 2403
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V

    .line 2404
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V

    .line 2406
    :cond_a9
    monitor-exit v0

    return-void

    .line 2424
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_5 .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method public greylist-max-o onRequestQueueEmpty()V
    .registers 3

    .line 2804
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2807
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 2808
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onRequestQueueEmpty()V

    .line 2809
    monitor-exit v0

    return-void

    .line 2812
    :cond_1c
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v1

    .line 2813
    .local v1, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_2a

    .line 2815
    if-nez v1, :cond_26

    return-void

    .line 2817
    :cond_26
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onRequestQueueEmpty()V

    .line 2818
    return-void

    .line 2813
    .end local v1    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public blacklist onResultReceived(Landroid/hardware/camera2/CameraMetadataInfo;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .registers 32
    .param p1, "resultInfo"    # Landroid/hardware/camera2/CameraMetadataInfo;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p3, "physicalResults"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2561
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v6

    .line 2562
    .local v6, "requestId":I
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v2

    .line 2563
    .local v2, "frameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2564
    :try_start_11
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_2a6

    if-nez v0, :cond_25

    :try_start_19
    monitor-exit v12
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1b

    return-void

    .line 2754
    :catchall_1b
    move-exception v0

    move-object/from16 v14, p3

    move-object v10, v1

    move-wide/from16 v18, v2

    move/from16 v17, v6

    goto/16 :goto_2ae

    .line 2565
    :cond_25
    move-object/from16 v13, p3

    .line 2567
    .local v13, "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :try_start_27
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraMetadataInfo;->getTag()I

    move-result v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2a6

    if-nez v0, :cond_43

    .line 2568
    :try_start_2d
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFMQReader(Landroid/hardware/camera2/impl/CameraDeviceImpl;)J

    move-result-wide v7

    .line 2570
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraMetadataInfo;->getFmqSize()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$smnativeReadResultMetadata(JJ)J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(J)V
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_1b

    .line 2571
    .local v0, "fmqMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    nop

    .line 2572
    .local v0, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object v14, v0

    goto :goto_48

    .line 2573
    .end local v0    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_43
    :try_start_43
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraMetadataInfo;->getMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    move-object v14, v0

    .line 2575
    .local v14, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_48
    invoke-direct {v1, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->readMetadata([Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-result-object v7
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_2a6

    move-object v15, v7

    .line 2583
    .end local p3    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .local v15, "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :try_start_4d
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_29e

    if-eqz v0, :cond_71

    .line 2584
    :try_start_55
    invoke-static {v14}, Landroid/hardware/camera2/CameraMetadataInfo;->metadata(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/CameraMetadataInfo;

    move-result-object v0

    .line 2585
    .local v0, "resultInfoOffline":Landroid/hardware/camera2/CameraMetadataInfo;
    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v5

    invoke-virtual {v5, v0, v4, v15}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/CameraMetadataInfo;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 2588
    monitor-exit v12
    :try_end_67
    .catchall {:try_start_55 .. :try_end_67} :catchall_68

    return-void

    .line 2754
    .end local v0    # "resultInfoOffline":Landroid/hardware/camera2/CameraMetadataInfo;
    .end local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v14    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_68
    move-exception v0

    move-object v10, v1

    move-wide/from16 v18, v2

    move/from16 v17, v6

    move-object v14, v15

    goto/16 :goto_2ae

    .line 2592
    .restart local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v14    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_71
    :try_start_71
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2593
    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mgetCharacteristics(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 2592
    invoke-virtual {v14, v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 2594
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mgetPhysicalIdToChars(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/util/Map;

    move-result-object v0

    move-object v5, v0

    .line 2595
    .local v5, "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    array-length v0, v15
    :try_end_8c
    .catchall {:try_start_71 .. :try_end_8c} :catchall_29e

    const/4 v8, 0x0

    :goto_8d
    if-ge v8, v0, :cond_f0

    :try_start_8f
    aget-object v9, v15, v8

    .line 2596
    .local v9, "oneResultInfo":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v10

    .line 2597
    .local v10, "physicalId":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v11

    .line 2598
    .local v11, "physicalResult":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 p3, v16

    .line 2599
    .local p3, "ch":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz p3, :cond_b7

    .line 2600
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move/from16 v17, v0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    :try_end_a9
    .catchall {:try_start_8f .. :try_end_a9} :catchall_e7

    .line 2601
    move-wide/from16 v18, v2

    move-object/from16 v2, p3

    .end local p3    # "ch":Landroid/hardware/camera2/CameraCharacteristics;
    .local v2, "ch":Landroid/hardware/camera2/CameraCharacteristics;
    .local v18, "frameNumber":J
    :try_start_ad
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 2600
    invoke-virtual {v11, v7, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    goto :goto_d9

    .line 2603
    .end local v18    # "frameNumber":J
    .local v2, "frameNumber":J
    .restart local p3    # "ch":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_b7
    move/from16 v17, v0

    move-wide/from16 v18, v2

    move-object/from16 v2, p3

    .end local p3    # "ch":Landroid/hardware/camera2/CameraCharacteristics;
    .local v2, "ch":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v18    # "frameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find characteristics for physical camera "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_ad .. :try_end_d9} :catchall_e0

    .line 2595
    .end local v2    # "ch":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v9    # "oneResultInfo":Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v10    # "physicalId":Ljava/lang/String;
    .end local v11    # "physicalResult":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_d9
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v17

    move-wide/from16 v2, v18

    goto :goto_8d

    .line 2754
    .end local v5    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v14    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_e0
    move-exception v0

    move-object v10, v1

    move/from16 v17, v6

    move-object v14, v15

    goto/16 :goto_2ae

    .end local v18    # "frameNumber":J
    .local v2, "frameNumber":J
    :catchall_e7
    move-exception v0

    move-wide/from16 v18, v2

    move-object v10, v1

    move/from16 v17, v6

    move-object v14, v15

    .end local v2    # "frameNumber":J
    .restart local v18    # "frameNumber":J
    goto/16 :goto_2ae

    .line 2608
    .end local v18    # "frameNumber":J
    .restart local v2    # "frameNumber":J
    .restart local v5    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v14    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_f0
    move-wide/from16 v18, v2

    .end local v2    # "frameNumber":J
    .restart local v18    # "frameNumber":J
    :try_start_f2
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2609
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 2611
    .local v2, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    nop

    .line 2612
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getPartialResultCount()I

    move-result v0

    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmTotalPartialCount(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v3
    :try_end_10a
    .catchall {:try_start_f2 .. :try_end_10a} :catchall_298

    if-ge v0, v3, :cond_10f

    const/4 v7, 0x1

    move v11, v7

    goto :goto_110

    :cond_10f
    const/4 v11, 0x0

    .line 2615
    .local v11, "isPartialResult":Z
    :goto_110
    if-nez v2, :cond_114

    .line 2622
    :try_start_112
    monitor-exit v12
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_e0

    return-void

    .line 2625
    :cond_114
    :try_start_114
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 2626
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v9

    .line 2627
    .local v9, "requestType":I
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0
    :try_end_126
    .catchall {:try_start_114 .. :try_end_126} :catchall_298

    if-eqz v0, :cond_14f

    .line 2634
    move-object v7, v5

    .end local v5    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .local v7, "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    :try_start_129
    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :try_end_12b
    .catchall {:try_start_129 .. :try_end_12b} :catchall_146

    const/4 v10, 0x0

    move-object/from16 v16, v7

    move-wide/from16 v7, v18

    .end local v18    # "frameNumber":J
    .local v7, "frameNumber":J
    .local v16, "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    :try_start_130
    invoke-static/range {v5 .. v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mupdateTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJILandroid/hardware/camera2/CaptureResult;Z)V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_13c

    move/from16 v17, v6

    move/from16 v19, v9

    move/from16 v18, v11

    move-wide v8, v7

    .line 2637
    .end local v6    # "requestId":I
    .end local v7    # "frameNumber":J
    .end local v9    # "requestType":I
    .end local v11    # "isPartialResult":Z
    .local v8, "frameNumber":J
    .local v17, "requestId":I
    .local v18, "isPartialResult":Z
    .local v19, "requestType":I
    :try_start_13a
    monitor-exit v12
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_16a

    return-void

    .line 2754
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v8    # "frameNumber":J
    .end local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v14    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v16    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v17    # "requestId":I
    .end local v18    # "isPartialResult":Z
    .end local v19    # "requestType":I
    .restart local v6    # "requestId":I
    .restart local v7    # "frameNumber":J
    :catchall_13c
    move-exception v0

    move/from16 v17, v6

    move-wide v8, v7

    move-object v10, v1

    move-wide/from16 v18, v8

    move-object v14, v15

    .end local v6    # "requestId":I
    .end local v7    # "frameNumber":J
    .restart local v8    # "frameNumber":J
    .restart local v17    # "requestId":I
    goto/16 :goto_2ae

    .end local v8    # "frameNumber":J
    .end local v17    # "requestId":I
    .restart local v6    # "requestId":I
    .local v18, "frameNumber":J
    :catchall_146
    move-exception v0

    move/from16 v17, v6

    move-wide/from16 v8, v18

    move-object v10, v1

    move-object v14, v15

    .end local v6    # "requestId":I
    .end local v18    # "frameNumber":J
    .restart local v8    # "frameNumber":J
    .restart local v17    # "requestId":I
    goto/16 :goto_2ae

    .line 2641
    .end local v8    # "frameNumber":J
    .end local v17    # "requestId":I
    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v6    # "requestId":I
    .restart local v9    # "requestType":I
    .restart local v11    # "isPartialResult":Z
    .restart local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v14    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v18    # "frameNumber":J
    :cond_14f
    move-wide/from16 v16, v18

    move/from16 v19, v9

    move-wide/from16 v8, v16

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v11

    .end local v5    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v6    # "requestId":I
    .end local v9    # "requestType":I
    .end local v11    # "isPartialResult":Z
    .restart local v8    # "frameNumber":J
    .restart local v16    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v17    # "requestId":I
    .local v18, "isPartialResult":Z
    .restart local v19    # "requestType":I
    const/16 v20, 0x0

    .line 2647
    .local v20, "resultDispatch":Ljava/lang/Runnable;
    :try_start_15d
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v0
    :try_end_161
    .catchall {:try_start_15d .. :try_end_161} :catchall_292

    if-eqz v0, :cond_171

    .line 2648
    :try_start_163
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    move-object v5, v0

    .local v0, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_173

    .line 2754
    .end local v0    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v14    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v16    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v18    # "isPartialResult":Z
    .end local v19    # "requestType":I
    .end local v20    # "resultDispatch":Ljava/lang/Runnable;
    :catchall_16a
    move-exception v0

    move-object v10, v1

    move-wide/from16 v18, v8

    move-object v14, v15

    goto/16 :goto_2ae

    .line 2650
    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v14    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v16    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v18    # "isPartialResult":Z
    .restart local v19    # "requestType":I
    .restart local v20    # "resultDispatch":Ljava/lang/Runnable;
    :cond_171
    const/4 v0, 0x0

    move-object v5, v0

    .line 2654
    .local v5, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_173
    if-eqz v18, :cond_19e

    .line 2655
    new-instance v6, Landroid/hardware/camera2/CaptureResult;

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2656
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v14, v3, v4}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 2658
    .local v6, "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;

    move-object/from16 v26, v5

    move-object v5, v3

    move-object/from16 v3, v26

    .local v3, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v5, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    :try_end_18a
    .catchall {:try_start_163 .. :try_end_18a} :catchall_16a

    move-object v10, v1

    move-object v11, v2

    move-object/from16 v21, v3

    move-object v3, v5

    .line 2685
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v20    # "resultDispatch":Ljava/lang/Runnable;
    .local v0, "resultDispatch":Ljava/lang/Runnable;
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v11, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v21, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    nop

    .line 2686
    .local v6, "finalResult":Landroid/hardware/camera2/CaptureResult;
    move-wide/from16 v26, v8

    move-object/from16 v8, v21

    move-wide/from16 v21, v26

    move-object v5, v15

    move-object v15, v14

    move-object v14, v5

    move-object v9, v0

    move-object v7, v3

    move-object v5, v6

    goto/16 :goto_245

    .line 2687
    .end local v0    # "resultDispatch":Ljava/lang/Runnable;
    .end local v6    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v11    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v21    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v5, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v20    # "resultDispatch":Ljava/lang/Runnable;
    :cond_19e
    move-object v10, v1

    move-object v11, v2

    move-object/from16 v21, v5

    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v5    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v11    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v21    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_1a2
    iget-object v0, v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-result-object v0

    .line 2688
    invoke-virtual {v0, v8, v9}, Landroid/hardware/camera2/impl/FrameNumberTracker;->popPartialResults(J)Ljava/util/List;

    move-result-object v5

    .line 2689
    .local v5, "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    iget-object v0, v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmBatchOutputMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1ba
    .catchall {:try_start_1a2 .. :try_end_1ba} :catchall_290

    if-eqz v0, :cond_1ea

    .line 2690
    :try_start_1bc
    iget-object v0, v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmBatchOutputMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2691
    .local v0, "requestCount":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1d1
    if-ge v1, v0, :cond_1ea

    .line 2692
    iget-object v2, v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-result-object v2

    sub-int v4, v0, v1

    int-to-long v6, v4

    sub-long v6, v8, v6

    invoke-virtual {v2, v6, v7}, Landroid/hardware/camera2/impl/FrameNumberTracker;->popPartialResults(J)Ljava/util/List;
    :try_end_1e1
    .catchall {:try_start_1bc .. :try_end_1e1} :catchall_1e4

    .line 2691
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d1

    .line 2754
    .end local v0    # "requestCount":I
    .end local v1    # "i":I
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .end local v11    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v14    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v16    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v18    # "isPartialResult":Z
    .end local v19    # "requestType":I
    .end local v20    # "resultDispatch":Ljava/lang/Runnable;
    .end local v21    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_1e4
    move-exception v0

    move-wide/from16 v18, v8

    move-object v14, v15

    goto/16 :goto_2ae

    .line 2696
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .restart local v11    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v14    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v16    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v18    # "isPartialResult":Z
    .restart local v19    # "requestType":I
    .restart local v20    # "resultDispatch":Ljava/lang/Runnable;
    .restart local v21    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_1ea
    :try_start_1ea
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2697
    invoke-virtual {v14, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide/from16 v22, v0

    .line 2698
    .local v22, "sensorTimestamp":J
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2699
    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/util/Range;

    move-object/from16 v24, v7

    .line 2700
    .local v24, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v6

    move/from16 v25, v6

    .line 2701
    .local v25, "subsequenceId":I
    new-instance v0, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v1, v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2702
    invoke-virtual {v11}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getSessionId()I

    move-result v6
    :try_end_215
    .catchall {:try_start_1ea .. :try_end_215} :catchall_290

    move-object/from16 v4, p2

    move-object v2, v14

    move-object v7, v15

    .end local v14    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v15    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .local v2, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v7, "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :try_start_219
    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    :try_end_21c
    .catchall {:try_start_219 .. :try_end_21c} :catchall_28b

    move-object v15, v2

    move-object v14, v7

    .line 2705
    .end local v2    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v7    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .local v0, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .local v14, "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .local v15, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object v2, v11

    move-object v11, v0

    .end local v0    # "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .local v2, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v11, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    :try_start_220
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;
    :try_end_222
    .catchall {:try_start_220 .. :try_end_222} :catchall_287

    move-object v1, v10

    move-object/from16 v7, v24

    move/from16 v6, v25

    move-object v10, v3

    move-object/from16 v3, v21

    move-wide/from16 v26, v8

    move-object/from16 v8, p2

    move-object v9, v5

    move-wide/from16 v4, v22

    move-wide/from16 v21, v26

    .end local v5    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .end local v8    # "frameNumber":J
    .end local v22    # "sensorTimestamp":J
    .end local v24    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v25    # "subsequenceId":I
    .local v3, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v4, "sensorTimestamp":J
    .local v6, "subsequenceId":I
    .local v7, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v9, "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .local v10, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v21, "frameNumber":J
    :try_start_233
    invoke-direct/range {v0 .. v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;JILandroid/util/Range;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_236
    .catchall {:try_start_233 .. :try_end_236} :catchall_284

    move-object v8, v3

    move-object v3, v11

    move-object v11, v2

    move-object v2, v7

    move-object v7, v10

    move-object v10, v1

    move-wide/from16 v26, v4

    move-object v4, v0

    move-wide/from16 v0, v26

    move-object v5, v9

    .line 2738
    .end local v9    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .end local v10    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v20    # "resultDispatch":Ljava/lang/Runnable;
    .local v0, "sensorTimestamp":J
    .local v2, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v3, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .local v4, "resultDispatch":Ljava/lang/Runnable;
    .restart local v5    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .local v7, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v8, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v11, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    move-object v9, v3

    move-object v5, v9

    move-object v9, v4

    .line 2741
    .end local v0    # "sensorTimestamp":J
    .end local v2    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v4    # "resultDispatch":Ljava/lang/Runnable;
    .end local v6    # "subsequenceId":I
    .local v5, "finalResult":Landroid/hardware/camera2/CaptureResult;
    .local v9, "resultDispatch":Ljava/lang/Runnable;
    :goto_245
    :try_start_245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_249
    .catchall {:try_start_245 .. :try_end_249} :catchall_280

    move-wide/from16 v23, v0

    .line 2743
    .local v23, "ident":J
    :try_start_24b
    invoke-virtual {v11}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_252
    .catchall {:try_start_24b .. :try_end_252} :catchall_274

    .line 2745
    :try_start_252
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2746
    nop

    .line 2748
    iget-object v0, v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :try_end_258
    .catchall {:try_start_252 .. :try_end_258} :catchall_280

    move/from16 v1, v17

    move/from16 v6, v18

    move/from16 v4, v19

    move-wide/from16 v2, v21

    .end local v17    # "requestId":I
    .end local v18    # "isPartialResult":Z
    .end local v19    # "requestType":I
    .end local v21    # "frameNumber":J
    .local v1, "requestId":I
    .local v2, "frameNumber":J
    .local v4, "requestType":I
    .local v6, "isPartialResult":Z
    :try_start_260
    invoke-static/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mupdateTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJILandroid/hardware/camera2/CaptureResult;Z)V
    :try_end_263
    .catchall {:try_start_260 .. :try_end_263} :catchall_26e

    move-wide/from16 v18, v2

    .line 2751
    .end local v1    # "requestId":I
    .end local v2    # "frameNumber":J
    .restart local v17    # "requestId":I
    .local v18, "frameNumber":J
    if-nez v6, :cond_26c

    .line 2752
    :try_start_267
    iget-object v0, v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mcheckAndFireSequenceComplete(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    .line 2754
    .end local v4    # "requestType":I
    .end local v5    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v6    # "isPartialResult":Z
    .end local v7    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v8    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v9    # "resultDispatch":Ljava/lang/Runnable;
    .end local v11    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v15    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v16    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v23    # "ident":J
    :cond_26c
    monitor-exit v12

    .line 2755
    return-void

    .line 2754
    .end local v17    # "requestId":I
    .end local v18    # "frameNumber":J
    .restart local v1    # "requestId":I
    .restart local v2    # "frameNumber":J
    :catchall_26e
    move-exception v0

    move/from16 v17, v1

    move-wide/from16 v18, v2

    .end local v1    # "requestId":I
    .end local v2    # "frameNumber":J
    .restart local v17    # "requestId":I
    .restart local v18    # "frameNumber":J
    goto :goto_2ae

    .line 2745
    .restart local v5    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .restart local v7    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v8    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v9    # "resultDispatch":Ljava/lang/Runnable;
    .restart local v11    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v15    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v16    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .local v18, "isPartialResult":Z
    .restart local v19    # "requestType":I
    .restart local v21    # "frameNumber":J
    .restart local v23    # "ident":J
    :catchall_274
    move-exception v0

    move/from16 v6, v18

    move/from16 v4, v19

    move-wide/from16 v18, v21

    .end local v19    # "requestType":I
    .end local v21    # "frameNumber":J
    .restart local v4    # "requestType":I
    .restart local v6    # "isPartialResult":Z
    .local v18, "frameNumber":J
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2746
    nop

    .end local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v17    # "requestId":I
    .end local v18    # "frameNumber":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .end local p1    # "resultInfo":Landroid/hardware/camera2/CameraMetadataInfo;
    .end local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    throw v0

    .line 2754
    .end local v4    # "requestType":I
    .end local v5    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v6    # "isPartialResult":Z
    .end local v7    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v8    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v9    # "resultDispatch":Ljava/lang/Runnable;
    .end local v11    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v13    # "savedPhysicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v15    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v16    # "physicalIdToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v23    # "ident":J
    .restart local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v17    # "requestId":I
    .restart local v21    # "frameNumber":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .restart local p1    # "resultInfo":Landroid/hardware/camera2/CameraMetadataInfo;
    .restart local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :catchall_280
    move-exception v0

    :goto_281
    move-wide/from16 v18, v21

    .end local v21    # "frameNumber":J
    .restart local v18    # "frameNumber":J
    goto :goto_2ae

    .end local v18    # "frameNumber":J
    .restart local v21    # "frameNumber":J
    :catchall_284
    move-exception v0

    move-object v10, v1

    goto :goto_281

    .end local v21    # "frameNumber":J
    .local v8, "frameNumber":J
    :catchall_287
    move-exception v0

    move-wide/from16 v18, v8

    .end local v8    # "frameNumber":J
    .restart local v18    # "frameNumber":J
    goto :goto_2ae

    .end local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v18    # "frameNumber":J
    .local v7, "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v8    # "frameNumber":J
    :catchall_28b
    move-exception v0

    move-object v14, v7

    move-wide/from16 v18, v8

    .end local v7    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v8    # "frameNumber":J
    .restart local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v18    # "frameNumber":J
    goto :goto_2ae

    .end local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v18    # "frameNumber":J
    .restart local v8    # "frameNumber":J
    .local v15, "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :catchall_290
    move-exception v0

    goto :goto_294

    :catchall_292
    move-exception v0

    move-object v10, v1

    :goto_294
    move-wide/from16 v18, v8

    move-object v14, v15

    .end local v8    # "frameNumber":J
    .end local v15    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v18    # "frameNumber":J
    goto :goto_2ae

    .end local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v17    # "requestId":I
    .local v6, "requestId":I
    .restart local v15    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :catchall_298
    move-exception v0

    move-object v10, v1

    move/from16 v17, v6

    move-object v14, v15

    .end local v6    # "requestId":I
    .end local v15    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v17    # "requestId":I
    goto :goto_2ae

    .end local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v17    # "requestId":I
    .end local v18    # "frameNumber":J
    .restart local v2    # "frameNumber":J
    .restart local v6    # "requestId":I
    .restart local v15    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :catchall_29e
    move-exception v0

    move-object v10, v1

    move-wide/from16 v18, v2

    move/from16 v17, v6

    move-object v14, v15

    .end local v2    # "frameNumber":J
    .end local v6    # "requestId":I
    .end local v15    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v17    # "requestId":I
    .restart local v18    # "frameNumber":J
    goto :goto_2ae

    .end local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .end local v17    # "requestId":I
    .end local v18    # "frameNumber":J
    .restart local v2    # "frameNumber":J
    .restart local v6    # "requestId":I
    .local p3, "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :catchall_2a6
    move-exception v0

    move-object v10, v1

    move-wide/from16 v18, v2

    move/from16 v17, v6

    move-object/from16 v14, p3

    .end local v2    # "frameNumber":J
    .end local v6    # "requestId":I
    .end local p3    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v14    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .restart local v17    # "requestId":I
    .restart local v18    # "frameNumber":J
    :goto_2ae
    monitor-exit v12
    :try_end_2af
    .catchall {:try_start_267 .. :try_end_2af} :catchall_2b0

    throw v0

    :catchall_2b0
    move-exception v0

    goto :goto_2ae
.end method
