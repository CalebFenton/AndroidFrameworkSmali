.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;
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
    name = "IdleDrainListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@0
    .prologue
    .line 683
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    #@3
    return-void
.end method


# virtual methods
.method public onDrained()V
    .locals 8

    #@0
    .prologue
    .line 690
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get2(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@5
    move-result-object v2

    #@6
    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@8
    monitor-enter v3

    #@9
    .line 691
    :try_start_0
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@b
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 706
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@e
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get5(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@15
    monitor-exit v3

    #@16
    .line 707
    return-void

    #@17
    .line 714
    :cond_0
    :try_start_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@19
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get2(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@1c
    move-result-object v2

    #@1d
    const/4 v5, 0x0

    #@1e
    const/4 v6, 0x0

    #@1f
    .line 715
    const/4 v7, 0x0

    #@20
    .line 714
    invoke-virtual {v2, v5, v6, v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@23
    :goto_0
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@24
    monitor-exit v3

    #@25
    .line 685
    return-void

    #@26
    .line 716
    :catch_0
    move-exception v0

    #@27
    .line 718
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_5
    const-string/jumbo v2, "CameraCaptureSession"

    #@2a
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@31
    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get3(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    const-string/jumbo v6, "Exception while unconfiguring outputs: "

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@47
    goto :goto_0

    #@48
    .line 691
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catchall_0
    move-exception v2

    #@49
    :try_start_6
    monitor-exit v4

    #@4a
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@4b
    .line 690
    :catchall_1
    move-exception v2

    #@4c
    monitor-exit v3

    #@4d
    throw v2

    #@4e
    .line 721
    :catch_1
    move-exception v1

    #@4f
    .local v1, "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method
