.class public final Ldalvik/system/ZygoteHooks;
.super Ljava/lang/Object;
.source "ZygoteHooks.java"


# instance fields
.field private token:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static native nativePostForkChild(JIZLjava/lang/String;)V
.end method

.method private static native nativePreFork()J
.end method

.method public static native startZygoteNoThreadCreation()V
.end method

.method public static native stopZygoteNoThreadCreation()V
.end method

.method private static waitUntilAllThreadsStopped()V
    .locals 3

    #@0
    .prologue
    .line 84
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/proc/self/task"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    .line 87
    .local v0, "tasks":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    array-length v1, v1

    #@d
    const/4 v2, 0x1

    #@e
    if-le v1, v2, :cond_0

    #@10
    .line 88
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@13
    goto :goto_0

    #@14
    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public postForkChild(IZLjava/lang/String;)V
    .locals 2
    .param p1, "debugFlags"    # I
    .param p2, "isSystemServer"    # Z
    .param p3, "instructionSet"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    iget-wide v0, p0, Ldalvik/system/ZygoteHooks;->token:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Ldalvik/system/ZygoteHooks;->nativePostForkChild(JIZLjava/lang/String;)V

    #@5
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->setRandomSeedInternal(J)V

    #@c
    .line 60
    return-void
.end method

.method public postForkCommon()V
    .locals 0

    #@0
    .prologue
    .line 72
    invoke-static {}, Ljava/lang/Daemons;->start()V

    #@3
    .line 71
    return-void
.end method

.method public preFork()V
    .locals 2

    #@0
    .prologue
    .line 50
    invoke-static {}, Ljava/lang/Daemons;->stop()V

    #@3
    .line 51
    invoke-static {}, Ldalvik/system/ZygoteHooks;->waitUntilAllThreadsStopped()V

    #@6
    .line 52
    invoke-static {}, Ldalvik/system/ZygoteHooks;->nativePreFork()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Ldalvik/system/ZygoteHooks;->token:J

    #@c
    .line 49
    return-void
.end method
