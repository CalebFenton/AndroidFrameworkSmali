.class Ljava/util/Timer$1;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Timer;


# direct methods
.method constructor <init>(Ljava/util/Timer;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Timer;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
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
    .line 112
    iget-object v0, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    #@2
    invoke-static {v0}, Ljava/util/Timer;->-get0(Ljava/util/Timer;)Ljava/util/TaskQueue;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 113
    :try_start_0
    iget-object v0, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    #@9
    invoke-static {v0}, Ljava/util/Timer;->-get1(Ljava/util/Timer;)Ljava/util/TimerThread;

    #@c
    move-result-object v0

    #@d
    const/4 v2, 0x0

    #@e
    iput-boolean v2, v0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    #@10
    .line 114
    iget-object v0, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    #@12
    invoke-static {v0}, Ljava/util/Timer;->-get0(Ljava/util/Timer;)Ljava/util/TaskQueue;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/util/TaskQueue;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 111
    return-void

    #@1b
    .line 112
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method
