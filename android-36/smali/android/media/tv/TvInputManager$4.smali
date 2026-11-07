.class Landroid/media/tv/TvInputManager$4;
.super Landroid/media/tv/ITvInputHardwareCallback$Stub;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager;->acquireTvInputHardwareInternal(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager;Ljava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2857
    iput-object p2, p0, Landroid/media/tv/TvInputManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/media/tv/TvInputManager$4;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardwareCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onReleased$0(Landroid/media/tv/TvInputManager$HardwareCallback;)V
    .registers 1
    .param p0, "callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;

    .line 2862
    invoke-virtual {p0}, Landroid/media/tv/TvInputManager$HardwareCallback;->onReleased()V

    return-void
.end method

.method static synthetic blacklist lambda$onStreamConfigChanged$1(Landroid/media/tv/TvInputManager$HardwareCallback;[Landroid/media/tv/TvStreamConfig;)V
    .registers 2
    .param p0, "callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;
    .param p1, "configs"    # [Landroid/media/tv/TvStreamConfig;

    .line 2872
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputManager$HardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V

    return-void
.end method


# virtual methods
.method public blacklist onReleased()V
    .registers 6

    .line 2860
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2862
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/media/tv/TvInputManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/media/tv/TvInputManager$4;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    new-instance v4, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/TvInputManager$HardwareCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 2864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2865
    nop

    .line 2866
    return-void

    .line 2864
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2865
    throw v2
.end method

.method public blacklist onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    .registers 7
    .param p1, "configs"    # [Landroid/media/tv/TvStreamConfig;

    .line 2870
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2872
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/media/tv/TvInputManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/media/tv/TvInputManager$4;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    new-instance v4, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/TvInputManager$HardwareCallback;[Landroid/media/tv/TvStreamConfig;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 2874
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2875
    nop

    .line 2876
    return-void

    .line 2874
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2875
    throw v2
.end method
