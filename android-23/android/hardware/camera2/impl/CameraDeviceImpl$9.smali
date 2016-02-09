.class Landroid/hardware/camera2/impl/CameraDeviceImpl$9;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p2, "val$requestId"    # I
    .param p3, "val$holder"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@0
    .prologue
    .line 762
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    iput p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->val$requestId:I

    #@4
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 765
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 771
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@a
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@d
    move-result-object v0

    #@e
    .line 772
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@10
    .line 773
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->val$requestId:I

    #@12
    .line 771
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V

    #@15
    .line 764
    :cond_0
    return-void
.end method
