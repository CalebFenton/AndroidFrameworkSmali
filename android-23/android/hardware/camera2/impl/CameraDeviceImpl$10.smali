.class Landroid/hardware/camera2/impl/CameraDeviceImpl$10;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

.field final synthetic val$requestId:I

.field final synthetic val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p2, "val$requestId"    # I
    .param p3, "val$holder"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .param p4, "val$requestLastFrameNumbers"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    #@0
    .prologue
    .line 1578
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    iput p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$requestId:I

    #@4
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@6
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 1581
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1588
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@a
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@d
    move-result-object v0

    #@e
    .line 1589
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@10
    .line 1590
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$requestId:I

    #@12
    .line 1591
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    #@14
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastFrameNumber()J

    #@17
    move-result-wide v4

    #@18
    .line 1588
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V

    #@1b
    .line 1580
    :cond_0
    return-void
.end method
