.class Ljava/lang/Daemons$HeapTaskDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeapTaskDaemon"
.end annotation


# static fields
.field private static final greylist-max-o INSTANCE:Ljava/lang/Daemons$HeapTaskDaemon;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$HeapTaskDaemon;
    .registers 1

    sget-object v0, Ljava/lang/Daemons$HeapTaskDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTaskDaemon;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 742
    new-instance v0, Ljava/lang/Daemons$HeapTaskDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$HeapTaskDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$HeapTaskDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTaskDaemon;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 745
    const-string v0, "HeapTaskDaemon"

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    .line 746
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o interrupt(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    monitor-enter p0

    .line 750
    :try_start_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->stopHeapTaskProcessor()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 751
    monitor-exit p0

    return-void

    .line 749
    .end local p0    # "this":Ljava/lang/Daemons$HeapTaskDaemon;
    .end local p1    # "thread":Ljava/lang/Thread;
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public greylist-max-o runInternal()V
    .registers 2

    .line 754
    monitor-enter p0

    .line 755
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Daemons$HeapTaskDaemon;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 760
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startHeapTaskProcessor()V

    .line 762
    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_17

    .line 764
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runHeapTasks()V

    .line 765
    return-void

    .line 762
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
