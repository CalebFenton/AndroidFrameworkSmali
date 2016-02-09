.class final Ljava/util/Timer$FinalizerHelper;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FinalizerHelper"
.end annotation


# instance fields
.field private final impl:Ljava/util/Timer$TimerImpl;


# direct methods
.method constructor <init>(Ljava/util/Timer$TimerImpl;)V
    .locals 0
    .param p1, "impl"    # Ljava/util/Timer$TimerImpl;

    #@0
    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 327
    iput-object p1, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    #@5
    .line 326
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 332
    :try_start_0
    iget-object v1, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    #@2
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3
    .line 333
    :try_start_1
    iget-object v0, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-static {v0, v2}, Ljava/util/Timer$TimerImpl;->-set0(Ljava/util/Timer$TimerImpl;Z)Z

    #@9
    .line 334
    iget-object v0, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    #@b
    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@f
    .line 337
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@12
    .line 330
    return-void

    #@13
    .line 332
    :catchall_0
    move-exception v0

    #@14
    :try_start_3
    monitor-exit v1

    #@15
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 336
    :catchall_1
    move-exception v0

    #@17
    .line 337
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@1a
    .line 336
    throw v0
.end method
