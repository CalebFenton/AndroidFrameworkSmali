.class Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;
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
.field final synthetic this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field final synthetic val$frameNumber:J

.field final synthetic val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

.field final synthetic val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CaptureResultExtras;JJ)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .param p2, "val$holder"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .param p3, "val$resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p4, "val$timestamp"    # J
    .param p6, "val$frameNumber"    # J

    #@0
    .prologue
    .line 1724
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    #@2
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@4
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@6
    iput-wide p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$timestamp:J

    #@8
    iput-wide p6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$frameNumber:J

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 1727
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    #@2
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@4
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1728
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@c
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@f
    move-result-object v1

    #@10
    .line 1729
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    #@12
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@14
    .line 1730
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@16
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@18
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    #@1f
    move-result-object v3

    #@20
    .line 1731
    iget-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$timestamp:J

    #@22
    iget-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;->val$frameNumber:J

    #@24
    .line 1728
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V

    #@27
    .line 1726
    :cond_0
    return-void
.end method
