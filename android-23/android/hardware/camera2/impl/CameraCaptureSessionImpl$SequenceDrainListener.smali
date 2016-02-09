.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;
.super Ljava/lang/Object;
.source "CameraCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SequenceDrainListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@0
    .prologue
    .line 629
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    #@3
    return-void
.end method


# virtual methods
.method public onDrained()V
    .locals 2

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get6(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@8
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    #@b
    .line 651
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@d
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get5(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 652
    return-void

    #@14
    .line 655
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@16
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->beginDrain()V

    #@1d
    .line 631
    return-void
.end method
