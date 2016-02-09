.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;
.super Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
.source "CameraCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@0
    .prologue
    .line 433
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "sequenceId"    # I

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-static {v0, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-wrap0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V

    #@5
    .line 442
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-static {v0, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-wrap0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V

    #@5
    .line 436
    return-void
.end method
