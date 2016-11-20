.class final Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoldCounter"
.end annotation


# instance fields
.field count:I

.field final tid:J


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 252
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getThreadId(Ljava/lang/Thread;)J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    #@d
    .line 249
    return-void
.end method
