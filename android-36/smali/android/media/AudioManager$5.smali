.class Landroid/media/AudioManager$5;
.super Landroid/media/IAudioServerStateDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8470
    iput-object p1, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioServerStateDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchAudioServerStateChange$0(Landroid/media/AudioManager$AudioServerStateCallback;)V
    .registers 1
    .param p0, "cb"    # Landroid/media/AudioManager$AudioServerStateCallback;

    .line 8485
    invoke-virtual {p0}, Landroid/media/AudioManager$AudioServerStateCallback;->onAudioServerUp()V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchAudioServerStateChange$1(Landroid/media/AudioManager$AudioServerStateCallback;)V
    .registers 1
    .param p0, "cb"    # Landroid/media/AudioManager$AudioServerStateCallback;

    .line 8487
    invoke-virtual {p0}, Landroid/media/AudioManager$AudioServerStateCallback;->onAudioServerDown()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchAudioServerStateChange(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 8476
    iget-object v0, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmAudioServerStateCbLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8477
    :try_start_7
    iget-object v1, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmAudioServerStateExec(Landroid/media/AudioManager;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 8478
    .local v1, "exec":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmAudioServerStateCb(Landroid/media/AudioManager;)Landroid/media/AudioManager$AudioServerStateCallback;

    move-result-object v2

    .line 8479
    .local v2, "cb":Landroid/media/AudioManager$AudioServerStateCallback;
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_2e

    .line 8481
    if-eqz v1, :cond_2d

    if-nez v2, :cond_19

    goto :goto_2d

    .line 8484
    :cond_19
    if-eqz p1, :cond_24

    .line 8485
    new-instance v0, Landroid/media/AudioManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Landroid/media/AudioManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioManager$AudioServerStateCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2c

    .line 8487
    :cond_24
    new-instance v0, Landroid/media/AudioManager$5$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Landroid/media/AudioManager$5$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioManager$AudioServerStateCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8489
    :goto_2c
    return-void

    .line 8482
    :cond_2d
    :goto_2d
    return-void

    .line 8479
    .end local v1    # "exec":Ljava/util/concurrent/Executor;
    .end local v2    # "cb":Landroid/media/AudioManager$AudioServerStateCallback;
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method
