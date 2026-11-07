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
.field greylist-max-o count:I

.field final greylist-max-o tid:J


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    return-void
.end method
