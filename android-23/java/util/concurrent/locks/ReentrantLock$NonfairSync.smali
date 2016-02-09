.class final Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;
.super Ljava/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonfairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x658832e7537bbf0bL


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method final lock()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 178
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->compareAndSetState(II)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    #@f
    .line 177
    :goto_0
    return-void

    #@10
    .line 181
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->acquire(I)V

    #@13
    goto :goto_0
.end method

.method protected final tryAcquire(I)Z
    .locals 1
    .param p1, "acquires"    # I

    #@0
    .prologue
    .line 185
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->nonfairTryAcquire(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
