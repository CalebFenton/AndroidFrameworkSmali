.class Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/CameraMetadataInfo;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field final synthetic blacklist val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

.field final synthetic blacklist val$request:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic blacklist val$resultAsCapture:Landroid/hardware/camera2/CaptureResult;

.field final synthetic blacklist val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field final synthetic blacklist val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 7
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2658
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iput-object p6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$resultAsCapture:Landroid/hardware/camera2/CaptureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 2661
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 2662
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequestCount()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 2666
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 2668
    .local v1, "resultLocal":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v2, Landroid/hardware/camera2/CaptureResult;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v3, v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 2669
    invoke-virtual {v4, v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 2671
    .local v2, "resultInBatch":Landroid/hardware/camera2/CaptureResult;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v4, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 2673
    invoke-virtual {v5, v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 2671
    invoke-virtual {v3, v4, v5, v2}, Landroid/hardware/camera2/impl/CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2665
    .end local v1    # "resultLocal":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v2    # "resultInBatch":Landroid/hardware/camera2/CaptureResult;
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .end local v0    # "i":I
    :cond_4d
    goto :goto_5f

    .line 2677
    :cond_4e
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$resultAsCapture:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2683
    :cond_5f
    :goto_5f
    return-void
.end method
