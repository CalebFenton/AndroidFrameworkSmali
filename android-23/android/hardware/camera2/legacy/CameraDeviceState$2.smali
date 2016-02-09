.class Landroid/hardware/camera2/legacy/CameraDeviceState$2;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field final synthetic val$request:Landroid/hardware/camera2/legacy/RequestHolder;

.field final synthetic val$result:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceState;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;
    .param p2, "val$result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "val$request"    # Landroid/hardware/camera2/legacy/RequestHolder;

    #@0
    .prologue
    .line 186
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$2;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@2
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$2;->val$result:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@4
    iput-object p3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$2;->val$request:Landroid/hardware/camera2/legacy/RequestHolder;

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
    .line 189
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$2;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->-get1(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$2;->val$result:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@8
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$2;->val$request:Landroid/hardware/camera2/legacy/RequestHolder;

    #@a
    invoke-interface {v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;->onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V

    #@d
    .line 188
    return-void
.end method
