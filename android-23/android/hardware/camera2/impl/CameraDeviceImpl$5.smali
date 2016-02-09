.class Landroid/hardware/camera2/impl/CameraDeviceImpl$5;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mClosedOnce:Z

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@0
    .prologue
    .line 183
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 184
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->mClosedOnce:Z

    #@8
    .line 183
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 188
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->mClosedOnce:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 189
    new-instance v1, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v2, "Don\'t post #onClosed more than once"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v1

    #@d
    .line 191
    :cond_0
    const/4 v0, 0x0

    #@e
    .line 192
    .local v0, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@10
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@12
    monitor-enter v2

    #@13
    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@15
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get11(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v0

    #@19
    .local v0, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v2

    #@1a
    .line 195
    if-eqz v0, :cond_1

    #@1c
    .line 196
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@1e
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    #@21
    .line 198
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@23
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get6(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@29
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    #@2c
    .line 199
    const/4 v1, 0x1

    #@2d
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->mClosedOnce:Z

    #@2f
    .line 187
    return-void

    #@30
    .line 192
    .local v0, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method
