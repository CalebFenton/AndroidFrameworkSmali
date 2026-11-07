.class final Landroid/app/Instrumentation$Idler;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Idler"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Ljava/lang/Runnable;

.field private greylist-max-o mIdle:Z


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2665
    iput-object p1, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    .line 2666
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    .line 2667
    return-void
.end method


# virtual methods
.method public final whitelist queueIdle()Z
    .registers 2

    .line 2670
    iget-object v0, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 2671
    iget-object v0, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2673
    :cond_9
    monitor-enter p0

    .line 2674
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    .line 2675
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2676
    monitor-exit p0

    .line 2677
    const/4 v0, 0x0

    return v0

    .line 2676
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v0
.end method

.method public greylist-max-o waitForIdle()V
    .registers 2

    .line 2681
    monitor-enter p0

    .line 2682
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    .line 2684
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 2686
    :goto_8
    goto :goto_1

    .line 2685
    :catch_9
    move-exception v0

    goto :goto_8

    .line 2688
    :cond_b
    :try_start_b
    monitor-exit p0

    .line 2689
    return-void

    .line 2688
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0
.end method
