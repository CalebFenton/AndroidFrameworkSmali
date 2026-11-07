.class Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field final synthetic blacklist val$frameNumber:J

.field final synthetic blacklist val$hasReadoutTimestamp:Z

.field final synthetic blacklist val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

.field final synthetic blacklist val$readoutTimestamp:J

.field final synthetic blacklist val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

.field final synthetic blacklist val$timestamp:J


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/impl/CaptureCallbackHolder;JJZJ)V
    .registers 11
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2486
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iput-wide p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$timestamp:J

    iput-wide p6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$frameNumber:J

    iput-boolean p8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$hasReadoutTimestamp:Z

    iput-wide p9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$readoutTimestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 18

    .line 2489
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v1

    if-nez v1, :cond_bb

    .line 2490
    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v1

    .line 2491
    .local v1, "subsequenceId":I
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 2493
    .local v5, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 2496
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2497
    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 2498
    .local v2, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequestCount()I

    move-result v4

    if-ge v3, v4, :cond_94

    .line 2499
    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v6

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v7, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 2501
    invoke-virtual {v4, v3}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    iget-wide v9, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$timestamp:J

    sub-int v4, v1, v3

    int-to-long v11, v4

    const-wide/32 v13, 0x3b9aca00

    mul-long/2addr v11, v13

    .line 2503
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide v15, v13

    int-to-long v13, v4

    div-long/2addr v11, v13

    sub-long/2addr v9, v11

    iget-wide v11, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$frameNumber:J

    sub-int v4, v1, v3

    int-to-long v13, v4

    sub-long/2addr v11, v13

    .line 2499
    invoke-virtual/range {v6 .. v12}, Landroid/hardware/camera2/impl/CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2505
    iget-boolean v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$hasReadoutTimestamp:Z

    if-eqz v4, :cond_91

    .line 2506
    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v6

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v7, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 2508
    invoke-virtual {v4, v3}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    iget-wide v9, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$readoutTimestamp:J

    sub-int v4, v1, v3

    int-to-long v11, v4

    mul-long/2addr v11, v15

    .line 2510
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v13, v4

    div-long/2addr v11, v13

    sub-long/2addr v9, v11

    iget-wide v11, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$frameNumber:J

    sub-int v4, v1, v3

    int-to-long v13, v4

    sub-long/2addr v11, v13

    .line 2506
    invoke-virtual/range {v6 .. v12}, Landroid/hardware/camera2/impl/CaptureCallback;->onReadoutStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2498
    :cond_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 2514
    .end local v2    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    :cond_94
    goto :goto_bb

    .line 2515
    :cond_95
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v3

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v4, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-wide v6, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$timestamp:J

    iget-wide v8, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$frameNumber:J

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/camera2/impl/CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2518
    iget-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$hasReadoutTimestamp:Z

    if-eqz v2, :cond_bb

    .line 2519
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v3

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v4, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-wide v6, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$readoutTimestamp:J

    iget-wide v8, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$frameNumber:J

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/camera2/impl/CaptureCallback;->onReadoutStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2525
    .end local v1    # "subsequenceId":I
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_bb
    :goto_bb
    return-void
.end method
