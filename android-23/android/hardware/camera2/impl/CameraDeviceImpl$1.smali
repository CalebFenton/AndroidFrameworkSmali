.class Landroid/hardware/camera2/impl/CameraDeviceImpl$1;
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
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@0
    .prologue
    .line 122
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 125
    const/4 v0, 0x0

    #@1
    .line 126
    .local v0, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@3
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@8
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v1

    #@c
    if-nez v1, :cond_0

    #@e
    monitor-exit v2

    #@f
    return-void

    #@10
    .line 129
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@12
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get11(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result-object v0

    #@16
    .local v0, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v2

    #@17
    .line 131
    if-eqz v0, :cond_1

    #@19
    .line 132
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@1b
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    #@1e
    .line 134
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@20
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get6(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@26
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    #@29
    .line 124
    return-void

    #@2a
    .line 126
    .local v0, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method
