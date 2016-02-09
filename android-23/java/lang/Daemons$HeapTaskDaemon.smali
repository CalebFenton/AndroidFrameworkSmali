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
.field private static final INSTANCE:Ljava/lang/Daemons$HeapTaskDaemon;


# direct methods
.method static synthetic -get0()Ljava/lang/Daemons$HeapTaskDaemon;
    .locals 1

    #@0
    sget-object v0, Ljava/lang/Daemons$HeapTaskDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTaskDaemon;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 333
    new-instance v0, Ljava/lang/Daemons$HeapTaskDaemon;

    #@2
    invoke-direct {v0}, Ljava/lang/Daemons$HeapTaskDaemon;-><init>()V

    #@5
    sput-object v0, Ljava/lang/Daemons$HeapTaskDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTaskDaemon;

    #@7
    .line 332
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 336
    const-string/jumbo v0, "HeapTaskDaemon"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    #@6
    .line 335
    return-void
.end method


# virtual methods
.method public declared-synchronized interrupt(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 341
    :try_start_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->stopHeapTaskProcessor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 340
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 345
    monitor-enter p0

    #@1
    .line 346
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Daemons$HeapTaskDaemon;->isRunning()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 351
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startHeapTaskProcessor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 355
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runHeapTasks()V

    #@16
    .line 344
    return-void

    #@17
    .line 345
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method
