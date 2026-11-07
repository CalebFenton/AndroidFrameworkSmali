.class final Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x1f926431bed278ebL


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 700
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method final greylist-max-o readerShouldBlock()Z
    .registers 2

    .line 706
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->hasQueuedPredecessors()Z

    move-result v0

    return v0
.end method

.method final greylist-max-o writerShouldBlock()Z
    .registers 2

    .line 703
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->hasQueuedPredecessors()Z

    move-result v0

    return v0
.end method
