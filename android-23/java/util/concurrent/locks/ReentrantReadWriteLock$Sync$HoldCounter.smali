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
    .line 250
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@6
    .line 252
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    #@10
    .line 249
    return-void
.end method
