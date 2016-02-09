.class Ljava/lang/Daemons$FinalizerDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;


# instance fields
.field private volatile finalizingObject:Ljava/lang/Object;

.field private volatile finalizingStartedNanos:J

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Daemons$FinalizerDaemon;
    .locals 1

    #@0
    sget-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/lang/Daemons$FinalizerDaemon;)J
    .locals 2

    #@0
    iget-wide v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingStartedNanos:J

    #@2
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 172
    new-instance v0, Ljava/lang/Daemons$FinalizerDaemon;

    #@2
    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerDaemon;-><init>()V

    #@5
    sput-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    #@7
    .line 171
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 178
    const-string/jumbo v0, "FinalizerDaemon"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    #@6
    .line 173
    sget-object v0, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@8
    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    #@a
    .line 177
    return-void
.end method

.method private doFinalize(Ljava/lang/ref/FinalizerReference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/FinalizerReference",
            "<*>;)V"
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "FI_EXPLICIT_INVOCATION"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "reference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    const/4 v4, 0x0

    #@1
    .line 193
    invoke-static {p1}, Ljava/lang/ref/FinalizerReference;->remove(Ljava/lang/ref/FinalizerReference;)V

    #@4
    .line 194
    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 195
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->clear()V

    #@b
    .line 197
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingStartedNanos:J

    #@11
    .line 198
    iput-object v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    #@13
    .line 199
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@16
    move-result-object v3

    #@17
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@18
    .line 200
    :try_start_1
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    :try_start_2
    monitor-exit v3

    #@20
    .line 202
    invoke-virtual {v1}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    .line 208
    :goto_0
    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    #@25
    .line 192
    return-void

    #@26
    .line 199
    :catchall_0
    move-exception v2

    #@27
    :try_start_3
    monitor-exit v3

    #@28
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@29
    .line 203
    :catch_0
    move-exception v0

    #@2a
    .line 205
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v2, "Uncaught exception thrown by finalizer"

    #@2d
    invoke-static {v2, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@30
    goto :goto_0

    #@31
    .line 206
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    #@32
    .line 208
    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    #@34
    .line 206
    throw v2
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 182
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerDaemon;->isRunning()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 185
    :try_start_0
    iget-object v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    #@8
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/ref/FinalizerReference;

    #@e
    invoke-direct {p0, v1}, Ljava/lang/Daemons$FinalizerDaemon;->doFinalize(Ljava/lang/ref/FinalizerReference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    goto :goto_0

    #@12
    .line 186
    :catch_0
    move-exception v0

    #@13
    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_0

    #@14
    .line 181
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
