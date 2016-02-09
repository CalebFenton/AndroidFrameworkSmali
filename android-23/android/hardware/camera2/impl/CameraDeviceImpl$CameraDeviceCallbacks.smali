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


# static fields
.field public static final ERROR_CAMERA_BUFFER:I = 0x5

.field public static final ERROR_CAMERA_DEVICE:I = 0x1

.field public static final ERROR_CAMERA_DISCONNECTED:I = 0x0

.field public static final ERROR_CAMERA_REQUEST:I = 0x3

.field public static final ERROR_CAMERA_RESULT:I = 0x4

.field public static final ERROR_CAMERA_SERVICE:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@0
    .prologue
    .line 1600
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    #@5
    return-void
.end method

.method private onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 17
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@0
    .prologue
    .line 1882
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    #@3
    move-result v7

    #@4
    .line 1883
    .local v7, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    #@7
    move-result v11

    #@8
    .line 1884
    .local v11, "subsequenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    #@b
    move-result-wide v8

    #@c
    .line 1886
    .local v8, "frameNumber":J
    move-object/from16 v0, p0

    #@e
    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@10
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    #@13
    move-result-object v12

    #@14
    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v10

    #@18
    check-cast v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@1a
    .line 1888
    .local v10, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    invoke-virtual {v10, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    #@1d
    move-result-object v4

    #@1e
    .line 1891
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    const/4 v12, 0x5

    #@1f
    move/from16 v0, p1

    #@21
    if-ne v0, v12, :cond_0

    #@23
    .line 1892
    move-object/from16 v0, p0

    #@25
    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@27
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    #@2a
    move-result-object v12

    #@2b
    const-string/jumbo v13, "Lost output buffer reported for frame %d"

    #@2e
    const/4 v14, 0x1

    #@2f
    new-array v14, v14, [Ljava/lang/Object;

    #@31
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@34
    move-result-object v15

    #@35
    const/16 v16, 0x0

    #@37
    aput-object v15, v14, v16

    #@39
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v13

    #@3d
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 1893
    return-void

    #@41
    .line 1896
    :cond_0
    const/4 v12, 0x4

    #@42
    move/from16 v0, p1

    #@44
    if-ne v0, v12, :cond_1

    #@46
    const/4 v6, 0x1

    #@47
    .line 1902
    .local v6, "mayHaveBuffers":Z
    :goto_0
    move-object/from16 v0, p0

    #@49
    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@4b
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get5(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    #@4e
    move-result-object v12

    #@4f
    if-eqz v12, :cond_2

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@55
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get5(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    #@58
    move-result-object v12

    #@59
    invoke-interface {v12}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->isAborting()Z

    #@5c
    move-result v12

    #@5d
    if-eqz v12, :cond_2

    #@5f
    .line 1903
    const/4 v5, 0x1

    #@60
    .line 1906
    .local v5, "reason":I
    :goto_1
    new-instance v3, Landroid/hardware/camera2/CaptureFailure;

    #@62
    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJ)V

    #@65
    .line 1913
    .local v3, "failure":Landroid/hardware/camera2/CaptureFailure;
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$5;

    #@67
    move-object/from16 v0, p0

    #@69
    invoke-direct {v2, v0, v10, v4, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    #@6c
    .line 1924
    .local v2, "failureDispatch":Ljava/lang/Runnable;
    invoke-virtual {v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    #@6f
    move-result-object v12

    #@70
    invoke-virtual {v12, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@73
    .line 1930
    move-object/from16 v0, p0

    #@75
    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@77
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@7a
    move-result-object v12

    #@7b
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@7e
    move-result v13

    #@7f
    const/4 v14, 0x1

    #@80
    invoke-virtual {v12, v8, v9, v14, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JZZ)V

    #@83
    .line 1931
    move-object/from16 v0, p0

    #@85
    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@87
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@8a
    .line 1880
    return-void

    #@8b
    .line 1896
    .end local v2    # "failureDispatch":Ljava/lang/Runnable;
    .end local v3    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .end local v5    # "reason":I
    .end local v6    # "mayHaveBuffers":Z
    :cond_1
    const/4 v6, 0x0

    #@8c
    .restart local v6    # "mayHaveBuffers":Z
    goto :goto_0

    #@8d
    .line 1904
    :cond_2
    const/4 v5, 0x0

    #@8e
    .restart local v5    # "reason":I
    goto :goto_1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 1639
    return-object p0
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 12
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J

    #@0
    .prologue
    .line 1702
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    #@3
    move-result v8

    #@4
    .line 1703
    .local v8, "requestId":I
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    #@7
    move-result-wide v6

    #@8
    .line 1710
    .local v6, "frameNumber":J
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@a
    iget-object v9, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@c
    monitor-enter v9

    #@d
    .line 1711
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@f
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_0

    #@15
    monitor-exit v9

    #@16
    return-void

    #@17
    .line 1714
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@19
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 1716
    .local v2, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    if-nez v2, :cond_1

    #@25
    monitor-exit v9

    #@26
    .line 1717
    return-void

    #@27
    .line 1720
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@29
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    monitor-exit v9

    #@30
    return-void

    #@31
    .line 1723
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    #@34
    move-result-object v10

    #@35
    .line 1724
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;

    #@37
    move-object v1, p0

    #@38
    move-object v3, p1

    #@39
    move-wide v4, p2

    #@3a
    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CaptureResultExtras;JJ)V

    #@3d
    .line 1723
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@40
    monitor-exit v9

    #@41
    .line 1701
    return-void

    #@42
    .line 1710
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v9

    #@44
    throw v0
.end method

.method public onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@0
    .prologue
    .line 1651
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 1652
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@7
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v1

    #@b
    if-nez v1, :cond_0

    #@d
    monitor-exit v2

    #@e
    .line 1653
    return-void

    #@f
    .line 1656
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@12
    .line 1661
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@14
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Unknown error from camera device: "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1665
    :pswitch_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@31
    const/4 v3, 0x1

    #@32
    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-set1(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z

    #@35
    .line 1666
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;

    #@37
    invoke-direct {v0, p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;I)V

    #@3a
    .line 1674
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@3c
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    .end local v0    # "r":Ljava/lang/Runnable;
    :goto_0
    monitor-exit v2

    #@44
    .line 1643
    return-void

    #@45
    .line 1658
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@47
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    #@4a
    move-result-object v1

    #@4b
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@4d
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    goto :goto_0

    #@55
    .line 1651
    :catchall_0
    move-exception v1

    #@56
    monitor-exit v2

    #@57
    throw v1

    #@58
    .line 1679
    :pswitch_2
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5b
    goto :goto_0

    #@5c
    .line 1656
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onDeviceIdle()V
    .locals 3

    #@0
    .prologue
    .line 1690
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 1691
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_0

    #@d
    monitor-exit v1

    #@e
    return-void

    #@f
    .line 1693
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@11
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get9(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 1694
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@19
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    #@1c
    move-result-object v0

    #@1d
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@1f
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@26
    .line 1696
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@28
    const/4 v2, 0x1

    #@29
    invoke-static {v0, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-set0(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit v1

    #@2d
    .line 1686
    return-void

    #@2e
    .line 1690
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public onPrepared(I)V
    .locals 5
    .param p1, "streamId"    # I

    #@0
    .prologue
    .line 1861
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    iget-object v4, v3, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 1862
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@7
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get4(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    #@11
    .line 1863
    .local v0, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@13
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get11(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v1

    #@17
    .local v1, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v4

    #@18
    .line 1866
    if-nez v1, :cond_0

    #@1a
    return-void

    #@1b
    .line 1861
    .end local v0    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v1    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit v4

    #@1d
    throw v3

    #@1e
    .line 1868
    .restart local v0    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    .restart local v1    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :cond_0
    if-nez v0, :cond_1

    #@20
    .line 1869
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@22
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "onPrepared invoked for unknown output Surface"

    #@29
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 1870
    return-void

    #@2d
    .line 1872
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    #@30
    move-result-object v2

    #@31
    .line 1874
    .local v2, "surface":Landroid/view/Surface;
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onSurfacePrepared(Landroid/view/Surface;)V

    #@34
    .line 1853
    return-void
.end method

.method public onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 21
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1743
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    #@3
    move-result v17

    #@4
    .line 1744
    .local v17, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    #@7
    move-result-wide v6

    #@8
    .line 1751
    .local v6, "frameNumber":J
    move-object/from16 v0, p0

    #@a
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@c
    iget-object v0, v5, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@e
    move-object/from16 v20, v0

    #@10
    monitor-enter v20

    #@11
    .line 1752
    :try_start_0
    move-object/from16 v0, p0

    #@13
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@15
    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v5

    #@19
    if-nez v5, :cond_0

    #@1b
    monitor-exit v20

    #@1c
    return-void

    #@1d
    .line 1755
    :cond_0
    :try_start_1
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1f
    .line 1756
    move-object/from16 v0, p0

    #@21
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@23
    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;

    #@26
    move-result-object v5

    #@27
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@29
    invoke-virtual {v5, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    check-cast v5, Landroid/util/Size;

    #@2f
    .line 1755
    move-object/from16 v0, p1

    #@31
    invoke-virtual {v0, v12, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@34
    .line 1759
    move-object/from16 v0, p0

    #@36
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@38
    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    #@3b
    move-result-object v5

    #@3c
    move/from16 v0, v17

    #@3e
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@44
    .line 1760
    .local v4, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    #@47
    move-result v5

    #@48
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    #@4b
    move-result-object v13

    #@4c
    .line 1763
    .local v13, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getPartialResultCount()I

    #@4f
    move-result v5

    #@50
    move-object/from16 v0, p0

    #@52
    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@54
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get12(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    #@57
    move-result v12

    #@58
    if-ge v5, v12, :cond_1

    #@5a
    const/4 v9, 0x1

    #@5b
    .line 1764
    .local v9, "isPartialResult":Z
    :goto_0
    invoke-virtual {v13}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@5e
    move-result v10

    #@5f
    .line 1767
    .local v10, "isReprocess":Z
    if-nez v4, :cond_2

    #@61
    .line 1774
    move-object/from16 v0, p0

    #@63
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@65
    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@68
    move-result-object v5

    #@69
    const/4 v8, 0x0

    #@6a
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    monitor-exit v20

    #@6e
    .line 1777
    return-void

    #@6f
    .line 1763
    .end local v9    # "isPartialResult":Z
    .end local v10    # "isReprocess":Z
    :cond_1
    const/4 v9, 0x0

    #@70
    .restart local v9    # "isPartialResult":Z
    goto :goto_0

    #@71
    .line 1780
    .restart local v10    # "isReprocess":Z
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    #@73
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@75
    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    #@78
    move-result v5

    #@79
    if-eqz v5, :cond_3

    #@7b
    .line 1787
    move-object/from16 v0, p0

    #@7d
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@7f
    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@82
    move-result-object v5

    #@83
    const/4 v8, 0x0

    #@84
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@87
    monitor-exit v20

    #@88
    .line 1789
    return-void

    #@89
    .line 1793
    :cond_3
    const/16 v19, 0x0

    #@8b
    .line 1798
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    if-eqz v9, :cond_5

    #@8d
    .line 1800
    :try_start_3
    new-instance v18, Landroid/hardware/camera2/CaptureResult;

    #@8f
    move-object/from16 v0, v18

    #@91
    move-object/from16 v1, p1

    #@93
    move-object/from16 v2, p2

    #@95
    invoke-direct {v0, v1, v13, v2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    #@98
    .line 1803
    .local v18, "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    new-instance v19, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;

    #@9a
    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    move-object/from16 v0, v19

    #@9c
    move-object/from16 v1, p0

    #@9e
    move-object/from16 v2, v18

    #@a0
    invoke-direct {v0, v1, v4, v13, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    #@a3
    .line 1815
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    move-object/from16 v8, v18

    #@a5
    .line 1839
    .end local v18    # "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    .local v8, "finalResult":Landroid/hardware/camera2/CaptureResult;
    :goto_1
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    #@a8
    move-result-object v5

    #@a9
    move-object/from16 v0, v19

    #@ab
    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@ae
    .line 1842
    move-object/from16 v0, p0

    #@b0
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@b2
    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@b5
    move-result-object v5

    #@b6
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V

    #@b9
    .line 1846
    if-nez v9, :cond_4

    #@bb
    .line 1847
    move-object/from16 v0, p0

    #@bd
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@bf
    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c2
    :cond_4
    monitor-exit v20

    #@c3
    .line 1741
    return-void

    #@c4
    .line 1818
    .end local v8    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    #@c6
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@c8
    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@cb
    move-result-object v5

    #@cc
    invoke-virtual {v5, v6, v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->popPartialResults(J)Ljava/util/List;

    #@cf
    move-result-object v15

    #@d0
    .line 1820
    .local v15, "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    new-instance v11, Landroid/hardware/camera2/TotalCaptureResult;

    #@d2
    .line 1821
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getSessionId()I

    #@d5
    move-result v16

    #@d6
    move-object/from16 v12, p1

    #@d8
    move-object/from16 v14, p2

    #@da
    .line 1820
    invoke-direct/range {v11 .. v16}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I)V

    #@dd
    .line 1824
    .local v11, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    new-instance v19, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;

    #@df
    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    move-object/from16 v0, v19

    #@e1
    move-object/from16 v1, p0

    #@e3
    invoke-direct {v0, v1, v4, v13, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e6
    .line 1836
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    move-object v8, v11

    #@e7
    .restart local v8    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    goto :goto_1

    #@e8
    .line 1751
    .end local v4    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v8    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v9    # "isPartialResult":Z
    .end local v10    # "isReprocess":Z
    .end local v11    # "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v13    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v15    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    :catchall_0
    move-exception v5

    #@e9
    monitor-exit v20

    #@ea
    throw v5
.end method
