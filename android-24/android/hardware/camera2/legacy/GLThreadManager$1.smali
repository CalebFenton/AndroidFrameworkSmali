.class Landroid/hardware/camera2/legacy/GLThreadManager$1;
.super Ljava/lang/Object;
.source "GLThreadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/GLThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private mConfigured:Z

.field private mDroppingFrames:Z

.field final synthetic this$0:Landroid/hardware/camera2/legacy/GLThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/GLThreadManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/GLThreadManager;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 73
    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 74
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    #@8
    .line 75
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    #@a
    .line 76
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    #@c
    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 81
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 82
    return v5

    #@6
    .line 85
    :cond_0
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    #@8
    packed-switch v2, :pswitch_data_0

    #@b
    .line 122
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@d
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->-get0(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Unhandled message "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    iget v4, p1, Landroid/os/Message;->what:I

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, " on GLThread."

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 129
    :goto_0
    :pswitch_1
    return v5

    #@32
    .line 87
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34
    check-cast v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;

    #@36
    .line 88
    .local v0, "configure":Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@38
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->-get3(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->cleanupEGLContext()V

    #@3f
    .line 89
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@41
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->-get3(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    #@44
    move-result-object v2

    #@45
    iget-object v3, v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    #@47
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureSurfaces(Ljava/util/Collection;)V

    #@4a
    .line 90
    iget-object v3, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@4c
    iget-object v2, v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->collector:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@4e
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v2

    #@52
    check-cast v2, Landroid/hardware/camera2/legacy/CaptureCollector;

    #@54
    invoke-static {v3, v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->-set0(Landroid/hardware/camera2/legacy/GLThreadManager;Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@57
    .line 91
    iget-object v2, v0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    #@59
    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    #@5c
    .line 92
    const/4 v2, 0x1

    #@5d
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    goto :goto_0

    #@60
    .line 125
    .end local v0    # "configure":Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
    :catch_0
    move-exception v1

    #@61
    .line 126
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@63
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->-get0(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    const-string/jumbo v3, "Received exception on GL render thread: "

    #@6a
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    .line 127
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@6f
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->-get2(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@76
    goto :goto_0

    #@77
    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_1
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    #@79
    if-eqz v2, :cond_1

    #@7b
    .line 96
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@7d
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->-get0(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    const-string/jumbo v3, "Ignoring frame."

    #@84
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    goto :goto_0

    #@88
    .line 102
    :cond_1
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    #@8a
    if-nez v2, :cond_2

    #@8c
    .line 103
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@8e
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->-get0(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;

    #@91
    move-result-object v2

    #@92
    const-string/jumbo v3, "Dropping frame, EGL context not configured!"

    #@95
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 105
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@9a
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->-get3(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    #@9d
    move-result-object v2

    #@9e
    iget-object v3, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@a0
    invoke-static {v3}, Landroid/hardware/camera2/legacy/GLThreadManager;->-get1(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@a3
    move-result-object v3

    #@a4
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->drawIntoSurfaces(Landroid/hardware/camera2/legacy/CaptureCollector;)V

    #@a7
    goto :goto_0

    #@a8
    .line 108
    :pswitch_4
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@aa
    invoke-static {v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->-get3(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->cleanupEGLContext()V

    #@b1
    .line 109
    const/4 v2, 0x1

    #@b2
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mCleanup:Z

    #@b4
    .line 110
    const/4 v2, 0x0

    #@b5
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mConfigured:Z

    #@b7
    goto/16 :goto_0

    #@b9
    .line 113
    :pswitch_5
    const/4 v2, 0x1

    #@ba
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z

    #@bc
    goto/16 :goto_0

    #@be
    .line 116
    :pswitch_6
    const/4 v2, 0x0

    #@bf
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$1;->mDroppingFrames:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@c1
    goto/16 :goto_0

    #@c3
    .line 85
    nop

    #@c4
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
