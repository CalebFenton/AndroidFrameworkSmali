.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onBusy()V
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get1(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    #@9
    .line 181
    return-void
.end method

.method public onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    #@0
    .prologue
    .line 212
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-static {v1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-wrap0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@5
    move-result-object v0

    #@6
    .line 214
    .local v0, "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@8
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get2(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    #@b
    move-result-object v1

    #@c
    new-instance v2, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;

    #@e
    invoke-direct {v2, p0, p2, p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    #@11
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@14
    .line 211
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/legacy/RequestHolder;J)V
    .locals 8
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "timestamp"    # J

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-static {v0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-wrap0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@5
    move-result-object v3

    #@6
    .line 193
    .local v3, "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@8
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get2(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    #@b
    move-result-object v6

    #@c
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;

    #@e
    move-object v1, p0

    #@f
    move-object v2, p1

    #@10
    move-wide v4, p2

    #@11
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    #@14
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@17
    .line 190
    return-void
.end method

.method public onConfiguring()V
    .locals 0

    #@0
    .prologue
    .line 149
    return-void
.end method

.method public onError(ILandroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    #@0
    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    #@3
    .line 130
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@5
    invoke-static {v1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-wrap0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@8
    move-result-object v0

    #@9
    .line 131
    .local v0, "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@b
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get2(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    #@e
    move-result-object v1

    #@f
    new-instance v2, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;

    #@11
    invoke-direct {v2, p0, p2, p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    #@14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@17
    .line 110
    return-void

    #@18
    .line 122
    .end local v0    # "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :pswitch_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@1a
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get1(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    #@21
    goto :goto_0

    #@22
    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onIdle()V
    .locals 2

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get1(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    #@9
    .line 164
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@b
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get2(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    #@e
    move-result-object v0

    #@f
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$2;

    #@11
    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$2;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;)V

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@17
    .line 157
    return-void
.end method
