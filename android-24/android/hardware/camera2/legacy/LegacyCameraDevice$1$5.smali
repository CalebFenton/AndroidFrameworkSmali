.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$5;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->onRepeatingRequestError(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

.field final synthetic val$lastFrameNumber:J


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;J)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;
    .param p2, "val$lastFrameNumber"    # J

    #@0
    .prologue
    .line 248
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$5;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    #@2
    iput-wide p2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$5;->val$lastFrameNumber:J

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$5;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    #@2
    iget-object v1, v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@4
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@7
    move-result-object v1

    #@8
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$5;->val$lastFrameNumber:J

    #@a
    invoke-interface {v1, v2, v3}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onRepeatingRequestError(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 250
    return-void

    #@e
    .line 256
    :catch_0
    move-exception v0

    #@f
    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@11
    .line 258
    const-string/jumbo v2, "Received remote exception during onRepeatingRequestError callback: "

    #@14
    .line 257
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@17
    throw v1
.end method
