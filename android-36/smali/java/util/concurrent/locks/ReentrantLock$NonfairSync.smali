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
.field private static final whitelist serialVersionUID:J = 0x658832e7537bbf0bL


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 220
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method final blacklist initialTryLock()Z
    .registers 5

    .line 224
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 225
    .local v0, "current":Ljava/lang/Thread;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 226
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 227
    return v2

    .line 228
    :cond_10
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v3, v0, :cond_29

    .line 229
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->getState()I

    move-result v1

    add-int/2addr v1, v2

    .line 230
    .local v1, "c":I
    if-ltz v1, :cond_21

    .line 232
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->setState(I)V

    .line 233
    return v2

    .line 231
    :cond_21
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Maximum lock count exceeded"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    .end local v1    # "c":I
    :cond_29
    return v1
.end method

.method protected final whitelist test-api tryAcquire(I)Z
    .registers 4
    .param p1, "acquires"    # I

    .line 242
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 244
    const/4 v0, 0x1

    return v0

    .line 246
    :cond_16
    return v1
.end method
