.class Landroid/hardware/camera2/impl/CameraDeviceImpl$8;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic val$code:I

.field final synthetic val$isError:Z


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p2, "val$isError"    # Z
    .param p3, "val$code"    # I

    #@0
    .prologue
    .line 312
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    iput-boolean p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$isError:Z

    #@4
    iput p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$code:I

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
    .line 315
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$isError:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 316
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@6
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get6(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@c
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$code:I

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    #@11
    .line 314
    :goto_0
    return-void

    #@12
    .line 318
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@14
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get6(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@1a
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    #@1d
    goto :goto_0
.end method
