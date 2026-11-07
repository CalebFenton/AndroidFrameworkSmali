.class Ljava/util/Timer$ThreadReaper;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadReaper"
.end annotation


# instance fields
.field private final blacklist queue:Ljava/util/TaskQueue;

.field private final blacklist thread:Ljava/util/TimerThread;


# direct methods
.method constructor blacklist <init>(Ljava/util/TaskQueue;Ljava/util/TimerThread;)V
    .registers 3
    .param p1, "queue"    # Ljava/util/TaskQueue;
    .param p2, "thread"    # Ljava/util/TimerThread;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Ljava/util/Timer$ThreadReaper;->queue:Ljava/util/TaskQueue;

    .line 152
    iput-object p2, p0, Ljava/util/Timer$ThreadReaper;->thread:Ljava/util/TimerThread;

    .line 153
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 156
    iget-object v0, p0, Ljava/util/Timer$ThreadReaper;->queue:Ljava/util/TaskQueue;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Ljava/util/Timer$ThreadReaper;->thread:Ljava/util/TimerThread;

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 158
    iget-object v1, p0, Ljava/util/Timer$ThreadReaper;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method
